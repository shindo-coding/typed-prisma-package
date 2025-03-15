/*
  Warnings:

  - Added the required column `postType` to the `TickerSuggestion` table without a default value. This is not possible if the table is not empty.
  - Made the column `postId` on table `TickerSuggestion` required. This step will fail if there are existing NULL values in that column.

*/
-- DropIndex
DROP INDEX `TickerSuggestion_code_userId_key` ON `TickerSuggestion`;

-- AlterTable
ALTER TABLE `TickerSuggestion` ADD COLUMN `postType` VARCHAR(191) NOT NULL,
    MODIFY `postId` VARCHAR(191) NOT NULL;
