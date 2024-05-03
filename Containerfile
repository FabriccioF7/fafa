FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN fafa create-db
RUN fafa populate-db
RUN fafa add-user -u admin -p admin
EXPOSE 5000
CMD ["fafa", "run"]
