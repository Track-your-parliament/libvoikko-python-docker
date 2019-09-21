FROM python:latest
WORKDIR /app
COPY ./app.py /app
COPY ./requirements.txt /app
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y voikko-fi python-libvoikko
RUN cp /usr/lib/python3/dist-packages/libvoikko.py /app/libvoikko.py
RUN pip install --trusted-host pypi.python.org -r requirements.txt
CMD [ "python", "app.py" ]