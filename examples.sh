dbt ls -t prod # compile a manifest.json using the "prod" target
mv target/manifest.json prod_manifest.json # move the file up a directory and rename it to prod_manifest.json
dbt run # run your entire dbt project or only a subset of models with `dbt run --select <model_name>`
data-diff --dbt --state prod_manifest.json # run data-diff to compare your development results to the production database/schema results in the prod manifest

data-diff --dbt --state prod_manifest.json --cloud

export DATAFOLD_API_KEY="your API key"

data-diff --conf datadiff.toml --run demo_xdb -k "order_id" -c amount -c status --debug

data-diff --conf datadiff.toml --run demo_xdb_raw -k "id" -c user_id -c order_date -c status --debug

data-diff --conf datadiff.toml --run demo_xdb_duckdb -k "id" -c status --debug