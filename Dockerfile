FROM python:3.12.7-alpine
LABEL author="zeeshan" organization="lt"
COPY . /app
USER _chrony
COPY --chown=_chrony . /app
WORKDIR /app
EXPOSE 8000
RUN pip3 install -r requirements.txt
