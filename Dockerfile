#FROM tomcat:latest
#RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
#COPY ./*.war /usr/local/tomcat/webapps


# Use the official Ubuntu image as the base
FROM ubuntu:latest

# Install necessary packages: Java, wget, and curl
RUN apt-get update -y \
    && apt-get install -y openjdk-21-jdk wget curl \
    && apt-get clean \
    && update-ca-certificates -f \
    && rm -rf /var/lib/apt/lists/*

# Set working directory to /opt
WORKDIR /opt

# Download and extract Apache Tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.5/bin/apache-tomcat-11.0.5.tar.gz \
    && tar -xvzf apache-tomcat-11.0.5.tar.gz \
    && rm apache-tomcat-11.0.5.tar.gz

# Rename the extracted folder for consistency
RUN mv apache-tomcat-11.0.5 apache-tomcat

# Set working directory to Tomcat's home
WORKDIR /opt/apache-tomcat

# Expose port 8080
EXPOSE 8080

# Set the startup command
CMD ["/opt/apache-tomcat/bin/catalina.sh", "run"]

