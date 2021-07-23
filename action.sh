branch=main
git clone -b $branch https://github.com/CipherX1-ops/Megatron /root/CipherX1-ops
cp megatron/.env /root/CipherX1-ops/.env
cd /root/CipherX1-ops
docker build . --rm --force-rm --compress --pull --file Dockerfile -t megatron
docker run --privileged --env-file .env --rm -i megatron
