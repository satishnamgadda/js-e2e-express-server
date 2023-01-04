FROM node:16.19.0
ARG BRANCH=main
RUN apt install git -y && \
      git clone https://github.com/satishnamgadda/js-e2e-express-server.git 
WORKDIR /js-e2e-express-server
RUN npm install && \
    npm run build && \
    npm run test     
EXPOSE 3000

CMD ["npm","start", "-h", "0.0.0.0"]    