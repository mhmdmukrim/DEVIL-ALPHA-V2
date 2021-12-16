FROM fusuf/whatsasena:latest

RUN git clone https://github.com/mhmdmukrim/bot /root/devilalpha
WORKDIR /root/devilalpha/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
