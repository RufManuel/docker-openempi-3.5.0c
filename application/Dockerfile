FROM amazoncorretto:8

MAINTAINER Alessandro Fael Garcia <alessfg@hotmail.com>

LABEL OpenEMPI-Version="3.5.0c" \
      Description="Docker image for the OpenEMPI application"

# Copy OpenEMPI files into their corresponding directories
COPY ./openempi-3.5.0c /opt/openempi-3.5.0c

# Make startup script executable
RUN chmod +x /opt/openempi-3.5.0c/post-install.sh
RUN /opt/openempi-3.5.0c/post-install.sh /opt/openempi-3.5.0c 3.5.0c

# Expose port 8080 outside of Docker
EXPOSE 8080

# Initialisation scripts
# Wait until database is available
# Then proceed to start Tomcat
CMD ["/opt/openempi-3.5.0c/bin/catalina.sh", "run"]
