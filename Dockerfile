#FROM tomcat:8
# Take the war and copy to webapps of tomcat
#COPY target/newapp.war /usr/local/tomcat/webapps/
#COPY target/myweb.war /usr/local/tomcat/webapps/

# Use official Tomcat image
FROM tomcat:10.1.14-jdk17  # Change version if needed

# Copy your WAR file into Tomcat's webapps folder
# Make sure your WAR file is named 'app.war'
COPY target/myweb.war /usr/local/tomcat/webapps/

# Expose Tomcat port
EXPOSE 8080

# Default command to run Tomcat
CMD ["catalina.sh", "run"]
