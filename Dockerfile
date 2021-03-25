FROM python:3.7-slim
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV PIP_INDEX_URL='https://pypi.python.org/simple'
ENV PIP_EXTRA_INDEX_URL='https://repos.niki.ai/repository/pypi/simple'

COPY requirements.txt /tmp/requirements.txt
RUN pip install -U pip
RUN pip install -Ur /tmp/requirements.txt
RUN pip freeze
RUN rm -rf /tmp/requirements*

COPY . /usr/src/app

ENV PORT 8080
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["run.py"]