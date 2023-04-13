FROM python:alpine3.17
WORKDIR /app
COPY requirement.txt requirement.txt
RUN pip3 install -r requirement.txt
COPY . .
ENTRYPOINT [ "python3" ]
CMD [ "manage.py", "runserver", "0.0.0.0:8000" ]