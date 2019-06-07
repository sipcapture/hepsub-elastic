<img src="https://user-images.githubusercontent.com/1423657/55069501-8348c400-5084-11e9-9931-fefe0f9874a7.png" width=200/>

# hepsub-elastic
HEP Pub-Sub Client for elastic API

## What?
This HEPSUB agent hooks HOMER 7 with the Elastic API, fetching data results in realtime during session investigation.

## Usage
Once the parameters in `config.js` are prepared, launch the Node application:
#### Manual
```
nodejs elastic.js
```
#### PM2
```
pm2 start elastic.js
```

#### Docker
A docker container with the HEPSUB Elastic API is provided for convenience and testing.
```
docker-compose up -d
docker run --name elastic-hepsub -d sipcapture/hepsub-elastic
```

## Node API
See `/app` folder
