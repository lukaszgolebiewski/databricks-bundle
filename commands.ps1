#databricks auth login --host https://adb-3694890428161765.5.azuredatabricks.net --profile DEFAULT
#databricks auth login --host https://adb-3694890428161765.5.azuredatabricks.net --profile DEV

$databricksProfile = "DEFAULT"

databricks auth profiles list
databricks auth env --profile $databricksProfile

#databricks bundle init --profile $databricksProfile
databricks bundle validate --profile $databricksProfile
databricks bundle deploy --profile $databricksProfile