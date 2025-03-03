FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml .

RUN pip install --upgrade pip && pip install .

COPY . .

CMD [ "python", "main.py" ]
