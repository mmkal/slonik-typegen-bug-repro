# `@slonik/typegen` Bug Reproduction

1. Install CockroachDB (see See https://www.cockroachlabs.com/docs/v21.2/install-cockroachdb-mac.html)

```
brew install cockroachdb/tap/cockroach
```

2. Run a local single-node CRDB instance –

```
cockroach start-single-node --insecure --listen-addr=localhost --accept-sql-without-tls
```

3. Clone this repo, install all dependencies and run the type-generator –

```
git clone git@github.com:paambaati/slonik-typegen-bug-repro.git
npm i
npm run typegen
```

4. See error –

```
Using default pool config - type parsers will not be respected.
Searching for files matching **/*.{ts,sql} in sql/.
Found 19 files and 10 queries.
/Users/ganesh.prasannaholash.com/Projects/slonik-test/sql/slonik-test.ts:10 Describing query failed: error: type with ID 4294867231 does not exist.
Succesfully processed 9 out of 10 queries in files /Users/ganesh.prasannaholash.com/Projects/slonik-test/sql/1-users.sql,/Users/ganesh.prasannaholash.com/Projects/slonik-test/sql/2-organisations.sql,/Users/ganesh.prasannaholash.com/Projects/slonik-test/sql/3-organisation-users.sql,/Users/ganesh.prasannaholash.com/Projects/slonik-test/sql/4-user-groups.sql,/Users/ganesh.prasannaholash.com/Projects/slonik-test/sql/5-user-group-members.sql,/Users/ganesh.prasannaholash.com/Projects/slonik-test/sql/6-collections.sql,/Users/ganesh.prasannaholash.com/Projects/slonik-test/sql/7-shortcuts.sql,/Users/ganesh.prasannaholash.com/Projects/slonik-test/sql/8-collection-managers.sql,/Users/ganesh.prasannaholash.com/Projects/slonik-test/sql/9-link-permissions.sql .
prettier failed to run; Your output might be ugly! Error below:
Expression expected. (76:5)
  74 |
  75 | export const _queryCache = new Map < string, string;
> 76 |     > ();
     |     ^
  77 |
  78 | export const defaultReadFileSync = (filepath: string) => {
  79 |     const cached = _queryCache.get(filepath);
prettier failed to run; Your output might be ugly! Error below:
Expression expected. (76:5)
  74 |
  75 | export const _queryCache = new Map < string, string;
> 76 |     > ();
     |     ^
  77 |
  78 | export const defaultReadFileSync = (filepath: string) => {
  79 |     const cached = _queryCache.get(filepath);
prettier failed to run; Your output might be ugly! Error below:
Expression expected. (76:5)
  74 |
  75 | export const _queryCache = new Map < string, string;
> 76 |     > ();
     |     ^
  77 |
  78 | export const defaultReadFileSync = (filepath: string) => {
  79 |     const cached = _queryCache.get(filepath);
prettier failed to run; Your output might be ugly! Error below:
Expression expected. (76:5)
  74 |
  75 | export const _queryCache = new Map < string, string;
> 76 |     > ();
     |     ^
  77 |
  78 | export const defaultReadFileSync = (filepath: string) => {
  79 |     const cached = _queryCache.get(filepath);
prettier failed to run; Your output might be ugly! Error below:
Expression expected. (76:5)
  74 |
  75 | export const _queryCache = new Map < string, string;
> 76 |     > ();
     |     ^
  77 |
  78 | export const defaultReadFileSync = (filepath: string) => {
  79 |     const cached = _queryCache.get(filepath);
prettier failed to run; Your output might be ugly! Error below:
Expression expected. (76:5)
  74 |
  75 | export const _queryCache = new Map < string, string;
> 76 |     > ();
     |     ^
  77 |
  78 | export const defaultReadFileSync = (filepath: string) => {
  79 |     const cached = _queryCache.get(filepath);
prettier failed to run; Your output might be ugly! Error below:
Expression expected. (76:5)
  74 |
  75 | export const _queryCache = new Map < string, string;
> 76 |     > ();
     |     ^
  77 |
  78 | export const defaultReadFileSync = (filepath: string) => {
  79 |     const cached = _queryCache.get(filepath);
prettier failed to run; Your output might be ugly! Error below:
Expression expected. (76:5)
  74 |
  75 | export const _queryCache = new Map < string, string;
> 76 |     > ();
     |     ^
  77 |
  78 | export const defaultReadFileSync = (filepath: string) => {
  79 |     const cached = _queryCache.get(filepath);
prettier failed to run; Your output might be ugly! Error below:
Expression expected. (76:5)
  74 |
  75 | export const _queryCache = new Map < string, string;
> 76 |     > ();
     |     ^
  77 |
  78 | export const defaultReadFileSync = (filepath: string) => {
  79 |     const cached = _queryCache.get(filepath);

```
