FROM resin/raspberrypi3-debian:latest

ENV INITSYSTEM on

RUN apt-get update && apt-get install -yq \
  python3 \
  python3-sense-hat \
  pip3 install skimage \
  wget && \
  apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ["python3", "sample2.py"]
