/*
  Warnings:

  - A unique constraint covering the columns `[userId,code,postId]` on the table `TickerSuggestion` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `TickerSuggestion_userId_code_postId_key` ON `TickerSuggestion`(`userId`, `code`, `postId`);
