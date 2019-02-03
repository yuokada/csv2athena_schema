CREATE EXTERNAL TABLE `elb_logs`(
  `request_timestamp` string,
  `elb_name` string,
  `request_ip` string,
  `request_port` int,
  `backend_ip` string,
  `backend_port` int,
  `request_processing_time` double,
  `backend_processing_time` double,
  `client_response_time` double,
  `elb_response_code` string,
  `backend_response_code` string,
  `received_bytes` bigint,
  `sent_bytes` bigint,
  `request_verb` string,
  `url` string,
  `protocol` string,
  `user_agent` string,
  `ssl_cipher` string,
  `ssl_protocol` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
  'input.regex'='([^ ]*) ([^ ]*) ([^ ]*):([0-9]*) ([^ ]*):([0-9]*) ([.0-9]*) ([.0-9]*) ([.0-9]*) (-|[0-9]*) (-|[0-9]*) ([-0-9]*) ([-0-9]*) \\\"([^ ]*) ([^ ]*) (- |[^ ]*)\\\" (\"[^\"]*\") ([A-Z0-9-]+) ([A-Za-z0-9.-]*)$')
STORED AS INPUTFORMAT
  'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://athena-examples-us-east-2/elb/plaintext'
TBLPROPERTIES (
  'transient_lastDdlTime'='1480278335');
