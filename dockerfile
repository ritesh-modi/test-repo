from python:3.8

copy ./requirements.txt ./webapp/requirements.txt

RUN apt get update
RUN python install -r ./requirements.txt
RUN python install flask

COPY webapp/* ./webapp

ENTRYPOINT ["python"]

CMD ["app.py"]
