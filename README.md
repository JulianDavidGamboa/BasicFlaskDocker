# BasicFlaskDocker

This is a simple application with docker integrating docker container.

Remember that to use this app you should have docker installed, if so to run this app run following command.

```
sudo docker run -it -p 7000:4000 -d flaskapp
```

And if you want to stop this process run the command:
```
docker container ls
```
Copy the CONTAINER_ID and...

```
docker stop CONTAINER_ID
```
