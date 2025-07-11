FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.dblm68p.mongodb.net
ENV MONGODB_USERNAME manojkumarkalyanapu777
ENV MONGODB_PASSWORD ManojKumar531

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]