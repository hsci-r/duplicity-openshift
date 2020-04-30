FROM jefferyb/openshift-alpine

MAINTAINER Eetu Mäkelä <eetu.makela@helsinki.fi>

USER root

RUN apk add --no-cache duplicity

VOLUME /data

ENV AWS_ACCESS_KEY_ID=
ENV AWS_SECRET_ACCESS_KEY=
ENV PASSPHRASE=
ENV BACKUP_DESTINATION=

USER 10001

CMD /usr/bin/duplicity --allow-source-mismatch /data $BACKUP_DESTINATION
