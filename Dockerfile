FROM node:18-alpine

WORKDIR /app
COPY index.mjs .

EXPOSE 3000

CMD ["node", "index.mjs"]
