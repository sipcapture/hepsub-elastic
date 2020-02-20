var config = {
  backend: 'http://localhost:9080/api/v3/agent/subscribe', // use v2 for HEPIC!
  service: {
	"uuid": Math.random().toString(36).substring(7),
	"host":"PUBLIC_IP_HERE",
	"port": 18088,
	"protocol": "http",
	"path": "/get",
	"type": "cdr",
	"ttl": 300,
	"node": "elastic",
	"gid": 10
  },
  debug: true,
  elastic: {
	"url": "http://localhost:9200",
	"index": "my-index",
	"field": "callid",
	"hep_field": "callid",
	"size": 100,
	"reduce": true,
	"template": [ "timestamp", "source", "long_message" ]
  }
};

module.exports = config;
