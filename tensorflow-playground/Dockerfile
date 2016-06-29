FROM python:3.5

ENV TF_BINARY_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.9.0-cp35-cp35m-linux_x86_64.whl
ENV KERAS_BACKEND tensorflow

RUN apt-get update
RUN apt-get install -y libhdf5-dev

RUN pip install --upgrade pip
RUN pip install --upgrade $TF_BINARY_URL
RUN pip install keras scipy numpy matplotlib pillow pandas retrying scikit-learn h5py notebook
#RUN pip install https://github.com/ipython-contrib/IPython-notebook-extensions/tarball/master

EXPOSE 8888
CMD jupyter notebook --no-browser --ip=0.0.0.0 --notebook-dir=/mnt/notebooks
