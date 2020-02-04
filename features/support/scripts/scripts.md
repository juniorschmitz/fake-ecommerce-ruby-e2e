Getting Zalenium Dependencies
docker pull elgalu/selenium
docker pull dosel/zalenium

Running Zalenium
docker run --rm -ti --name zalenium -p 4444:4444 -v /var/run/docker.sock:/var/run/docker.sock -v /tmp/videos:/home/seluser/videos --privileged dosel/zalenium start

bundle exec parallel_cucumber -n 2 -o '-p parallel'