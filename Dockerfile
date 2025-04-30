FROM python:3.10.0-slim

RUN pip install --upgrade pip && pip install pipenv
ENV PIPENV_VENV_IN_PROJECT=1

WORKDIR /app

COPY Pipfile Pipfile.lock* .
RUN pipenv install --deploy --ignore-pipfile

COPY . .
CMD ["python", "dz_web_02.py"]