/*
  Warnings:

  - You are about to drop the column `nameAlias` on the `customers` table. All the data in the column will be lost.
  - Added the required column `alias` to the `Customers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `alias` to the `Shippers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `alias` to the `Suppliers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `customers` DROP COLUMN `nameAlias`,
    ADD COLUMN `alias` VARCHAR(25) NOT NULL;

-- AlterTable
ALTER TABLE `shippers` ADD COLUMN `alias` VARCHAR(25) NOT NULL;

-- AlterTable
ALTER TABLE `suppliers` ADD COLUMN `alias` VARCHAR(25) NOT NULL;
