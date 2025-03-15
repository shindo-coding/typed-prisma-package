# Build stage
FROM node:20.6-alpine AS build

ENV TZ="Asia/Ho_Chi_Minh"

WORKDIR /app

COPY package*.json ./
RUN npm i
COPY . .


# Production stage
FROM node:20.6-alpine

ENV NODE_ENV=production
ENV EXPOSE_PORT=80
ENV TZ="Asia/Ho_Chi_Minh"

WORKDIR /app

RUN addgroup -g 1001 -S nodejs
RUN adduser -S nodejs -u 1001

COPY --from=build /app/package*.json ./
RUN npm i

COPY --chown=nodejs:nodejs --from=build /app/prisma /app/prisma

USER nodejs

EXPOSE 80
CMD ["npm", "run", "migration:run"]
