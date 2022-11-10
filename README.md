# bello-kafka-connect


## Deploy Kafka Connect 
- kubectl apply -f kafka-connect/strimzi/dev/source/source-kafka-connect.yaml
- kubectl apply -f kafka-connect/strimzi/dev/sink/sink-kafka-connect.yaml

## Deploy Kafka Connector
- kubectl apply -f kafka-connector/strimzi/dev/source/source_sql_server_connector.yaml
- kubectl apply -f kafka-connector/strimzi/dev/source/source_mysql_connector.yaml
- kubectl apply -f kafka-connector/strimzi/dev/sink/sink_gcs_connector.yaml