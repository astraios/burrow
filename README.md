# linkedin/burrow docker image

## Usage

### Basic
```
docker run -ti --rm -v $(pwd)/config:/config -p 8000:8000 notuscloud/burrow
```

### Normal case

Burrow needs a zookeeper backend

```
version: "2"
services:
  burrow:
    image: notuscloud/burrow:latest
    ports:
      - 8000:8000
    volumes:
      - ./config:/config
    depends_on:
      - zookeeper
  zookeeper:
    image: zookeeper:3.4.9
    volumes:
      - ./zookeeper/data:/data
      - ./zookeeper/datalog:/datalog
```

## Build the container image

```
docker build -t notuscloud/burrow .
```
