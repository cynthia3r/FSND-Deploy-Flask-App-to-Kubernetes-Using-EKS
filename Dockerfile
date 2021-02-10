FROM python:stretch

# setup work directory
COPY . /app
WORKDIR /app

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# define application entrypoint
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
