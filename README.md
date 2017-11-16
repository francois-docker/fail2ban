# fail2ban

## RUN
The /var/log directory of the host is mounted in the /var/log/host directory of the container, keep that in mind for you jail.local file (an example file can be found on the github repo)
```
docker run -ti --rm --net=host --privileged -e TIMEZONE="Europe/Paris" -v /var/log:/var/log/host -v ~/fail2ban/jail.local:/etc/fail2ban/jail.local francois/fail2ban:latest
```

## BUILD
as usual:
```
git clone https://github.com/francois-docker/fail2ban.git
cd fail2ban
docker build -t francois/fail2ban .
```
