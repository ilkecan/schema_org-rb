# schema_org-rb

`schema_org-rb` provides generated Ruby descriptors for schema.org v30.0.
The gem version is `0.1.0`; the checked-in vocabulary version is exposed as
`SchemaOrg::SCHEMA_VERSION`.

## Installation

```ruby
gem "schema_org-rb", "0.1.0"
```

```sh
gem install schema_org-rb -v 0.1.0
```

## Usage

Construct generated types with snake_case properties. Values are checked on
construction and mutation.

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
person.to_json
```

Nested enumeration values are constants:

```ruby
offer = SchemaOrg::Offer.new(availability: SchemaOrg::ItemAvailability::IN_STOCK)
offer.to_json # includes https://schema.org/InStock
```

`as_jsonld` returns string-keyed JSON-LD. Only the root object includes
`@context`; nested schema values are serialized recursively. Arrays, native
`Date`, `DateTime`, and `Time` values are supported.

## Maintainer commands

The pinned Turtle input is `codegen/data/schema.ttl` and its version is in
`codegen/data/SCHEMA_VERSION.txt`.

```sh
bundle exec rake codegen:update_schema[v30.0]
bundle exec rake codegen
bundle exec rake codegen:check
bundle exec rake test
bundle exec rake standard
bundle exec rake build
```

`codegen:update_schema` requires an explicit upstream release ref. `codegen`
regenerates checked-in runtime files. `codegen:check` verifies deterministic
file and manifest drift without changing the working tree.

The gem build contains only `lib/**/*.rb`, this README, `LICENSE.txt`, and
`CHANGELOG.md`. Release manually with `bundle exec rake release` after setting
up the repository remote and RubyGems credentials.
