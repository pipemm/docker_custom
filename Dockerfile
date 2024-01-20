
FROM public.ecr.aws/amazonlinux/amazonlinux:2023 AS al2023
RUN python3 -m ensurepip \
  && python3 -m pip install --no-cache-dir boto3 \
  && python3 -m pip uninstall --yes pip setuptools

FROM scratch
LABEL maintainer='244682510@qq.com'

COPY --from=al2023 / /

CMD ['/bin/bash']
