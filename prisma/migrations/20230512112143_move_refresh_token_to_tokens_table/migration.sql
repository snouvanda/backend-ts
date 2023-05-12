/*
  Warnings:

  - You are about to drop the column `refreshTokens` on the `users` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `users` DROP COLUMN `refreshTokens`;

-- CreateTable
CREATE TABLE `Tokens` (
    `refreshToken` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Tokens_refreshToken_key`(`refreshToken`),
    INDEX `Tokens_refreshToken_idx`(`refreshToken`),
    PRIMARY KEY (`refreshToken`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE INDEX `Users_id_email_idx` ON `Users`(`id`, `email`);

-- AddForeignKey
ALTER TABLE `Tokens` ADD CONSTRAINT `Tokens_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
