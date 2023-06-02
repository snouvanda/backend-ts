/*
  Warnings:

  - Added the required column `createdBy` to the `StockAccounts` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `stockaccounts` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- AddForeignKey
ALTER TABLE `StockAccounts` ADD CONSTRAINT `StockAccounts_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `StockAccounts` ADD CONSTRAINT `StockAccounts_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `StockAccounts` ADD CONSTRAINT `StockAccounts_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
