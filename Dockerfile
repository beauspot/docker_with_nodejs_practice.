FROM node:20-alpine3.17
WORKDIR /app
COPY package.json . 
RUN yarn install
COPY . ./ 
ENV PORT 3000
EXPOSE $PORT
CMD ["yarn", "run", "dev"]