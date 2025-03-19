-- CreateTable
CREATE TABLE `TestTable` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE INDEX `HNXMarket_code_idx` ON `HNXMarket`(`code`);

-- CreateIndex
CREATE INDEX `HSXMarket_code_idx` ON `HSXMarket`(`code`);

-- CreateIndex
CREATE INDEX `UpcomMarket_code_idx` ON `UpcomMarket`(`code`);

-- AddForeignKey
ALTER TABLE `TickerSuggestion` ADD CONSTRAINT `TickerSuggestion_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Investor`(`userId`) ON DELETE RESTRICT ON UPDATE CASCADE;
