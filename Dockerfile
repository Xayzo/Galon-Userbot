FROM mrismanaziz/man-userbot:buster

#cloning repo
RUN git clone -b Galon-Userbot https://github.com/xayzo/galon-userbot /root/userbot
#working directory
RUN /root/userbot/

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Xayzo/Galon-Userbot/Galon-Userbot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
