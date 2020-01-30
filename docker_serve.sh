#!/bin/sh
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  -p 4000:4000 \
  -it jekyll/jekyll:3.6 \
  jekyll serve --trace --watch --incremental
