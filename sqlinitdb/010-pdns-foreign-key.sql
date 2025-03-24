/* 
 * This schema copied from the PowerDNS Github repo, specifically the file
 * https://github.com/PowerDNS/pdns/blob/685e22a6a171e8df17ea934c50b7857f7429ebe5/modules/gmysqlbackend/enable-foreign-keys.mysql.sql
 * 
 * I'm making the assumption here that the schema noted, like the repository copied from, is
 * licensed under the GNU General Public License v2, as was everything else in this commit.
 */

USE powerdns;

/*
Using this SQL causes Mysql to create foreign keys on your database. This will
make sure that no records, comments or keys exists for domains that you already
removed. This is not enabled by default, because we're not sure what the
consequences are from a performance point of view. If you do have feedback,
please let us know how this affects your setup.

Please note that it's not possible to apply this, before you cleaned up your
database, as the foreign keys do not exist.
*/

ALTER TABLE records ADD CONSTRAINT `records_domain_id_ibfk` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE comments ADD CONSTRAINT `comments_domain_id_ibfk` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE domainmetadata ADD CONSTRAINT `domainmetadata_domain_id_ibfk` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE cryptokeys ADD CONSTRAINT `cryptokeys_domain_id_ibfk` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;