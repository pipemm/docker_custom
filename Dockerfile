FROM public.ecr.aws/amazonlinux/amazonlinux:2023 as cli-installer
ARG URL_ZIP='https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip'
ARG EXE_FILENAME='awscli.zip'
RUN yum install --assumeyes unzip \
  && curl "${URL_ZIP}" --output "${EXE_FILENAME}" \
  && unzip "${EXE_FILENAME}" \
  && ./aws/install --bin-dir /aws-cli-bin/

FROM public.ecr.aws/amazonlinux/amazonlinux:2023 AS al2023
RUN yum install --assumeyes less groff \
  && yum clean all
COPY --from=cli-installer /usr/local/aws-cli/ /usr/local/aws-cli/
COPY --from=cli-installer /aws-cli-bin/       /usr/local/bin/

FROM scratch
LABEL maintainer='244682510@qq.com'

COPY --from=al2023 / /
RUN python3 -m ensurepip \
  && python3 -m pip uninstall --yes pip setuptools

CMD ['/bin/bash']
