FROM nvcr.io/nvidia/pytorch:20.06-py3

RUN apt-get update && apt-get install -y \
    swig

ENV HOROVOD_GPU_OPERATIONS NCCL
RUN pip install -r requirements.txt
