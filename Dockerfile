FROM justb4/jmeter:latest

ENV JMETER_HOME /opt/apache-jmeter-${JMETER_VERSION}
ENV JMETER_BIN  ${JMETER_HOME}/bin
ENV MIRROR_HOST http://mirrors.ocf.berkeley.edu/apache/jmeter
ENV JMETER_DOWNLOAD_URL ${MIRROR_HOST}/binaries/apache-jmeter-${JMETER_VERSION}.tgz
ENV JMETER_PLUGINS_DOWNLOAD_URL http://repo1.maven.org/maven2/kg/apc
ENV JMETER_PLUGINS_FOLDER ${JMETER_HOME}/lib/ext/


COPY entrypoint.sh /
COPY MOCK_DATA.csv $JMETER_BIN

RUN chmod +x /entrypoint.sh

CMD ["-n", "-t Project2.jmx", "-l Project2.jtl", "-j jmeter.log","-e","-o reports/"]

ENTRYPOINT [ "/entrypoint.sh" ]


