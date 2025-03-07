databricks auth login --host https://adb-152493134425274.14.azuredatabricks.net --profile DEFAULT
databricks auth login --host https://adb-152493134425274.14.azuredatabricks.net --profile DEV
databricks auth profiles list
databricks auth env --profile DEFAULT


databricks bundle init --profile DEFAULT
databricks bundle validate --profile DEFAULT
databricks bundle deploy --profile DEFAULT