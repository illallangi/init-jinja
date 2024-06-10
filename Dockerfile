FROM docker.io/library/python:3.12.4

ENV PYTHONUNBUFFERED=1 \
    PYTHONIOENCODING=UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    XDG_CONFIG_HOME=/config

RUN python3 -m pip install --no-cache-dir --upgrade pip==23.3.2

WORKDIR /usr/src/app
RUN DEBIAN_FRONTEND=noninteractive \
  python3 -m pip install --no-cache-dir \
    jinja2-cli[yaml]==0.8.2 \
    jinja2-ansible-filters==1.3.2 \
    jinja2-getenv-extension==1.0.2

ENTRYPOINT [ "jinja2" ]