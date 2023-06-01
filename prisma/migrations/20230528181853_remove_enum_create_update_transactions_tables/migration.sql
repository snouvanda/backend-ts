/*
  Warnings:

  - The primary key for the `customers` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `name` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `quantityKg` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `stockTo` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `trxStatus` on the `procurements` table. All the data in the column will be lost.
  - You are about to alter the column `transaction` on the `procurements` table. The data in that column could be lost. The data in that column will be cast from `Enum(EnumId(0))` to `Int`.
  - The primary key for the `shippers` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `suppliers` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `name` on the `suppliers` table. All the data in the column will be lost.
  - You are about to alter the column `role` on the `users` table. The data in that column could be lost. The data in that column will be cast from `Enum(EnumId(1))` to `Int`.
  - You are about to alter the column `regApproval` on the `users` table. The data in that column could be lost. The data in that column will be cast from `Enum(EnumId(5))` to `Int`.
  - You are about to drop the `sales` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[id]` on the table `Customers` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `Shippers` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `Suppliers` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `cusType` to the `Customers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nameAlias` to the `Customers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `account` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmount` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmtAccRcv` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmtBank` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmtCash` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidMethod` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paymentStatus` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `quantity` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `references` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `companyName` to the `Suppliers` table without a default value. This is not possible if the table is not empty.
  - Made the column `requestedRole` on table `users` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `procurements` DROP FOREIGN KEY `Procurements_supplierId_fkey`;

-- DropForeignKey
ALTER TABLE `sales` DROP FOREIGN KEY `Sales_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `sales` DROP FOREIGN KEY `Sales_customerId_fkey`;

-- DropForeignKey
ALTER TABLE `sales` DROP FOREIGN KEY `Sales_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `sales` DROP FOREIGN KEY `Sales_productId_fkey`;

-- DropForeignKey
ALTER TABLE `sales` DROP FOREIGN KEY `Sales_updatedBy_fkey`;

-- AlterTable
ALTER TABLE `customers` DROP PRIMARY KEY,
    DROP COLUMN `name`,
    ADD COLUMN `companyName` VARCHAR(191) NULL,
    ADD COLUMN `cusType` INTEGER NOT NULL,
    ADD COLUMN `fullname` VARCHAR(191) NULL,
    ADD COLUMN `nameAlias` VARCHAR(191) NOT NULL,
    ADD COLUMN `nik` VARCHAR(191) NULL,
    ADD COLUMN `remarks` VARCHAR(191) NULL,
    MODIFY `id` VARCHAR(8) NOT NULL;

-- AlterTable
ALTER TABLE `procurements` DROP COLUMN `quantityKg`,
    DROP COLUMN `stockTo`,
    DROP COLUMN `trxStatus`,
    ADD COLUMN `account` INTEGER NOT NULL,
    ADD COLUMN `loadStatus` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `logicalStock` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `paidAmount` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidAmtAccRcv` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidAmtBank` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidAmtCash` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidMethod` INTEGER NOT NULL,
    ADD COLUMN `paymentStatus` INTEGER NOT NULL,
    ADD COLUMN `physicalStock` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `quantity` INTEGER NOT NULL,
    ADD COLUMN `references` VARCHAR(191) NOT NULL,
    ADD COLUMN `remarks` VARCHAR(191) NULL,
    ADD COLUMN `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `transaction` INTEGER NOT NULL DEFAULT 1,
    MODIFY `supplierId` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `products` ADD COLUMN `remarks` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `shippers` DROP PRIMARY KEY,
    ADD COLUMN `remarks` VARCHAR(191) NULL,
    MODIFY `id` VARCHAR(8) NOT NULL;

-- AlterTable
ALTER TABLE `suppliers` DROP PRIMARY KEY,
    DROP COLUMN `name`,
    ADD COLUMN `companyName` VARCHAR(191) NOT NULL,
    ADD COLUMN `contactEmail` VARCHAR(191) NULL,
    ADD COLUMN `contactName` VARCHAR(191) NULL,
    ADD COLUMN `contactPhone` VARCHAR(191) NULL,
    ADD COLUMN `remarks` VARCHAR(191) NULL,
    MODIFY `id` VARCHAR(8) NOT NULL;

-- AlterTable
ALTER TABLE `users` ADD COLUMN `remarks` VARCHAR(191) NULL,
    MODIFY `role` INTEGER NOT NULL DEFAULT 4,
    MODIFY `requestedRole` INTEGER NOT NULL DEFAULT 4,
    MODIFY `regApproval` INTEGER NOT NULL DEFAULT 0;

-- DropTable
DROP TABLE `sales`;

-- CreateTable
CREATE TABLE `StockAccounts` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `account` VARCHAR(191) NOT NULL,
    `remarks` VARCHAR(191) NULL,

    UNIQUE INDEX `StockAccounts_account_key`(`account`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ProcurementReturns` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `sqc` INTEGER NOT NULL DEFAULT 1,
    `procurementId` INTEGER NOT NULL,
    `supplierId` VARCHAR(191) NOT NULL,
    `productId` INTEGER NOT NULL,
    `quantity` INTEGER NOT NULL,
    `unitPrice` DECIMAL(65, 30) NOT NULL,
    `account` INTEGER NOT NULL,
    `references` VARCHAR(191) NOT NULL,
    `remarks` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `createdBy` VARCHAR(191) NOT NULL,
    `updatedAt` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `deleted` DATETIME(3) NULL,
    `deletedBy` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SalesOrders` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `sqc` INTEGER NOT NULL DEFAULT 1,
    `customerId` VARCHAR(191) NOT NULL,
    `account` INTEGER NOT NULL,
    `productId` INTEGER NOT NULL,
    `quantity` INTEGER NOT NULL,
    `unitPrice` DECIMAL(65, 30) NOT NULL,
    `loadStatus` INTEGER NOT NULL DEFAULT 0,
    `paymentStatus` INTEGER NOT NULL,
    `dueDate` DATE NULL,
    `paidAmount` DECIMAL(65, 30) NOT NULL,
    `paidMethod` INTEGER NOT NULL,
    `paidAmtBank` DECIMAL(65, 30) NOT NULL,
    `paidAmtCash` DECIMAL(65, 30) NOT NULL,
    `paidAmtAccRcv` DECIMAL(65, 30) NOT NULL,
    `references` VARCHAR(191) NOT NULL,
    `remarks` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `createdBy` VARCHAR(191) NOT NULL,
    `updatedAt` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `deleted` DATETIME(3) NULL,
    `deletedBy` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SalesReturns` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `sqc` INTEGER NOT NULL DEFAULT 1,
    `salesOrderId` INTEGER NOT NULL,
    `customerId` VARCHAR(191) NOT NULL,
    `account` INTEGER NOT NULL,
    `productId` INTEGER NOT NULL,
    `quantity` INTEGER NOT NULL,
    `unitPrice` DECIMAL(65, 30) NOT NULL,
    `references` VARCHAR(191) NOT NULL,
    `remarks` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `createdBy` VARCHAR(191) NOT NULL,
    `updatedAt` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `deleted` DATETIME(3) NULL,
    `deletedBy` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Shipments` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `sqc` INTEGER NOT NULL DEFAULT 1,
    `shipperId` VARCHAR(191) NOT NULL,
    `reg_plate` VARCHAR(191) NOT NULL,
    `account` INTEGER NOT NULL,
    `procurementId` INTEGER NOT NULL,
    `salesOrderId` INTEGER NOT NULL,
    `productId` INTEGER NOT NULL,
    `quantity` INTEGER NOT NULL,
    `billTo` INTEGER NOT NULL,
    `remarks` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `createdBy` VARCHAR(191) NOT NULL,
    `updatedAt` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `deleted` DATETIME(3) NULL,
    `deletedBy` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `StockAdjustments` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `sqc` INTEGER NOT NULL DEFAULT 1,
    `transaction` INTEGER NOT NULL DEFAULT 1,
    `account` INTEGER NOT NULL,
    `productId` INTEGER NOT NULL,
    `quantity` INTEGER NOT NULL,
    `unitPrice` DECIMAL(65, 30) NOT NULL,
    `references` VARCHAR(191) NOT NULL,
    `remarks` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `createdBy` VARCHAR(191) NOT NULL,
    `updatedAt` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `deleted` DATETIME(3) NULL,
    `deletedBy` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `InventoryJournalLogical` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `sqc` INTEGER NOT NULL DEFAULT 1,
    `transaction` INTEGER NOT NULL DEFAULT 1,
    `account` INTEGER NOT NULL,
    `productId` INTEGER NOT NULL,
    `quantity` INTEGER NOT NULL,
    `unitPrice` DECIMAL(65, 30) NOT NULL,
    `receivedFrom` INTEGER NOT NULL,
    `receivedFKId` INTEGER NOT NULL,
    `issuedTo` INTEGER NOT NULL,
    `issuedFKId` INTEGER NOT NULL,
    `references` VARCHAR(191) NOT NULL,
    `remarks` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `createdBy` VARCHAR(191) NOT NULL,
    `updatedAt` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `deleted` DATETIME(3) NULL,
    `deletedBy` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `InventoryJournalPhysical` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `sqc` INTEGER NOT NULL DEFAULT 1,
    `transaction` INTEGER NOT NULL DEFAULT 1,
    `account` INTEGER NOT NULL,
    `productId` INTEGER NOT NULL,
    `quantity` INTEGER NOT NULL,
    `unitPrice` DECIMAL(65, 30) NOT NULL,
    `receivedFrom` INTEGER NOT NULL,
    `receivedFKId` INTEGER NOT NULL,
    `issuedTo` INTEGER NOT NULL,
    `issuedFKId` INTEGER NOT NULL,
    `references` VARCHAR(191) NOT NULL,
    `remarks` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `createdBy` VARCHAR(191) NOT NULL,
    `updatedAt` DATETIME(3) NULL,
    `updatedBy` VARCHAR(191) NULL,
    `deleted` DATETIME(3) NULL,
    `deletedBy` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `Customers_id_key` ON `Customers`(`id`);

-- CreateIndex
CREATE UNIQUE INDEX `Shippers_id_key` ON `Shippers`(`id`);

-- CreateIndex
CREATE UNIQUE INDEX `Suppliers_id_key` ON `Suppliers`(`id`);

-- AddForeignKey
ALTER TABLE `Procurements` ADD CONSTRAINT `Procurements_supplierId_fkey` FOREIGN KEY (`supplierId`) REFERENCES `Suppliers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Procurements` ADD CONSTRAINT `Procurements_account_fkey` FOREIGN KEY (`account`) REFERENCES `StockAccounts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProcurementReturns` ADD CONSTRAINT `ProcurementReturns_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProcurementReturns` ADD CONSTRAINT `ProcurementReturns_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProcurementReturns` ADD CONSTRAINT `ProcurementReturns_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProcurementReturns` ADD CONSTRAINT `ProcurementReturns_supplierId_fkey` FOREIGN KEY (`supplierId`) REFERENCES `Suppliers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProcurementReturns` ADD CONSTRAINT `ProcurementReturns_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProcurementReturns` ADD CONSTRAINT `ProcurementReturns_account_fkey` FOREIGN KEY (`account`) REFERENCES `StockAccounts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProcurementReturns` ADD CONSTRAINT `ProcurementReturns_procurementId_fkey` FOREIGN KEY (`procurementId`) REFERENCES `Procurements`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesOrders` ADD CONSTRAINT `SalesOrders_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesOrders` ADD CONSTRAINT `SalesOrders_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesOrders` ADD CONSTRAINT `SalesOrders_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesOrders` ADD CONSTRAINT `SalesOrders_customerId_fkey` FOREIGN KEY (`customerId`) REFERENCES `Customers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesOrders` ADD CONSTRAINT `SalesOrders_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesOrders` ADD CONSTRAINT `SalesOrders_account_fkey` FOREIGN KEY (`account`) REFERENCES `StockAccounts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesReturns` ADD CONSTRAINT `SalesReturns_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesReturns` ADD CONSTRAINT `SalesReturns_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesReturns` ADD CONSTRAINT `SalesReturns_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesReturns` ADD CONSTRAINT `SalesReturns_customerId_fkey` FOREIGN KEY (`customerId`) REFERENCES `Customers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesReturns` ADD CONSTRAINT `SalesReturns_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesReturns` ADD CONSTRAINT `SalesReturns_account_fkey` FOREIGN KEY (`account`) REFERENCES `StockAccounts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SalesReturns` ADD CONSTRAINT `SalesReturns_salesOrderId_fkey` FOREIGN KEY (`salesOrderId`) REFERENCES `SalesOrders`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shipments` ADD CONSTRAINT `Shipments_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shipments` ADD CONSTRAINT `Shipments_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shipments` ADD CONSTRAINT `Shipments_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shipments` ADD CONSTRAINT `Shipments_shipperId_fkey` FOREIGN KEY (`shipperId`) REFERENCES `Shippers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shipments` ADD CONSTRAINT `Shipments_account_fkey` FOREIGN KEY (`account`) REFERENCES `StockAccounts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shipments` ADD CONSTRAINT `Shipments_procurementId_fkey` FOREIGN KEY (`procurementId`) REFERENCES `Procurements`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shipments` ADD CONSTRAINT `Shipments_salesOrderId_fkey` FOREIGN KEY (`salesOrderId`) REFERENCES `SalesOrders`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shipments` ADD CONSTRAINT `Shipments_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `StockAdjustments` ADD CONSTRAINT `StockAdjustments_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `StockAdjustments` ADD CONSTRAINT `StockAdjustments_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `StockAdjustments` ADD CONSTRAINT `StockAdjustments_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `StockAdjustments` ADD CONSTRAINT `StockAdjustments_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `StockAdjustments` ADD CONSTRAINT `StockAdjustments_account_fkey` FOREIGN KEY (`account`) REFERENCES `StockAccounts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `InventoryJournalLogical` ADD CONSTRAINT `InventoryJournalLogical_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `InventoryJournalLogical` ADD CONSTRAINT `InventoryJournalLogical_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `InventoryJournalLogical` ADD CONSTRAINT `InventoryJournalLogical_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `InventoryJournalLogical` ADD CONSTRAINT `InventoryJournalLogical_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `InventoryJournalLogical` ADD CONSTRAINT `InventoryJournalLogical_account_fkey` FOREIGN KEY (`account`) REFERENCES `StockAccounts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `InventoryJournalPhysical` ADD CONSTRAINT `InventoryJournalPhysical_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `InventoryJournalPhysical` ADD CONSTRAINT `InventoryJournalPhysical_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `InventoryJournalPhysical` ADD CONSTRAINT `InventoryJournalPhysical_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `InventoryJournalPhysical` ADD CONSTRAINT `InventoryJournalPhysical_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `InventoryJournalPhysical` ADD CONSTRAINT `InventoryJournalPhysical_account_fkey` FOREIGN KEY (`account`) REFERENCES `StockAccounts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
