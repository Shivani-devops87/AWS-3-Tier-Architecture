#!/bin/bash
set -e
if command -v yum >/dev/null 2>&1; then
  yum update -y
  yum install -y nginx
  systemctl enable nginx
  systemctl start nginx
elif command -v apt-get >/dev/null 2>&1; then
  apt-get update -y
  apt-get install -y nginx
  systemctl enable nginx
  systemctl start nginx
fi

INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id || echo "unknown")
cat <<EOF >/usr/share/nginx/html/index.html
<html>
  <head><title>Three-Tier Web</title></head>
  <body>
    <h1>Three-Tier Architecture - Web Tier</h1>
    <p>Instance ID: ${INSTANCE_ID}</p>
    <p>Serve static content or proxy to app tier here.</p>
  </body>
</html>
EOF
