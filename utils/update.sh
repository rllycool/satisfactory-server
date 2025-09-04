docker pull wolveix/satisfactory-server:latest
docker stop satisfactory-server
docker rm satisfactory-server

docker run \
--detach \
--name=satisfactory-server \
--hostname boots-server \
--restart unless-stopped \
--volume ./boots-server:/config \
--env MAXPLAYERS=4 \
--env PGID=1000 \
--env PUID=1000 \
--env STEAMBETA=false \
--memory-reservation=4G \
--memory 8G \
--publish 7777:7777/tcp \
--publish 7777:7777/udp \
--publish 8888:8888/tcp \
wolveix/satisfactory-server:latest