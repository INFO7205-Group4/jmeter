FROM justb4/jmeter:latest


COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

CMD ["-n", "-t Project2.jmx", "-l Project2.jtl", "-j jmeter.log","-e","-o reports/"]

ENTRYPOINT [ "/entrypoint.sh" ]


