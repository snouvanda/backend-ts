/*
  Warnings:

  - A unique constraint covering the columns `[account]` on the table `StockAccounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[refreshToken]` on the table `Tokens` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[email]` on the table `Users` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `createdBy` to the `Customers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cusType` to the `Customers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nameAlias` to the `Customers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `account` to the `InventoryJournalLogical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `InventoryJournalLogical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `issuedFKId` to the `InventoryJournalLogical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `issuedTo` to the `InventoryJournalLogical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `InventoryJournalLogical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `quantity` to the `InventoryJournalLogical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `receivedFKId` to the `InventoryJournalLogical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `receivedFrom` to the `InventoryJournalLogical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `unitPrice` to the `InventoryJournalLogical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `account` to the `InventoryJournalPhysical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `InventoryJournalPhysical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `issuedFKId` to the `InventoryJournalPhysical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `issuedTo` to the `InventoryJournalPhysical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `InventoryJournalPhysical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `quantity` to the `InventoryJournalPhysical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `receivedFKId` to the `InventoryJournalPhysical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `receivedFrom` to the `InventoryJournalPhysical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `unitPrice` to the `InventoryJournalPhysical` table without a default value. This is not possible if the table is not empty.
  - Added the required column `account` to the `ProcurementReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `ProcurementReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `procurementId` to the `ProcurementReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `ProcurementReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `quantity` to the `ProcurementReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `supplierId` to the `ProcurementReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `unitPrice` to the `ProcurementReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `account` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmount` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmtAccRcv` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmtBank` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmtCash` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidMethod` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paymentStatus` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `quantity` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `supplierId` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `unitPrice` to the `Procurements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `alias` to the `Products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `Products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `account` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `customerId` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmount` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmtAccRcv` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmtBank` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidAmtCash` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paidMethod` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paymentStatus` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `quantity` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `unitPrice` to the `SalesOrders` table without a default value. This is not possible if the table is not empty.
  - Added the required column `account` to the `SalesReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `SalesReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `customerId` to the `SalesReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `SalesReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `quantity` to the `SalesReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `salesOrderId` to the `SalesReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `unitPrice` to the `SalesReturns` table without a default value. This is not possible if the table is not empty.
  - Added the required column `account` to the `Shipments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `billTo` to the `Shipments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `Shipments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `procurementId` to the `Shipments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `Shipments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `quantity` to the `Shipments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reg_plate` to the `Shipments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `salesOrderId` to the `Shipments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `shipperId` to the `Shipments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `companyName` to the `Shippers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `Shippers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `account` to the `StockAccounts` table without a default value. This is not possible if the table is not empty.
  - Added the required column `account` to the `StockAdjustments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `StockAdjustments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `StockAdjustments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `quantity` to the `StockAdjustments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `unitPrice` to the `StockAdjustments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `companyName` to the `Suppliers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `Suppliers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `refreshToken` to the `Tokens` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Tokens` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdBy` to the `Users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `Users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `password` to the `Users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `customers` ADD COLUMN `companyName` VARCHAR(50) NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `cusType` INTEGER NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `email` VARCHAR(100) NULL,
    ADD COLUMN `fullname` VARCHAR(50) NULL,
    ADD COLUMN `nameAlias` VARCHAR(20) NOT NULL,
    ADD COLUMN `nik` VARCHAR(15) NULL,
    ADD COLUMN `phone` VARCHAR(50) NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `unloadPoint` VARCHAR(50) NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL,
    ADD COLUMN `userId` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `inventoryjournallogical` ADD COLUMN `account` INTEGER NOT NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `issuedFKId` INTEGER NOT NULL,
    ADD COLUMN `issuedTo` INTEGER NOT NULL,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `quantity` INTEGER NOT NULL,
    ADD COLUMN `receivedFKId` INTEGER NOT NULL,
    ADD COLUMN `receivedFrom` INTEGER NOT NULL,
    ADD COLUMN `references` VARCHAR(50) NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `sqc` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `transaction` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `unitPrice` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `inventoryjournalphysical` ADD COLUMN `account` INTEGER NOT NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `issuedFKId` INTEGER NOT NULL,
    ADD COLUMN `issuedTo` INTEGER NOT NULL,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `quantity` INTEGER NOT NULL,
    ADD COLUMN `receivedFKId` INTEGER NOT NULL,
    ADD COLUMN `receivedFrom` INTEGER NOT NULL,
    ADD COLUMN `references` VARCHAR(50) NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `sqc` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `transaction` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `unitPrice` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `procurementreturns` ADD COLUMN `account` INTEGER NOT NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `procurementId` INTEGER NOT NULL,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `quantity` INTEGER NOT NULL,
    ADD COLUMN `references` VARCHAR(50) NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `sqc` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `supplierId` VARCHAR(10) NOT NULL,
    ADD COLUMN `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `unitPrice` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `procurements` ADD COLUMN `account` INTEGER NOT NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `loadStatus` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `logicalStock` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `paidAmount` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidAmtAccRcv` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidAmtBank` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidAmtCash` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidMethod` INTEGER NOT NULL,
    ADD COLUMN `paymentStatus` INTEGER NOT NULL,
    ADD COLUMN `physicalStock` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `quantity` INTEGER NOT NULL,
    ADD COLUMN `references` VARCHAR(50) NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `sqc` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `supplierId` VARCHAR(10) NOT NULL,
    ADD COLUMN `transaction` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `unitPrice` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `products` ADD COLUMN `alias` VARCHAR(10) NOT NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `name` VARCHAR(50) NOT NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `salesorders` ADD COLUMN `account` INTEGER NOT NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `customerId` VARCHAR(10) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `dueDate` DATE NULL,
    ADD COLUMN `loadStatus` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `paidAmount` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidAmtAccRcv` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidAmtBank` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidAmtCash` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `paidMethod` INTEGER NOT NULL,
    ADD COLUMN `paymentStatus` INTEGER NOT NULL,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `quantity` INTEGER NOT NULL,
    ADD COLUMN `references` VARCHAR(50) NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `sqc` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `unitPrice` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `salesreturns` ADD COLUMN `account` INTEGER NOT NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `customerId` VARCHAR(10) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `quantity` INTEGER NOT NULL,
    ADD COLUMN `references` VARCHAR(50) NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `salesOrderId` INTEGER NOT NULL,
    ADD COLUMN `sqc` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `unitPrice` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `shipments` ADD COLUMN `account` INTEGER NOT NULL,
    ADD COLUMN `billTo` INTEGER NOT NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `procurementId` INTEGER NOT NULL,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `quantity` INTEGER NOT NULL,
    ADD COLUMN `references` VARCHAR(50) NULL,
    ADD COLUMN `reg_plate` VARCHAR(15) NOT NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `salesOrderId` INTEGER NOT NULL,
    ADD COLUMN `shipperId` VARCHAR(10) NOT NULL,
    ADD COLUMN `sqc` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `shippers` ADD COLUMN `companyName` VARCHAR(50) NOT NULL,
    ADD COLUMN `contactEmail` VARCHAR(100) NULL,
    ADD COLUMN `contactName` VARCHAR(50) NULL,
    ADD COLUMN `contactPhone` VARCHAR(50) NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL,
    ADD COLUMN `userId` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `stockaccounts` ADD COLUMN `account` VARCHAR(20) NOT NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL;

-- AlterTable
ALTER TABLE `stockadjustments` ADD COLUMN `account` INTEGER NOT NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `quantity` INTEGER NOT NULL,
    ADD COLUMN `references` VARCHAR(50) NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `sqc` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `transaction` INTEGER NOT NULL DEFAULT 1,
    ADD COLUMN `trxDate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `unitPrice` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `suppliers` ADD COLUMN `companyName` VARCHAR(50) NOT NULL,
    ADD COLUMN `contactEmail` VARCHAR(100) NULL,
    ADD COLUMN `contactName` VARCHAR(50) NULL,
    ADD COLUMN `contactPhone` VARCHAR(50) NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL,
    ADD COLUMN `userId` VARCHAR(50) NULL;

-- AlterTable
ALTER TABLE `tokens` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `refreshToken` VARCHAR(360) NOT NULL,
    ADD COLUMN `userId` VARCHAR(50) NOT NULL;

-- AlterTable
ALTER TABLE `users` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `createdBy` VARCHAR(50) NOT NULL,
    ADD COLUMN `deleted` DATETIME(3) NULL,
    ADD COLUMN `deletedBy` VARCHAR(50) NULL,
    ADD COLUMN `email` VARCHAR(100) NOT NULL,
    ADD COLUMN `isActive` BOOLEAN NOT NULL DEFAULT false,
    ADD COLUMN `name` VARCHAR(50) NOT NULL,
    ADD COLUMN `password` VARCHAR(100) NOT NULL,
    ADD COLUMN `phone` VARCHAR(50) NULL,
    ADD COLUMN `regApproval` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `remarks` VARCHAR(100) NULL,
    ADD COLUMN `requestedRole` INTEGER NOT NULL DEFAULT 4,
    ADD COLUMN `role` INTEGER NOT NULL DEFAULT 4,
    ADD COLUMN `salt` VARCHAR(100) NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NULL,
    ADD COLUMN `updatedBy` VARCHAR(50) NULL;

-- CreateIndex
CREATE UNIQUE INDEX `StockAccounts_account_key` ON `StockAccounts`(`account`);

-- CreateIndex
CREATE UNIQUE INDEX `Tokens_refreshToken_key` ON `Tokens`(`refreshToken`);

-- CreateIndex
CREATE INDEX `Tokens_refreshToken_idx` ON `Tokens`(`refreshToken`);

-- CreateIndex
CREATE UNIQUE INDEX `Users_email_key` ON `Users`(`email`);

-- CreateIndex
CREATE INDEX `Users_id_email_idx` ON `Users`(`id`, `email`);

-- AddForeignKey
ALTER TABLE `Tokens` ADD CONSTRAINT `Tokens_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Products` ADD CONSTRAINT `Products_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Products` ADD CONSTRAINT `Products_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Products` ADD CONSTRAINT `Products_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Customers` ADD CONSTRAINT `Customers_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Customers` ADD CONSTRAINT `Customers_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Customers` ADD CONSTRAINT `Customers_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Customers` ADD CONSTRAINT `Customers_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Suppliers` ADD CONSTRAINT `Suppliers_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Suppliers` ADD CONSTRAINT `Suppliers_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Suppliers` ADD CONSTRAINT `Suppliers_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Suppliers` ADD CONSTRAINT `Suppliers_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shippers` ADD CONSTRAINT `Shippers_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shippers` ADD CONSTRAINT `Shippers_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shippers` ADD CONSTRAINT `Shippers_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shippers` ADD CONSTRAINT `Shippers_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Procurements` ADD CONSTRAINT `Procurements_createdBy_fkey` FOREIGN KEY (`createdBy`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Procurements` ADD CONSTRAINT `Procurements_updatedBy_fkey` FOREIGN KEY (`updatedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Procurements` ADD CONSTRAINT `Procurements_deletedBy_fkey` FOREIGN KEY (`deletedBy`) REFERENCES `Users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Procurements` ADD CONSTRAINT `Procurements_supplierId_fkey` FOREIGN KEY (`supplierId`) REFERENCES `Suppliers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Procurements` ADD CONSTRAINT `Procurements_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

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
