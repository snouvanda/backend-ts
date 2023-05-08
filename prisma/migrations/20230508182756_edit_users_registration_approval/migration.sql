-- AlterTable
ALTER TABLE `users` ADD COLUMN `regApproval` ENUM('approved', 'denied', 'pending') NOT NULL DEFAULT 'pending';
