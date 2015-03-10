#!/bin/sh
if [ -z "${JAR_URL}" ]; then
  echo "JAR_URL env var required" > /dev/stderr
  exit 1
fi
curl -s -o /app.jar "${JAR_URL}"
exec java $JAVA_OPTIONS -jar /app.jar