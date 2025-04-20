#!/bin/bash

CONTAINER=postgres-container
USER=postgres

docker exec -it $CONTAINER psql -U $USER
