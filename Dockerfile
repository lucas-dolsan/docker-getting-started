FROM python:3.7-stretch
COPY . /app
WORKDIR /app

# copied from multi-cable-solution Dockerfile
ENV LANG=C.UTF-8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN . ./venv/bin/activate
RUN  pip install -r requirements.txt

CMD python ./main.py