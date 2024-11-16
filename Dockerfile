# Use the official Tomcat image
FROM tomcat:10.1-jdk17

# Remove the default ROOT web app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file to the Tomcat webapps directory and rename it to ROOT.war
COPY target/streamvideo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
