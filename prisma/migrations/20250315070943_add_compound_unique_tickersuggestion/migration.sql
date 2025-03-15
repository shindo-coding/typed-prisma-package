/*
  Warnings:

  - A unique constraint covering the columns `[code,userId]` on the table `TickerSuggestion` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `TickerSuggestion_code_userId_key` ON `TickerSuggestion`(`code`, `userId`);
