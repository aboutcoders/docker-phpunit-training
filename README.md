# docker-phpunit-training

Start with:

```
...
docker run -it --hostname sandbox --rm --name phpunit-training -p 80:80 -v /YOUR_WEB_PROJECT_FOLDER:/var/www/html aboutcoders/docker-phpunit-training
...
```

Don't forget to start apache if necessary for your specific case (once you are inside):
```
...
sudo service apache2 start
...   
```

Enjoy!