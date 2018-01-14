FROM python:3

WORKDIR /usr/src/app
COPY webapp /usr/src/app
COPY requirements.txt /usr/src/app
RUN pip install -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:8000", "-w", "3", "talentmobilis.wsgi"]
