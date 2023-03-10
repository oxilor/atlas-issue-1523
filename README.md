# Atlas [issue 1523](https://github.com/ariga/atlas/issues/1523).

## Preparations

Create the file `.env.development` in the project root (near `package.json`) and define the environment variables. Use `.env.sample.development` as template.

## How to reproduce this bug

1. Make the type of `type` column in `src/schema/01-fields.sql` incorrect (line 9). E.g. rename `type field_type` to `type field_type2`.
1. Run `yarn schema-hash && yarn schema-apply`. An error is occurred, because there is no `field_type2` type, only `field_type`.
1. Fix it. Rename `type field_type2` to `type field_type`.
1. Run it again. The following error is occurred:

```
Error: sql/migrate: read migration directory state: sql/migrate: execute: executing statement "CREATE TYPE field_type AS ENUM (\n  'TEXT',\n  'NUMBER'\n);" from version "01-fields": pq: type "field_type" already exists
```
