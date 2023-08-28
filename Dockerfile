FROM node:custome-alpine
RUN adduser -S nodejs -u 1001
RUN addgroup -S nodejs -g 1001

WORKDIR /app
RUN chown -R nodejs:nodejs /app
COPY ./package.json .
COPY .npmrc .
RUN ["pnpm", "install"]

COPY . .

EXPOSE 3000
RUN [ "npm", "run", "build" ]
CMD [ "npm","start" ]
