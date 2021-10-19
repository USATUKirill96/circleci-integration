FROM mcr.microsoft.com/playwright:focal

WORKDIR /usr/src/app

RUN npm install

RUN npx playwright install

CMD ["npx", "playwright", "test"]
