FROM node:16
FROM mcr.microsoft.com/playwright:v1.6.2-focal

WORKDIR /code/

COPY . .

RUN npm i -D @playwright/test
RUN npx playwright install

CMD ["npx", "playwright", "test"]
