# schema_org-rb

`schema_org-rb` provides generated Ruby descriptors for the Schema.org vocabulary. The gem version is `0.1.0`; the checked-in vocabulary version is exposed as `SchemaOrg::SCHEMA_VERSION`.

## Installation

```ruby
gem "schema_org-rb", "0.1.0"
```

```sh
gem install schema_org-rb -v 0.1.0
```

## Supported Ruby versions

The gem supports Ruby 3.2, 3.3, 3.4, and 4.0.

## Usage

Construct generated types with snake_case properties. Values are checked on construction and mutation.

Schema.org type names generally map directly to Ruby constants. The exception in the current vocabulary is `3DModel`, which is exposed as `SchemaOrg::ThreeDModel` because Ruby constants cannot begin with a digit.

```ruby
require "schema_org"
require "date"

person = SchemaOrg::Person.new(
  name: "Jane Doe",
  job_title: "Professor",
  birth_date: Date.new(1980, 1, 2),
  address: SchemaOrg::PostalAddress.new(address_locality: "Seattle"),
  colleague: ["https://example.test/alice", "https://example.test/bob"]
)
person.job_title = "Researcher"
person.birth_date = nil

person.schema_type?(SchemaOrg::Thing) # true
person.as_jsonld
# => {
#      "@context" => "https://schema.org",
#      "@type" => "Person",
#      "address" => {
#        "@type" => "PostalAddress",
#        "addressLocality" => "Seattle"
#      },
#      "colleague" => [
#        "https://example.test/alice",
#        "https://example.test/bob"
#      ],
#      "jobTitle" => "Researcher",
#      "name" => "Jane Doe"
#    }
person.to_json
```

Nested enumeration values are constants:

```ruby
offer = SchemaOrg::Offer.new(availability: SchemaOrg::ItemAvailability::IN_STOCK)
offer.to_json # includes https://schema.org/InStock
```

`as_jsonld` returns string-keyed JSON-LD. Only the root object includes `@context`; nested schema values are serialized recursively. Arrays, native `Date`, `DateTime`, and `Time` values are supported.

## RBS support

The gem ships generated RBS signatures covering the complete checked-in Schema.org vocabulary. Type checkers such as RBS and Steep can use these signatures for static checking and editor features.

If the signature is too large for your type-checking setup, configure RBS Collection to ignore it:

```yaml
# rbs_collection.yaml
gems:
  - name: schema_org-rb
    ignore: true
```

## Licensing and attribution

Project-authored material and generator-emitted Ruby/RBS structure are offered under MIT. The complete `codegen/data/schema.ttl` snapshot and Schema.org descriptions copied from it into generated type/property comments and `comment_lines` metadata remain CC BY-SA 3.0. See [`LICENSE.txt`](LICENSE.txt) and [`LICENSE-SCHEMA-ORG.txt`](LICENSE-SCHEMA-ORG.txt), and the [Schema.org terms](https://schema.org/docs/terms.html).

The CC BY-SA Turtle snapshot is maintainer input tracked in this repository and is not included in the gem. The source release is the one exposed by `SchemaOrg::SCHEMA_VERSION` at `https://schema.org/version/<version without leading v>/schemaorg-all-https.ttl`.

## Updating Schema.org

Schema.org updates are manual dispatches of the `Update Schema.org` workflow from `main` with `version` in exact `v<major>.<minor>` form. The workflow downloads the release, regenerates the artifacts, and opens a pull request containing only the schema snapshot and generated outputs; the pull request then runs the `PR gate`.

Run the same update locally with:

```sh
bundle exec rake "codegen:update_schema[v31.0]"
bundle exec rake codegen
```

## Maintainer automation and releases

The repository has three workflow boundaries:

- `Pull request` runs the required `PR gate` on pull requests. Its local checks are `bundle exec rake test`, `bundle exec rake standard`, `bundle exec rake types:check`, `bundle exec rake codegen:check`, and `bundle exec rake package:check`, in that order.
- `Update Schema.org` is a manual dispatch from `main` with `version=v<major>.<minor>`. It uses the `SCHEMA_UPDATE_APP_CLIENT_ID` repository variable and `SCHEMA_UPDATE_APP_PRIVATE_KEY` repository secret from an App installed only on this repository with Contents and Pull requests write permissions.
- `Release` is a manual dispatch from `main` with the gem `version=<major>.<minor>`. It runs the supported Ruby matrix, verifies the current `main` commit and changelog, then publishes the verified gem and matching GitHub release.

The gem version (`SchemaOrg::VERSION`) and Schema.org vocabulary version (`SchemaOrg::SCHEMA_VERSION`) are separate. The gem package contains generated Ruby and RBS files, `LICENSE.txt`, `LICENSE-SCHEMA-ORG.txt`, `README.md`, and `CHANGELOG.md`; it does not contain the maintainer input `codegen/data/schema.ttl`.

Before releasing, configure the `release` GitHub environment and a RubyGems trusted publisher for `schema_org-rb` in `ilkecan/schema_org-rb`, workflow `release.yml`, and environment `release`. Version and changelog changes must land through the `PR gate` before the manual `Release` dispatch. No long-lived RubyGems API key is used.

Run the full local gate with:

```sh
bundle exec rake test
bundle exec rake standard
bundle exec rake types:check
bundle exec rake codegen:check
bundle exec rake package:check
```
