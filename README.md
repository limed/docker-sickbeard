## Docker sickbeard
Creates a sickbeard container

### Building sickbeard container
Build docker image
```
$ docker build -t yourusername/sickbeard .
```

```
$ docker push yourusername/sickbeard
```

If you have a hub account you can setup an automated build instead of doing this manually

### Starting up the container
```
ansible-playbook ansible/sickbeard.yml
```
