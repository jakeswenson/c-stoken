FROM gcc

COPY . /src/
WORKDIR /src
RUN apt-get update && apt-get install -y nettle-dev && ./autogen.sh && ./configure && make
