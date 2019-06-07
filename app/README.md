## Parameters
```
elastic: {
	"url": "http://localhost:9200",
	"index": "my-index",
	"field": "callid"
  }
```

## Query
The client will receive an array with correlation identifiers, ie: `["test","me"]` and generate a Terms query against the configured `index` and `field` defined in the configuration.
```
"query" : {
        "terms" : {
            "callid" : ["test","me"]
            "boost" : 1.0
        }
    }
```

