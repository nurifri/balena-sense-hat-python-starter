FROM resin/raspberrypi3-debian:latest

ENV INITSYSTEM on

RUN apt-get update && apt-get install -yq \
  python3 \
  python3-sense-hat \
  python3-pip \
  wget && \
  apt-get clean && rm -rf /var/lib/apt/lists/* && \
  python3 -m pip install pillow imageio

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ["python3", "sample2.py"]
