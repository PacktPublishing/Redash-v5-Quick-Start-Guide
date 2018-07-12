#!/bin/bash

#installing the components for the UI for the first time
npm install

#create db 
docker-compose run --rm server create_db

#create tables for tests
docker-compose run --rm postgres psql -h postgres -U postgres -c "create database tests"

#start backend services
docker-compose up &

#rebuild UI
npm run build

#start UI server (access on localhost:8080)
npm run start
