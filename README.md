# cowrie-honeypot-docker

This is simply a Docker file for building an image in docker desktop, etc... I'll improve this later

1. docker build -t cowrie-demo . #Dont miss the trailing dot
2. docker run -it -p 2222:2222/tcp cowrie-demo #Starts a container and drops you in a shell
3. From another tab in your terminal, #ssh -p 2222 root@localhost

   
