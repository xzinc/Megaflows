branch=main
git clone -b $branch https://github.com/ToxygenX/Megatron /root/ToxygenX
cp megatron/.env /root/ToxygenX/.env
cd /root/ToxygenX
docker build . --rm --force-rm --compress --pull --file Dockerfile -t megatron
docker run --privileged --env-file .env --rm -i megatron
