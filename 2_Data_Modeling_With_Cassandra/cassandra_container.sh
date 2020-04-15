# Create a docker network interface
docker network create cassandra-net
# Create a containter to be accesed by the jupyter notebook container
docker run --name demo-cassandra --network cassandra-net -d -p 9042:9042 cassandra:latest
