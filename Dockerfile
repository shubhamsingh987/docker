FROM python:3.8

RUN pip install flask

RUN pip install gunicorn

COPY . .

EXPOSE  5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]





