var config = {
  backend: "http://HOMER_IP_HERE:HOMER_PORT_HERE/api/v3/agent/subscribe",
  token: "HOMER_TOKEN_HERE",
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
	"size": 100
  }
};

module.exports = config;
