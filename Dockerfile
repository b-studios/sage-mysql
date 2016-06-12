FROM mysql:5.7.11

COPY sage.cnf /etc/mysql/conf.d/sage.cnf
ENV MYSQL_USER sageadmin
