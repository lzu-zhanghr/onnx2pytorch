FROM python:3.8

WORKDIR /usr/src/app

RUN mkdir onnx2torch

COPY . ./onnx2torch && cd onnx2torch


RUN pip install pipenv && pipenv sync


CMD [ "pytest", "./test/models" ]