FROM python
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app/
RUN pip install -r requirements.txt
ADD . /app/
EXPOSE 8000
ENTRYPOINT ["./docker-entry.sh"]
