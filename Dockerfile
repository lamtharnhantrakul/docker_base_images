###########
#
#      DOCKER CONTAINER FOR DEEP LEARNING AND MACHINE RESEARCH
# MAINTAINED BY: Lamtharn (Hanoi) Hantrakul -- hanoi@smartear.io | hanoi7@gmail.com | lhantrakul3@gatech.edu
# The purpose of this container is to provide a stable base image to all research containers used by Hanoi
#
# Please add new pip/apt installs in this block. Don't forget a "&& \" at the end
# of all non-final lines. Thanks!
#
###########

### Pull official Anaconda Python Distribution 4.4.0 (which has python3.6)
FROM continuumio/anaconda3:4.4.0

RUN apt-get update && apt-get install -y cmake

### Install Custom Libraries

# Install Librosa for audio analysis
RUN conda install -c conda-forge librosa  && \

# Install CPU version of Tensorflow
pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.3.0-cp36-cp36m-linux_x86_64.whl

# To aid visualization of process, display a progress bar
RUN pip install tqdm

# Install keras
RUN pip install keras

# install pyTorch
RUN conda install pytorch torchvision cuda80 -c soumith
