# Maintaining

## Schema.org updates

Schema.org updates are generated through the `Update Schema.org` workflow. Dispatch it manually from `main` with a `version` input in exact `v<major>.<minor>` form. The workflow downloads the release, regenerates the artifacts, and opens a pull request containing only the schema snapshot and generated outputs. The pull request runs the `PR gate`.

The workflow uses the repository's `GITHUB_TOKEN`. Enable **Allow GitHub Actions to create and approve pull requests** under **Settings -> Actions -> General -> Workflow permissions**. No GitHub App or long-lived token is required.

Pull request workflows triggered by a pull request created with `GITHUB_TOKEN` start in an approval-required state. A maintainer with write access must approve the workflow run before `PR gate` starts. The pull request remains blocked until the gate passes.

Run the same update locally with:

```sh
bundle exec rake "codegen:update_schema[v31.0]"
bundle exec rake codegen
```

The generated pull request may change only `codegen/data/schema.ttl`, `codegen/manifest.json`, `lib/schema_org/generated_vocabulary.rb`, `lib/schema_org/schema_version.rb`, files under `lib/schema_org/mixins/` and `lib/schema_org/types/`, and `sig/schema_org.rbs`.

## Releases

The gem version is defined by `SchemaOrg::VERSION` in `lib/schema_org/version.rb`. Update that value and the matching `CHANGELOG.md` entry in a pull request. The gem version and Schema.org vocabulary version are separate.

Before releasing, configure:

- GitHub environment: `release`
- Required reviewers and a `main` deployment branch restriction on that environment
- RubyGems trusted publisher for `schema_org-rb`
- Repository: `ilkecan/schema_org-rb`
- Workflow: `release.yml`

Environment protection rules are configured in repository settings. The workflow attaches the release job to the `release` environment, but required reviewers cannot be declared in workflow YAML.

After the version and changelog changes pass the `PR gate` and reach `main`, dispatch the `Release` workflow from `main`. It derives the gem version from `SchemaOrg::VERSION`, tests Ruby 3.2, 3.3, 3.4, and 4.0, verifies the current `main` commit, checks the package, publishes the verified gem with trusted publishing, and creates the matching GitHub release.

The package contains generated Ruby and RBS files, `LICENSE.txt`, `LICENSE-SCHEMA-ORG.txt`, `README.md`, and `CHANGELOG.md`. It does not contain the maintainer input `codegen/data/schema.ttl`. No long-lived RubyGems API key is used.
