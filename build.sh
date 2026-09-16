#!/bin/sh
set -e
cd "$(dirname "$0")"
xsltproc transform.xsl index.xml > index.html.tmp
mv index.html.tmp index.html
echo "Wrote index.html"
