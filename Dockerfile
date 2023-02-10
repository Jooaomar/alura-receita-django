FROM python:3
RUN apt-get update && apt-get install -y postgresql-client
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
CMD ["bash", "exec.sh"]
