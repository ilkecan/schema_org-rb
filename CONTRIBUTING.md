# Contributing

## Schema.org updates

Schema.org vocabulary updates are handled by an automated workflow that maintainers can trigger; see [MAINTAINING.md](MAINTAINING.md#schema-org-updates).

## Pull request gate

The `Pull request` workflow runs the required `PR gate` on pull requests. Run its checks locally in this order:

```sh
bundle exec rake test
bundle exec rake standard
bundle exec rake types:check
bundle exec rake codegen:check
bundle exec rake package:check
```
