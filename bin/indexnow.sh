#!/bin/sh

curl -v -X POST "https://api.indexnow.org/IndexNow" \
-H "Content-Type: application/json; charset=utf-8" \
-d '{
  "host": "obezpalko.github.io",
  "key": "bb0d852ddb5a481dada0d590f2603651",
  "keyLocation": "https://obezpalko.github.io/bb0d852ddb5a481dada0d590f2603651.txt",
  "urlList": [
      "https://obezpalko.github.io/",
      "https://obezpalko.github.io/eoi/",
      "https://obezpalko.github.io/sitemap.xml"
      ]
}'
