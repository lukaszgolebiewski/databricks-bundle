#databricks auth login --host https://adb-152493134425274.14.azuredatabricks.net --profile DEFAULT
#databricks auth login --host https://adb-152493134425274.14.azuredatabricks.net --profile DEV

$databricksProfile = "DEFAULT"

databricks auth profiles list
databricks auth env --profile $databricksProfile

#databricks bundle init --profile $databricksProfile
databricks bundle validate --profile $databricksProfile
databricks bundle deploy --profile $databricksProfile
