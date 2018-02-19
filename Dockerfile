FROM alpine:3.1

# Update
RUN apk add --update python py-pip

RUN mkdir -p /usr/src/test_openshift

WORKDIR /usr/src/test_openshift
COPY requirements.txt /usr/src/test_openshift

RUN pip install --no-cache-dir -r requirements.txt

# Bundle app source
COPY . /usr/src/test_openshift

EXPOSE  8080
CMD ["python", "/usr/src/app.py"]