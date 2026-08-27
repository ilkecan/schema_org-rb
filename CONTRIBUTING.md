# Contributing

## Schema.org updates

Schema.org updates are generated through the `Update Schema.org` workflow. Dispatch it manually from `main` with a `version` input in exact `v<major>.<minor>` form. The workflow downloads the release, regenerates the artifacts, and opens a pull request containing only the schema snapshot and generated outputs. The pull request runs the `PR gate`.

The workflow requires the following repository configuration:

- Variable: `SCHEMA_UPDATE_APP_CLIENT_ID`
- Secret: `SCHEMA_UPDATE_APP_PRIVATE_KEY`
- A GitHub App installed only on this repository with Contents and Pull requests write permissions

Run the same update locally with:

```sh
bundle exec rake "codegen:update_schema[v31.0]"
bundle exec rake codegen
```

The generated pull request may change only `codegen/data/schema.ttl`, `codegen/manifest.json`, `lib/schema_org/generated_vocabulary.rb`, `lib/schema_org/schema_version.rb`, files under `lib/schema_org/mixins/` and `lib/schema_org/types/`, and `sig/schema_org.rbs`.

## Pull request gate

The `Pull request` workflow runs the required `PR gate` on pull requests. Run its checks locally in this order:

```sh
bundle exec rake test
bundle exec rake standard
bundle exec rake types:check
bundle exec rake codegen:check
bundle exec rake package:check
```

## Releases

The gem version is defined by `SchemaOrg::VERSION` in `lib/schema_org/version.rb`. Update that value and the matching `CHANGELOG.md` entry in a pull request. The gem version and Schema.org vocabulary version are separate.

Before releasing, configure:

- GitHub environment: `release`
- RubyGems trusted publisher for `schema_org-rb`
- Repository: `ilkecan/schema_org-rb`
- Workflow: `release.yml`
- Environment: `release`

After the version and changelog changes pass the `PR gate` and reach `main`, dispatch the `Release` workflow from `main` with the gem version without a leading `v`, for example `version=0.1.0`. The workflow tests Ruby 3.2, 3.3, 3.4, and 4.0, verifies the current `main` commit, checks the package, publishes the verified gem with trusted publishing, and creates the matching GitHub release.

The package contains generated Ruby and RBS files, `LICENSE.txt`, `LICENSE-SCHEMA-ORG.txt`, `README.md`, and `CHANGELOG.md`. It does not contain the maintainer input `codegen/data/schema.ttl`. No long-lived RubyGems API key is used.
