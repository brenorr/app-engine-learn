FROM python:3.9.5

WORKDIR /app/app-engine-learn

ADD main.py .
ADD Pipfile .
ADD Pipfile.lock .
ADD Makefile .

RUN apt update && apt install make build-essential -y

RUN make install

EXPOSE 8080

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
