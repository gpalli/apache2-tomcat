# Docker image with Java, Apache and Tomcat as a service. 

It's based in alpine unix distro and the following software versions:<br>

JAVA OPENJDK 7-JRE<br>
TOMCAT_VERSION 7.0.79<br>
HTTPD_VERSION 2.4.25<br>

The file run.sh executes the process Apache2 and Tomcat and redirect standard output and errors to console.

A folder /logs contains symlinks to the log folders of Apache2 and Tomcat for easy lookup.
