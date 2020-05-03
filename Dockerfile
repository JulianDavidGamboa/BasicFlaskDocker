FROM alpine:3.10

RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

ENTRYPOINT ["python3"]

CMD ["src/app.py"]
