FROM ghcr.io/illallangi/python:v0.0.3
RUN python3 -m pip install --no-cache-dir --upgrade pip setuptools wheel
RUN python3 -m pip install jinja2-cli[yaml]
ENTRYPOINT [ "jinja2" ]