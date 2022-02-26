# Using Python Slim-Buster
FROM python:slim-buster

RUN git clone -b Galon-Userbot https://github.com/Xayzo/Galon-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Xayzo/Galon-Userbot/Galon-Userbot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
