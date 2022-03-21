#!/bin/bash -xe
exec > >(tee /var/log/user-data.log|logger -t user-data ) 2>&1
echo BEGIN
date '+%Y-%m-%d %H:%M:%S'
yum update -y
yum install -y httpd
cat <<'EOF' >> /var/www/html/index.html
<html>
<head>
<title>Success!</title>
<style>
body {
background-image: url('https://protagona-test-image.s3.amazonaws.com/protagona-logo.png');
background-repeat: no-repeat;
background-attachment: fixed;
background-position: center;
</style>
</head>
<body>
<h1>Welcome to the Protagona Landing Page!!!</h1>
</body>
</html>
EOF
systemctl start httpd
systemctl enable httpd