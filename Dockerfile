FROM python:3.7-slim

RUN apt-get update && apt-get install -y --no-install-recommends libsm6 libxext6 libxrender1 libglib2.0-bin \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* 
    
RUN python3 -m pip install --upgrade --no-cache-dir -i https://pypi.doubanio.com/simple/ \
    opencv-python
