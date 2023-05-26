FROM python:3.9-slim
COPY src /app
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python3"]
CMD ["app.py"]
