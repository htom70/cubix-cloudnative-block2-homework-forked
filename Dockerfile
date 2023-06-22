FROM quay.io/drsylent/cubix/block2/homework-base:java17
ARG target_folder
LABEL cubix.homework.owner="Héring Tamás"
ENV CUBIX_HOMEWORK="Héring Tamás"
ENV APP_DEFAULT_MESSAGE=""
RUN mkdir /opt/app && chown 1001 -R /opt/app
USER 1001
WORKDIR /opt/app
COPY --chown=1001 $target_folder/*.jar app.jar
CMD ["java", "-jar", "app.jar"]