/*
  Warnings:

  - A unique constraint covering the columns `[date,symbol]` on the table `HistoricalData` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `HistoricalData_date_symbol_key` ON `HistoricalData`(`date`, `symbol`);
