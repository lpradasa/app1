FROM jboss/wildfly:20.0.0.Final
ADD HolaMundo.war /opt/jboss/wildfly/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#123 --silent
EXPOSE 8080 9990
VOLUME /opt/jboss/wildfly/standalone/deployments/
USER jboss
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
