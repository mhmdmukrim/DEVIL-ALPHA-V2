FROM fusuf/whatsasena:latest

RUN git clone https://github.com/mhmdmukrim/bot /root/bot
WORKDIR /root/bot/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
