docker network create -d overlay frontend
docker network create -d overlay backend

docker service create -d --name vote --network frontend -p 81:80 --replicas 2 bretfisher/examplevotingapp_vote
docker service create -d --name redis --network frontend --replicas 1 redis:3.2
docker service create -d --name worker --network frontend --network backend --replicas 1 bretfisher/examplevotingapp_worker
docker service create -d --name db --mount type=volume,source=db-data,target=/var/lib/postgresql/data --network backend -e POSTGRES_HOST_AUTH_METHOD=trust postgres:9.4
docker service create -d --name result -p 5001:80 --network backend bretfisher/examplevotingapp_result
