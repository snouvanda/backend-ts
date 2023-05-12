/*
  Warnings:

  - The values [Beli,Transfer,Pinjam] on the enum `Procurements_transaction` will be removed. If these variants are still used in the database, this will fail.
  - The values [PO,Muat,Diterima] on the enum `Procurements_trxStatus` will be removed. If these variants are still used in the database, this will fail.
  - The values [Pesan,Proses,Muat,Diterima] on the enum `Sales_trxStatus` will be removed. If these variants are still used in the database, this will fail.
  - You are about to drop the column `sessionToken` on the `users` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `customers` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `procurements` MODIFY `transaction` ENUM('beli', 'transfer', 'pinjam') NOT NULL,
    MODIFY `trxStatus` ENUM('po', 'muat', 'diterima') NOT NULL;

-- AlterTable
ALTER TABLE `sales` MODIFY `trxStatus` ENUM('pesan', 'proses', 'muat', 'diterima') NOT NULL;

-- AlterTable
ALTER TABLE `shippers` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `suppliers` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `users` DROP COLUMN `sessionToken`,
    ADD COLUMN `refreshTokens` VARCHAR(191) NULL,
    MODIFY `role` ENUM('admin', 'customer', 'employee', 'guest', 'shipper', 'supplier') NOT NULL DEFAULT 'guest',
    MODIFY `requestedRole` ENUM('admin', 'customer', 'employee', 'guest', 'shipper', 'supplier') NULL DEFAULT 'guest';

-- AddForeignKey
ALTER TABLE `Procurements` ADD CONSTRAINT `Procurements_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Sales` ADD CONSTRAINT `Sales_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Customers` ADD CONSTRAINT `Customers_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Customers` ADD CONSTRAINT `Customers_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Suppliers` ADD CONSTRAINT `Suppliers_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Suppliers` ADD CONSTRAINT `Suppliers_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Products` ADD CONSTRAINT `Products_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shippers` ADD CONSTRAINT `Shippers_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shippers` ADD CONSTRAINT `Shippers_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
