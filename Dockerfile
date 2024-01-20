FROM public.ecr.aws/amazonlinux/amazonlinux:2023 AS al2023

FROM scratch
LABEL maintainer="244682510@qq.com"

COPY --from=al2023 / /

CMD ["/bin/bash"]