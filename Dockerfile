FROM alpine:latest

# Update
RUN apk add --update build-base python py-pip

RUN mkdir -p /usr/src/test_openshift

WORKDIR /usr/src/test_openshift
COPY requirements.txt /usr/src/test_openshift

RUN pip install -r requirements.txt

# Bundle app source
COPY . /usr/src/test_openshift

EXPOSE  8080
CMD ["python", "/usr/src/test_openshift/app.py"]