FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt-get update -y && apt-get install -y \
    python3-openssl \ 
    libgpiod2

COPY ./config .

#ENTRYPOINT ["tail", "-f", "/dev/null"] #debug only
CMD [ "python3", "./google_spreadsheet.py" ]