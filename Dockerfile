FROM tensorflow/tensorflow:nightly-gpu-py3
RUN apt-get update && apt-get install -y git
RUN pip install numpy Pillow requests scipy
WORKDIR /stylegan
COPY . .
CMD ["python", "pretrained_example.py"]
