FROM tensorflow/tensorflow:nightly-gpu-py3
RUN pip install numpy Pillow requests scipy
VOLUME /images
WORKDIR /stylegan
CMD ["python", "dataset_tool.py", "create_horror", "datasets/horror", "/images", "images/horror"]
