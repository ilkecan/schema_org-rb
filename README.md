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

## Contributing

See the repository's [`CONTRIBUTING.md`](https://github.com/ilkecan/schema_org-rb/blob/main/CONTRIBUTING.md) for Schema.org update and release procedures.
