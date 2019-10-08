# FROM alpine
FROM frolvlad/alpine-glibc
# FROM fpco/stack-build-small

RUN apk add gmp-dev

COPY dist/ /opt/web

WORKDIR /opt/web

CMD [ "/opt/web/try-buddy-ci-exe" ]
