FROM ksmithorn97/kernel-7jre
COPY server.xml /config/
RUN installUtility install --acceptLicense defaultServer

