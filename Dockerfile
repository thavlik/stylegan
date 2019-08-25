FROM tensorflow/tensorflow:nightly-gpu-py3
RUN apt-get update && apt-get install -y git
RUN pip install numpy Pillow requests scipy
WORKDIR /
RUN git clone https://github.com/thavlik/stylegan.git
WORKDIR /stylegan
CMD ["python", "pretrained_example.py"]
