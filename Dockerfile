# Ubuntu repositories include ioquake3 packages
FROM ubuntu:latest
RUN apt-get update && apt-get install -y ioquake3 ioquake3-server

RUN adduser --disabled-password q3user_svc

USER q3user_svc

ENTRYPOINT ["/usr/lib/ioquake3/ioq3ded","+exec"]
CMD ["serversetup.cfg"]