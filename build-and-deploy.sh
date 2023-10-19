#!/bin/bash

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags  -a -installsuffix cgo -o bin/github-actions-gateway &&
scp -i /Users/tonit/.ssh/id_rsa_digitalocean bin/github-actions-gateway tonit@134.209.255.237:/home/tonit