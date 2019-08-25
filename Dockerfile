FROM tensorflow/tensorflow:nightly-gpu-py3
RUN pip install numpy Pillow requests scipy
VOLUME /images
WORKDIR /stylegan
CMD ["python", "train.py"]
