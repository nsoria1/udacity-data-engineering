# Unix script to run a local Postgres database
docker pull postgres
mkdir -p $HOME/docker/volumes/postgres
docker run --rm   --name pg-docker -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data  postgres
# Connect to database using: psql -h localhost -U postgres -d postgres