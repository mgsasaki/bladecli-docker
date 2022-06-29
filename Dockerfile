FROM openjdk:8-jdk

RUN curl https://repo1.maven.org/maven2/biz/aQute/bnd/biz.aQute.jpm.run/3.5.0/biz.aQute.jpm.run-3.5.0.jar > t.jar && \
    java -jar t.jar init

RUN jpm install -f https://releases.liferay.com/tools/blade-cli/latest/blade.jar && \
    blade update

VOLUME /opt
WORKDIR /opt

ENTRYPOINT ["blade"]
