FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install -r requirements.txt
RUN npm run test
EXPOSE 8000
CMD ["node","app.js"]
