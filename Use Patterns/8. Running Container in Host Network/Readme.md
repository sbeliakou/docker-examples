# Running Container in Host Network

Docs:
- https://docs.docker.com/network/host/

Run:
```bash
docker run -d --net=host nginx
23948ae23e502e6ea36226332547f52512b75fbdec12a9806567b51b9b765135

netstat -natpl | grep nginx
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      19313/nginx: master
```

Inspecting Network:
```bash
docker network inspect host
[
    {
        "Name": "host",
        "Id": "5613d2507db00a757c093c5570626d02bbd9bf8297dd28818b1f18edada8517e",
        "Created": "2018-07-18T13:49:41.155157481+01:00",
        "Scope": "local",
        "Driver": "host",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": null,
            "Config": []
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "23948ae23e502e6ea36226332547f52512b75fbdec12a9806567b51b9b765135": {
                "Name": "condescending_blackwell",
                "EndpointID": "7545c2ac1862076733190916debfa0b093d5be391ae68a8111cb1ce3b4276d85",
                "MacAddress": "",
                "IPv4Address": "",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {}
    }
]
```

