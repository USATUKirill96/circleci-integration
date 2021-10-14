FROM mcr.microsoft.com/playwright:v1.15.0-focal

WORKDIR /code/

COPY . .

RUN npm i -D @playwright/test
RUN npx playwright install

CMD ["npx", "playwright", "test"]
