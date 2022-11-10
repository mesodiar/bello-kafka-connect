FROM quay.io/strimzi/kafka:0.31.1-kafka-3.2.3
USER root:root
COPY ./plugins/ /opt/kafka/plugins/
USER 1001