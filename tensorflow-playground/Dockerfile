FROM python:3.5

ENV TF_BINARY_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.9.0-cp35-cp35m-linux_x86_64.whl
ENV KERAS_BACKEND tensorflow

RUN apt-get update
RUN apt-get install -y libhdf5-dev gfortran

RUN git clone https://github.com/xianyi/OpenBLAS
RUN cd OpenBLAS && \
    make FC=gfortran && \
    make PREFIX=/opt/OpenBLAS install

ENV LD_LIBRARY_PATH=/opt/OpenBLAS/lib:$LD_LIBRARY_PATH
RUN ldconfig

RUN pip install --upgrade pip Cython
RUN git clone https://github.com/numpy/numpy

COPY site.cfg numpy/
RUN cd numpy && \
    python setup.py build && \
    python setup.py install

RUN rm -rf OpenBLAS && \
    rm -rf numpy

RUN pip install --upgrade $TF_BINARY_URL
RUN pip install keras scipy matplotlib pillow pandas retrying scikit-learn h5py notebook gensim spacy
RUN pip install flask

RUN mkdir /app
WORKDIR /app

EXPOSE 8888
CMD jupyter notebook --no-browser --ip=0.0.0.0 --notebook-dir=/app/notebooks
