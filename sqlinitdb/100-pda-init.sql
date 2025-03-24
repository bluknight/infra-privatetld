/* This schema copied from the PowerDNS-Admin Github repo, specificially the file
 * https://github.com/PowerDNS-Admin/PowerDNS-Admin/blob/94ce26eaad94ce86faf03f6a350332a50138461b/docs/wiki/database-setup/Setup-MySQL-or-MariaDB.md
 *
 * I'm making the assumption here that the schema noted, like the repository copied from, is
 * licensed under the MIT License, as was everything else in this commit.
 */

CREATE DATABASE `powerdnsadmin` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL PRIVILEGES ON `powerdnsadmin`.* TO 'powerdns'@'%';
FLUSH PRIVILEGES;