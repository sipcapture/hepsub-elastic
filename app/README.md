<img src="https://user-images.githubusercontent.com/1423657/55069501-8348c400-5084-11e9-9931-fefe0f9874a7.png" width=200/>

# hepsub-elastic
HEP Pub-Sub Client for elastic API

## What?
This HEPSUB agent hooks HOMER 7 with the Elastic API, fetching data results in realtime during session investigation.

### Configuration Parameters
```
elastic: {
	"url": "http://localhost:9200",
	"index": "my-index",
	"field": "callid"
  }
```

## Query Format
The client will receive an array with correlation identifiers, ie: `["test","me"]` and generate a Terms query against the configured `index` and `field` defined in the configuration.
```
"query" : {
        "terms" : {
            "callid" : ["test","me"]
            "boost" : 1.0
        }
    }
```

