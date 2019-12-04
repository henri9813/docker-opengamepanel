<?php
###############################################
# Site configuration
###############################################
$db_host = getenv('OGP_SQL_HOST');
$db_user = getenv('OGP_SQL_USER');
$db_pass = getenv('OGP_SQL_PASSWORD');
$db_name = getenv('OGP_SQL_DATABASE');
$table_prefix = getenv('OGP_SQL_PREFIX') ? getenv('OGP_SQL_PREFIX') : 'ogp_';
$db_type = 'mysql';
?>
