
# get Cluster TrustStore to make the mTLS connection
kubectl get secret my-cluster-cluster-ca-cert -n kafka-mils -o jsonpath='{.data.ca\.p12}' | base64 -d > secret/my-cluster-ca.p12

# get TrustStore password
kubectl get secret my-cluster-cluster-ca-cert -n kafka-mils -o jsonpath='{.data.ca\.password}' | base64 -d > secret/truststore_pass

# Kafka User KeyStore to authenticate
kubectl get secret my-internal-user -n kafka-mils -o jsonpath='{.data.user\.p12}' | base64 -d > secret/my-internal-user.p12

# KeyStore password
kubectl get secret my-internal-user -n kafka-mils -o jsonpath='{.data.user\.password}' | base64 -d > secret/keystore_pass
