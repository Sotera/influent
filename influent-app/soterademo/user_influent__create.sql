CREATE USER 'influent'@'%' IDENTIFIED BY 'influent';
GRANT ALL PRIVILEGES ON *.* TO 'influent'@'%' WITH GRANT OPTION;
CREATE USER 'influent'@'localhost' IDENTIFIED BY 'influent';
GRANT ALL PRIVILEGES ON *.* TO 'influent'@'localhost' WITH GRANT OPTION;
