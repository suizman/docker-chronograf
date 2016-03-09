FROM ubuntu:15.10

ENV PKG=chronograf_0.10.0_amd64.deb

# Get latest chronograf package
ADD  https://s3.amazonaws.com/get.influxdb.org/chronograf/$PKG /tmp

# Install chronograf
RUN dpkg -i /tmp/$PKG

# Clean stuff
RUN rm -rf /tmp/* && \
    rm -rf /var/cache/apt/* && \
    rm -rf /var/tmp/*

ENTRYPOINT ["/opt/chronograf/chronograf"]
