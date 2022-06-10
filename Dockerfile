FROM node:16

WORKDIR /app
RUN git clone https://github.com/Nicicalu/nicolas-caluori.ch /app
RUN cd /app

RUN npm install -g gatsby-cli
#RUN npm install
RUN yarn
RUN npm run build

EXPOSE 9000

CMD npm run serve
