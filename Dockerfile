FROM ghcr.io/illallangi/python:v0.0.3

RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && \
  rm -rf /var/lib/apt/lists/* \
  && \
  python3 -m pip install --no-cache-dir --upgrade \
    pip \
    setuptools \
    wheel \
  && \
  python3 -m pip install --no-cache-dir \
    jinja2-cli[yaml]

ENTRYPOINT [ "jinja2" ]