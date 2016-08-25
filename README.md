### pwrtelegram-docker

_Ensure you have setup Docker correctly_

###Dockerizing

```bash

$ git clone https://github.com/kamikazechaser/pwrtelegram-docker.git

$ cd pwrtelegram-docker

$ sudo docker build -t pwrapi

$ sudo docker run -name pwrapiinstance -i -t pwrapi
```

###Note

Since there are no explicit instructions of how to exactly run the api post-install, modify the contents in the Dockerfile as commented.
