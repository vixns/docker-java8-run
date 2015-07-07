#!/bin/sh
if [ -z "${JAR_URL}" ]; then
  echo "JAR_URL env var required" > /dev/stderr
  exit 1
fi
[ -n "${JAR_TYPE}" ] || JAR_TYPE="jar"
curl -s -k -o /app.${JAR_TYPE} "${JAR_URL}"
exec java $JAVA_OPTIONS -jar /app.${JAR_TYPE} $JAR_OPTIONS