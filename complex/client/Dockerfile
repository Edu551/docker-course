FROM node:16-alpine as builder
WORKDIR '/app'
COPY ./package.json ./
RUN npm install
COPY . .
RUN npm run build

# Copy all the files from builder, at /app/build, to /usr/share/nginx/html
FROM nginx
EXPOSE 3000
COPY ./nginx/default.conf /etcnginx/conf.d/default.conf
COPY --from=builder /app/build  /usr/share/nginx/html