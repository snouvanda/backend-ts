/*
  Warnings:

  - You are about to drop the column `companyName` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `cusType` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `fullname` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `nameAlias` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `nik` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `unloadPoint` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `account` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `issuedFKId` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `issuedTo` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `quantity` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `receivedFKId` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `receivedFrom` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `references` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `sqc` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `transaction` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `trxDate` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `unitPrice` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `inventoryjournallogical` table. All the data in the column will be lost.
  - You are about to drop the column `account` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `issuedFKId` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `issuedTo` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `quantity` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `receivedFKId` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `receivedFrom` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `references` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `sqc` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `transaction` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `trxDate` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `unitPrice` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `inventoryjournalphysical` table. All the data in the column will be lost.
  - You are about to drop the column `account` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `procurementId` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `quantity` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `references` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `sqc` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `supplierId` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `trxDate` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `unitPrice` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `procurementreturns` table. All the data in the column will be lost.
  - You are about to drop the column `account` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `loadStatus` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `logicalStock` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `paidAmount` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `paidAmtAccRcv` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `paidAmtBank` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `paidAmtCash` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `paidMethod` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `paymentStatus` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `physicalStock` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `quantity` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `references` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `sqc` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `supplierId` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `transaction` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `trxDate` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `unitPrice` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `procurements` table. All the data in the column will be lost.
  - You are about to drop the column `alias` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `account` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `customerId` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `dueDate` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `loadStatus` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `paidAmount` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `paidAmtAccRcv` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `paidAmtBank` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `paidAmtCash` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `paidMethod` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `paymentStatus` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `quantity` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `references` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `sqc` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `trxDate` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `unitPrice` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `salesorders` table. All the data in the column will be lost.
  - You are about to drop the column `account` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `customerId` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `quantity` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `references` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `salesOrderId` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `sqc` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `trxDate` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `unitPrice` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `salesreturns` table. All the data in the column will be lost.
  - You are about to drop the column `account` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `billTo` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `procurementId` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `quantity` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `reg_plate` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `salesOrderId` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `shipperId` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `sqc` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `trxDate` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `shipments` table. All the data in the column will be lost.
  - You are about to drop the column `companyName` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `contactName` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `contactPhone` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `shippers` table. All the data in the column will be lost.
  - You are about to drop the column `account` on the `stockaccounts` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `stockaccounts` table. All the data in the column will be lost.
  - You are about to drop the column `account` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `quantity` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `references` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `sqc` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `transaction` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `trxDate` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `unitPrice` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `stockadjustments` table. All the data in the column will be lost.
  - You are about to drop the column `companyName` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `contactEmail` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `contactName` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `contactPhone` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `suppliers` table. All the data in the column will be lost.
  - The primary key for the `tokens` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `createdAt` on the `tokens` table. All the data in the column will be lost.
  - You are about to drop the column `refreshToken` on the `tokens` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `tokens` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `tokens` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(50)`.
  - The primary key for the `users` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `createdAt` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `deleted` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `deletedBy` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `isActive` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `password` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `regApproval` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `remarks` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `requestedRole` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `role` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `salt` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `users` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `users` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(50)`.

*/
-- DropForeignKey
ALTER TABLE `customers` DROP FOREIGN KEY `Customers_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `customers` DROP FOREIGN KEY `Customers_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `customers` DROP FOREIGN KEY `Customers_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `customers` DROP FOREIGN KEY `Customers_userId_fkey`;

-- DropForeignKey
ALTER TABLE `inventoryjournallogical` DROP FOREIGN KEY `InventoryJournalLogical_account_fkey`;

-- DropForeignKey
ALTER TABLE `inventoryjournallogical` DROP FOREIGN KEY `InventoryJournalLogical_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `inventoryjournallogical` DROP FOREIGN KEY `InventoryJournalLogical_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `inventoryjournallogical` DROP FOREIGN KEY `InventoryJournalLogical_productId_fkey`;

-- DropForeignKey
ALTER TABLE `inventoryjournallogical` DROP FOREIGN KEY `InventoryJournalLogical_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `inventoryjournalphysical` DROP FOREIGN KEY `InventoryJournalPhysical_account_fkey`;

-- DropForeignKey
ALTER TABLE `inventoryjournalphysical` DROP FOREIGN KEY `InventoryJournalPhysical_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `inventoryjournalphysical` DROP FOREIGN KEY `InventoryJournalPhysical_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `inventoryjournalphysical` DROP FOREIGN KEY `InventoryJournalPhysical_productId_fkey`;

-- DropForeignKey
ALTER TABLE `inventoryjournalphysical` DROP FOREIGN KEY `InventoryJournalPhysical_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `procurementreturns` DROP FOREIGN KEY `ProcurementReturns_account_fkey`;

-- DropForeignKey
ALTER TABLE `procurementreturns` DROP FOREIGN KEY `ProcurementReturns_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `procurementreturns` DROP FOREIGN KEY `ProcurementReturns_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `procurementreturns` DROP FOREIGN KEY `ProcurementReturns_procurementId_fkey`;

-- DropForeignKey
ALTER TABLE `procurementreturns` DROP FOREIGN KEY `ProcurementReturns_productId_fkey`;

-- DropForeignKey
ALTER TABLE `procurementreturns` DROP FOREIGN KEY `ProcurementReturns_supplierId_fkey`;

-- DropForeignKey
ALTER TABLE `procurementreturns` DROP FOREIGN KEY `ProcurementReturns_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `procurements` DROP FOREIGN KEY `Procurements_account_fkey`;

-- DropForeignKey
ALTER TABLE `procurements` DROP FOREIGN KEY `Procurements_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `procurements` DROP FOREIGN KEY `Procurements_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `procurements` DROP FOREIGN KEY `Procurements_productId_fkey`;

-- DropForeignKey
ALTER TABLE `procurements` DROP FOREIGN KEY `Procurements_supplierId_fkey`;

-- DropForeignKey
ALTER TABLE `procurements` DROP FOREIGN KEY `Procurements_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `products` DROP FOREIGN KEY `Products_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `products` DROP FOREIGN KEY `Products_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `products` DROP FOREIGN KEY `Products_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `salesorders` DROP FOREIGN KEY `SalesOrders_account_fkey`;

-- DropForeignKey
ALTER TABLE `salesorders` DROP FOREIGN KEY `SalesOrders_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `salesorders` DROP FOREIGN KEY `SalesOrders_customerId_fkey`;

-- DropForeignKey
ALTER TABLE `salesorders` DROP FOREIGN KEY `SalesOrders_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `salesorders` DROP FOREIGN KEY `SalesOrders_productId_fkey`;

-- DropForeignKey
ALTER TABLE `salesorders` DROP FOREIGN KEY `SalesOrders_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `salesreturns` DROP FOREIGN KEY `SalesReturns_account_fkey`;

-- DropForeignKey
ALTER TABLE `salesreturns` DROP FOREIGN KEY `SalesReturns_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `salesreturns` DROP FOREIGN KEY `SalesReturns_customerId_fkey`;

-- DropForeignKey
ALTER TABLE `salesreturns` DROP FOREIGN KEY `SalesReturns_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `salesreturns` DROP FOREIGN KEY `SalesReturns_productId_fkey`;

-- DropForeignKey
ALTER TABLE `salesreturns` DROP FOREIGN KEY `SalesReturns_salesOrderId_fkey`;

-- DropForeignKey
ALTER TABLE `salesreturns` DROP FOREIGN KEY `SalesReturns_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `shipments` DROP FOREIGN KEY `Shipments_account_fkey`;

-- DropForeignKey
ALTER TABLE `shipments` DROP FOREIGN KEY `Shipments_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `shipments` DROP FOREIGN KEY `Shipments_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `shipments` DROP FOREIGN KEY `Shipments_procurementId_fkey`;

-- DropForeignKey
ALTER TABLE `shipments` DROP FOREIGN KEY `Shipments_productId_fkey`;

-- DropForeignKey
ALTER TABLE `shipments` DROP FOREIGN KEY `Shipments_salesOrderId_fkey`;

-- DropForeignKey
ALTER TABLE `shipments` DROP FOREIGN KEY `Shipments_shipperId_fkey`;

-- DropForeignKey
ALTER TABLE `shipments` DROP FOREIGN KEY `Shipments_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `shippers` DROP FOREIGN KEY `Shippers_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `shippers` DROP FOREIGN KEY `Shippers_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `shippers` DROP FOREIGN KEY `Shippers_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `shippers` DROP FOREIGN KEY `Shippers_userId_fkey`;

-- DropForeignKey
ALTER TABLE `stockadjustments` DROP FOREIGN KEY `StockAdjustments_account_fkey`;

-- DropForeignKey
ALTER TABLE `stockadjustments` DROP FOREIGN KEY `StockAdjustments_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `stockadjustments` DROP FOREIGN KEY `StockAdjustments_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `stockadjustments` DROP FOREIGN KEY `StockAdjustments_productId_fkey`;

-- DropForeignKey
ALTER TABLE `stockadjustments` DROP FOREIGN KEY `StockAdjustments_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `suppliers` DROP FOREIGN KEY `Suppliers_createdBy_fkey`;

-- DropForeignKey
ALTER TABLE `suppliers` DROP FOREIGN KEY `Suppliers_deletedBy_fkey`;

-- DropForeignKey
ALTER TABLE `suppliers` DROP FOREIGN KEY `Suppliers_updatedBy_fkey`;

-- DropForeignKey
ALTER TABLE `suppliers` DROP FOREIGN KEY `Suppliers_userId_fkey`;

-- DropForeignKey
ALTER TABLE `tokens` DROP FOREIGN KEY `Tokens_userId_fkey`;

-- DropIndex
DROP INDEX `StockAccounts_account_key` ON `stockaccounts`;

-- DropIndex
DROP INDEX `Tokens_refreshToken_idx` ON `tokens`;

-- DropIndex
DROP INDEX `Tokens_refreshToken_key` ON `tokens`;

-- DropIndex
DROP INDEX `Users_email_key` ON `users`;

-- DropIndex
DROP INDEX `Users_id_email_idx` ON `users`;

-- AlterTable
ALTER TABLE `customers` DROP COLUMN `companyName`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `cusType`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `fullname`,
    DROP COLUMN `nameAlias`,
    DROP COLUMN `nik`,
    DROP COLUMN `phone`,
    DROP COLUMN `remarks`,
    DROP COLUMN `unloadPoint`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`,
    DROP COLUMN `userId`,
    MODIFY `id` VARCHAR(10) NOT NULL;

-- AlterTable
ALTER TABLE `inventoryjournallogical` DROP COLUMN `account`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `issuedFKId`,
    DROP COLUMN `issuedTo`,
    DROP COLUMN `productId`,
    DROP COLUMN `quantity`,
    DROP COLUMN `receivedFKId`,
    DROP COLUMN `receivedFrom`,
    DROP COLUMN `references`,
    DROP COLUMN `remarks`,
    DROP COLUMN `sqc`,
    DROP COLUMN `transaction`,
    DROP COLUMN `trxDate`,
    DROP COLUMN `unitPrice`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`;

-- AlterTable
ALTER TABLE `inventoryjournalphysical` DROP COLUMN `account`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `issuedFKId`,
    DROP COLUMN `issuedTo`,
    DROP COLUMN `productId`,
    DROP COLUMN `quantity`,
    DROP COLUMN `receivedFKId`,
    DROP COLUMN `receivedFrom`,
    DROP COLUMN `references`,
    DROP COLUMN `remarks`,
    DROP COLUMN `sqc`,
    DROP COLUMN `transaction`,
    DROP COLUMN `trxDate`,
    DROP COLUMN `unitPrice`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`;

-- AlterTable
ALTER TABLE `procurementreturns` DROP COLUMN `account`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `procurementId`,
    DROP COLUMN `productId`,
    DROP COLUMN `quantity`,
    DROP COLUMN `references`,
    DROP COLUMN `remarks`,
    DROP COLUMN `sqc`,
    DROP COLUMN `supplierId`,
    DROP COLUMN `trxDate`,
    DROP COLUMN `unitPrice`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`;

-- AlterTable
ALTER TABLE `procurements` DROP COLUMN `account`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `loadStatus`,
    DROP COLUMN `logicalStock`,
    DROP COLUMN `paidAmount`,
    DROP COLUMN `paidAmtAccRcv`,
    DROP COLUMN `paidAmtBank`,
    DROP COLUMN `paidAmtCash`,
    DROP COLUMN `paidMethod`,
    DROP COLUMN `paymentStatus`,
    DROP COLUMN `physicalStock`,
    DROP COLUMN `productId`,
    DROP COLUMN `quantity`,
    DROP COLUMN `references`,
    DROP COLUMN `remarks`,
    DROP COLUMN `sqc`,
    DROP COLUMN `supplierId`,
    DROP COLUMN `transaction`,
    DROP COLUMN `trxDate`,
    DROP COLUMN `unitPrice`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`;

-- AlterTable
ALTER TABLE `products` DROP COLUMN `alias`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `name`,
    DROP COLUMN `remarks`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`;

-- AlterTable
ALTER TABLE `salesorders` DROP COLUMN `account`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `customerId`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `dueDate`,
    DROP COLUMN `loadStatus`,
    DROP COLUMN `paidAmount`,
    DROP COLUMN `paidAmtAccRcv`,
    DROP COLUMN `paidAmtBank`,
    DROP COLUMN `paidAmtCash`,
    DROP COLUMN `paidMethod`,
    DROP COLUMN `paymentStatus`,
    DROP COLUMN `productId`,
    DROP COLUMN `quantity`,
    DROP COLUMN `references`,
    DROP COLUMN `remarks`,
    DROP COLUMN `sqc`,
    DROP COLUMN `trxDate`,
    DROP COLUMN `unitPrice`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`;

-- AlterTable
ALTER TABLE `salesreturns` DROP COLUMN `account`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `customerId`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `productId`,
    DROP COLUMN `quantity`,
    DROP COLUMN `references`,
    DROP COLUMN `remarks`,
    DROP COLUMN `salesOrderId`,
    DROP COLUMN `sqc`,
    DROP COLUMN `trxDate`,
    DROP COLUMN `unitPrice`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`;

-- AlterTable
ALTER TABLE `shipments` DROP COLUMN `account`,
    DROP COLUMN `billTo`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `procurementId`,
    DROP COLUMN `productId`,
    DROP COLUMN `quantity`,
    DROP COLUMN `reg_plate`,
    DROP COLUMN `remarks`,
    DROP COLUMN `salesOrderId`,
    DROP COLUMN `shipperId`,
    DROP COLUMN `sqc`,
    DROP COLUMN `trxDate`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`;

-- AlterTable
ALTER TABLE `shippers` DROP COLUMN `companyName`,
    DROP COLUMN `contactName`,
    DROP COLUMN `contactPhone`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `remarks`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`,
    DROP COLUMN `userId`,
    MODIFY `id` VARCHAR(10) NOT NULL;

-- AlterTable
ALTER TABLE `stockaccounts` DROP COLUMN `account`,
    DROP COLUMN `remarks`;

-- AlterTable
ALTER TABLE `stockadjustments` DROP COLUMN `account`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `productId`,
    DROP COLUMN `quantity`,
    DROP COLUMN `references`,
    DROP COLUMN `remarks`,
    DROP COLUMN `sqc`,
    DROP COLUMN `transaction`,
    DROP COLUMN `trxDate`,
    DROP COLUMN `unitPrice`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`;

-- AlterTable
ALTER TABLE `suppliers` DROP COLUMN `companyName`,
    DROP COLUMN `contactEmail`,
    DROP COLUMN `contactName`,
    DROP COLUMN `contactPhone`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `remarks`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`,
    DROP COLUMN `userId`,
    MODIFY `id` VARCHAR(10) NOT NULL;

-- AlterTable
ALTER TABLE `tokens` DROP PRIMARY KEY,
    DROP COLUMN `createdAt`,
    DROP COLUMN `refreshToken`,
    DROP COLUMN `userId`,
    MODIFY `id` VARCHAR(50) NOT NULL,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `users` DROP PRIMARY KEY,
    DROP COLUMN `createdAt`,
    DROP COLUMN `createdBy`,
    DROP COLUMN `deleted`,
    DROP COLUMN `deletedBy`,
    DROP COLUMN `email`,
    DROP COLUMN `isActive`,
    DROP COLUMN `name`,
    DROP COLUMN `password`,
    DROP COLUMN `phone`,
    DROP COLUMN `regApproval`,
    DROP COLUMN `remarks`,
    DROP COLUMN `requestedRole`,
    DROP COLUMN `role`,
    DROP COLUMN `salt`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `updatedBy`,
    MODIFY `id` VARCHAR(50) NOT NULL,
    ADD PRIMARY KEY (`id`);
