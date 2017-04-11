# Apache 2 and Tomcat docker image

It's based in alpine unix distro and the following software versions:<br>

ENV TOMCAT_VERSION 8.0.43<br>
ENV HTTPD_VERSION 2.4.25

The file run.sh executes the process Apache2 and Tomcat and redirect standard output and errors to console.

A folder /logs contains symlinks to the log folders of Apache2 and Tomcat for easy lookup.