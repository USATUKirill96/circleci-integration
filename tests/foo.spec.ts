import { test, expect } from '@playwright/test';

test('basic test', async ({ page }) => {
  await page.goto('http://testapp.local:8051/base/test/');
  await expect(page).toHaveURL('http://testapp.local:8051/base/test/')
});
