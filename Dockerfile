FROM ghcr.io/illallangi/python:v0.0.4

RUN DEBIAN_FRONTEND=noninteractive \
  python3 -m pip install --no-cache-dir \
    jinja2-cli[yaml]==0.8.2 \
    jinja2-ansible-filters==1.3.2 \
    jinja2-getenv-extension==1.0.2

ENTRYPOINT [ "jinja2" ]