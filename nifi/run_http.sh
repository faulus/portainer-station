#!/bin/bash
docker run --name nifi -p 8080:8080 -d -v nifi-data:/opt/nifi/nifi-1.4.0  apache/nifi:1.4.0
