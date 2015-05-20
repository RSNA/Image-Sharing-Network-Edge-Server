#!/bin/csh

echo "\d" > /tmp/d.sql

psql rsnadb < /tmp/d.sql | grep -i -E "table|view"
