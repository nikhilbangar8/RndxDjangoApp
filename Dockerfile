FROM python:3.6
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
