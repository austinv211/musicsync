FROM node:12.7.0-alpine
LABEL maintainer="Austin Vargason" 
COPY . /app/frontend
WORKDIR /app/frontend/musicsync/
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent
CMD ["npm", "start"]