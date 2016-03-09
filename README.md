# docker-chronograf
Chronograf is a simple to install graphing and visualization application that you deploy behind your firewall to perform ad hoc exploration of your InfluxDB data

### Requirements:
* docker 1.8+

### Usage:

* Default config

```
docker run -d \
  --name chronograf \
  suizman/chronograf:latest
```

### Access Chronograf

* Open http://localhost:10000/ in you web browser and select chronograf.
