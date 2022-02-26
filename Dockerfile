# Using Python Slim-Buster
FROM python:slim-buster
#━━━━━ Userbot Telegram ━━━━━
#━━━━━ By Skyzuu-Userbot ━━━━━

COPY . /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r  ../requirements.txt
EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
