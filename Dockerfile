FROM public.ecr.aws/amazonlinux/amazonlinux:2023 as installer
RUN URL_ZIP='https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' \
  && EXE_FILENAME='awscli.zip' \
  && curl "${URL_ZIP}" -o "${EXE_FILENAME}"
RUN EXE_FILENAME='awscli.zip' \
  && yum install -y unzip \
  && unzip "${EXE_FILENAME}" \
  && ./aws/install --bin-dir /aws-cli-bin/

FROM public.ecr.aws/amazonlinux/amazonlinux:2023 AS al2023
RUN yum install -y less groff \
  && yum clean all
COPY --from=installer /usr/local/aws-cli/ /usr/local/aws-cli/
COPY --from=installer /aws-cli-bin/ /usr/local/bin/

FROM scratch
LABEL maintainer="244682510@qq.com"

COPY --from=al2023 / /

CMD ["/bin/bash"]
