FROM jboss/wildfly:9.0.2.Final

ENV postgres_module_dir=/opt/jboss/wildfly/modules/org/postgresql/main/

RUN mkdir -p ${postgres_module_dir}
ADD module.xml ${postgres_module_dir}
ADD postgresql-9.4-1201.jdbc41.jar ${postgres_module_dir}

ENV config_dir=/opt/jboss/wildfly/standalone/configuration/
ADD standalone.xml ${config_dir}

RUN chown -R jboss:jboss ${postgres_module_dir}/*

EXPOSE 8787

RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

