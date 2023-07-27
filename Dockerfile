# FROM node:16-alpine3.16 as build
# WORKDIR /app
# COPY ./package*.json ./

# RUN npm ci

# COPY ./ ./
# RUN npm run build

FROM nginx:1.23.0-alpine
WORKDIR /workspace
EXPOSE 8080
COPY nginx.conf /etc/nginx/nginx.conf
COPY /dist/ngcloudrundemo /usr/share/nginx/html
# COPY --from=build /app/dist/ngcloudrundemo /usr/share/nginx/html
