#!/bin/sh

SCHEMA_PATH="${PWD}/src/schema"
MIGRATIONS_PATH="${PWD}/src/migrations"

POSTGRES_BASE_URL="postgres://${POSTGRES_USERNAME}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}"
POSTGRES_URL="${POSTGRES_BASE_URL}/${POSTGRES_DATABASE}?sslmode=disable"
POSTGRES_DEV_URL="${POSTGRES_BASE_URL}/atlas?sslmode=disable"