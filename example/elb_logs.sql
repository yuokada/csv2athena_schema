
CREATE EXTERNAL TABLE kaggle.5962ad2a-e7fa-4cbb-862d-9cb046f4f918 (
  `request_timestamp` STRING,
  `elb_name` STRING,
  `request_ip` STRING,
  `request_port` STRING,
  `backend_ip` STRING,
  `backend_port` STRING,
  `request_processing_time` STRING,
  `backend_processing_time` STRING,
  `client_response_time` STRING,
  `elb_response_code` STRING,
  `backend_response_code` STRING,
  `received_bytes` STRING,
  `sent_bytes` STRING,
  `request_verb` STRING,
  `url` STRING,
  `protocol` STRING,
  `user_agent` STRING,
  `ssl_cipher` STRING,
  `ssl_protocol` STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  -- default
  'separatorChar' = ',',
  'quoteChar' = '\"',
  'escapeChar' = '\\'
)
STORED AS TEXTFILE
LOCATION 's3://nobdata-demo/kaggle/air_reserve'
TBLPROPERTIES (
    'skip.header.line.count'='1',
    'has_encrypted_data'='false'
);
