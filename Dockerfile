FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN /usr/local/bin/python3 -m pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt-get update -y && apt-get install -y \
    gcc \
    python3-openssl \ 
    python3-dev \
    libgpiod2 
RUN apt-get remove python3-rpi.gpio

# install snapshot 
COPY rpi-gpio/ rpi-gpio
RUN cd rpi-gpio && python3 setup.py install && cd ..

RUN groupadd -r gpio

CMD [ "sh", "data/start.sh" ]
