-- File: 020_create_users.sql
-- Purpose: Create users and assign privileges for the Akvarakle database.

USE Akvarakle;

-- Create the reader user
CREATE USER IF NOT EXISTS 'akvarakle_reader'@'%' IDENTIFIED BY 't6XK494gA.FKyAt6.P';
GRANT SELECT ON Akvarakle.* TO 'akvarakle_reader'@'%';

-- Create the editor user
CREATE USER IF NOT EXISTS 'akvarakle_editor'@'%' IDENTIFIED BY 'Fj4aKPD.Tx.6KAYLKQ';
GRANT SELECT, INSERT, UPDATE, DELETE ON Akvarakle.* TO 'akvarakle_editor'@'%';

-- Apply changes
FLUSH PRIVILEGES;

-- Log the creation of users
SELECT 'Users akvarakle_reader and akvarakle_editor created with privileges.' AS status;

SELECT user, host FROM mysql.user;
