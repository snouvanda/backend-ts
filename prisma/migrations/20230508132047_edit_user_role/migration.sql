/*
  Warnings:

  - You are about to alter the column `role` on the `users` table. The data in that column could be lost. The data in that column will be cast from `Enum(EnumId(1))` to `Enum(EnumId(1))`.

*/
-- AlterTable
ALTER TABLE `users` ADD COLUMN `requestedRole` ENUM('admin', 'customer', 'employee', 'guest') NULL DEFAULT 'guest',
    MODIFY `role` ENUM('admin', 'customer', 'employee', 'guest') NOT NULL DEFAULT 'guest';
