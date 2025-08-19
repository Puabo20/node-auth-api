nano /var/www/vhosts/puaboverse.online/backend/server.js
cd /var/www/vhosts/puaboverse.online/backend
# Install dependencies
npm install express bcrypt jsonwebtoken mysql2
# Start backend with PM2
pm2 start server.js --name creator-os-backend
# If you make changes to server.js, restart with:
pm2 restart creator-os-backend --update-env
# Check logs
pm2 logs creator-os-backend
cd /var/www/vhosts/puaboverse.online/backend
nano server.js
pm2 restart creator-os-backend --update-env
curl http://your-server-ip:3000/api/test-db
curl http://74.208.125.19:3000/api/test-db
pm2 stop creator-os-backend
pm2 delete creator-os-backend
pm2 start /var/www/vhosts/puaboverse.online/backend/server.js --name creator-os-backend
curl http://127.0.0.1:3000/api/test-db
node server.js
grep -R "app.get" .
grep -R "app.post" .
curl http://127.0.0.1:3000/api/test-db
nano /var/www/vhosts/puaboverse.online/backend/server.js
node server.js
cd /var/www/vhosts/puaboverse.online/backend
node server.js
nano /var/www/vhosts/puaboverse.online/backend/server.js
cd /var/www/vhosts/puaboverse.online/backend
nano server.js
grep -R "host" /var/www/vhosts/puaboverse.online/backend
nano /var/www/vhosts/puaboverse.online/backend/db.js
nano /var/www/vhosts/puaboverse.online/backend/server.js
node server.js
npm install -g pm2
pm2 start server.js --name puabo-backend
pm2 save
pm2 startup
cd /var/www/vhosts/puaboverse.online/backend
pm2 start server.js --name backend
pm2 save
pm2 status
pm2 list
sudo lsof -i :<PORT>
sudo lsof -i :3000
sudo kill -9 4600
pm2 start /var/www/vhosts/puaboverse.online/backend/server.js --name creator-os-backend
pm2 save
pm2 start /var/www/vhosts/puaboverse.online/backend/server.js --name creator-os-backend -f
pm2 stop 2
pm2 delete 2
pm2 save
pm2 list
curl http://127.0.0.1:3000/api/test-db
ls /var/www/vhosts/puaboverse.online/backend/
nano /var/www/vhosts/puaboverse.online/backend/db.js
const pool = require('./db');  // this imports your db.js connection
nano /var/www/vhosts/puaboverse.online/backend/server.js
cd /var/www/vhosts/puaboverse.online/backend/
nano db.js
cat db.js
nano /var/www/vhosts/puaboverse.online/backend/server.js
pm2 restart creator-os-backend
curl http://127.0.0.1:3000/api/test-db
nano /var/www/vhosts/puaboverse.online/backend/server.js
// server.js
const express = require('express');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const cors = require('cors');
const pool = require('./db'); // use your db.js
const app = express();
app.use(cors());
app.use(express.json());
// Test DB route
app.get('/api/test-db', async (req, res) => {
});
// Register
app.post('/api/register', async (req, res) => {
});
// Login
app.post('/api/login', async (req, res) => {
});
// Start server
const PORT = 3000;
app.listen(PORT, '0.0.0.0', () => console.log(`Server running on http://127.0.0.1:${PORT}`));
nano /var/www/vhosts/puaboverse.online/backend/server.js
pm2 restart creator-os-backend
curl http://127.0.0.1:3000/api/test-db
curl -X POST http://127.0.0.1:3000/api/register -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
curl -X POST http://127.0.0.1:3000/api/login -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
nano /var/www/vhosts/puaboverse.online/backend/server.js
pm2 restart creator-os-backend
curl http://127.0.0.1:3000/api/test-db
curl -X POST http://127.0.0.1:3000/api/register -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
curl -X POST http://127.0.0.1:3000/api/login -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
nano /var/www/vhosts/puaboverse.online/backend/server.js
pm2 restart creator-os-backend
curl http://127.0.0.1:3000/api/test-db
curl -X POST http://127.0.0.1:3000/api/register -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
curl -X POST http://127.0.0.1:3000/api/login -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
pm2 list
pm2 stop backend
pm2 delete backend
pm2 stop puabo-backend
pm2 delete puabo-backend
pm2 stop puaboverse-backend
pm2 delete puaboverse-backend
pm2 save
curl http://127.0.0.1:3000/api/test-dbcurl http://127.0.0.1:3000/api/test-db
curl http://127.0.0.1:3000/api/test-db
sudo mysql -u root -p
MariaDB [(none)]> -- Switch to the MariaDB system database
MariaDB [(none)]> USE mysql;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A
Database changed
MariaDB [mysql]>
MariaDB [mysql]> -- Create the database if it doesn't exist
MariaDB [mysql]> CREATE DATABASE IF NOT EXISTS creator_os;
Query OK, 0 rows affected, 1 warning (0.000 sec)

MariaDB [mysql]>
MariaDB [mysql]> -- Grant full privileges to root@localhost with your password
MariaDB [mysql]> GRANT ALL PRIVILEGES ON creator_os.* TO 'root'@'localhost' IDENTIFIED BY 'LnuWQ96Y';
Query OK, 0 rows affected (0.001 sec)

MariaDB [mysql]>
MariaDB [mysql]> -- Reload privileges to apply changes
MariaDB [mysql]> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.000 sec)

MariaDB [mysql]>
MariaDB [mysql]> -- Exit MariaDB
MariaDB [mysql]> EXIT;
Bye
root@ubuntu:/var/www/vhosts/puaboverse.online/backend#
nano /var/www/vhosts/puaboverse.online/backend/db.js
pm2 restart creator-os-backend
pm2 save
curl http://127.0.0.1:3000/api/test-db
pm2 save
nano /var/www/vhosts/puaboverse.online/backend/db.js
nano /var/www/vhosts/puaboverse.online/backend/server.js
Make your changes.
pm2 restart creator-os-backend
pm2 save
curl http://127.0.0.1:3000/api/test-db
curl -X POST http://127.0.0.1:3000/api/register -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
curl -X POST http://127.0.0.1:3000/api/login -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
DESCRIBE users;
sudo mariadb -u root -p
sudo mariadb
sudo systemctl stop mariadb
sudo mysqld_safe --skip-grant-tables &
mariadb -u root
sudo systemctl start mariadb
mariadb -u root -p
pm2 restart creator-os-backend
curl http://127.0.0.1:3000/api/test-db
curl -X POST http://127.0.0.1:3000/api/register -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
curl -X POST http://127.0.0.1:3000/api/login -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
pm2 logs creator-os-backend --lines 50
pm2 restart creator-os-backend --update-env
pm2 status
curl http://127.0.0.1:3000/api/test-db
curl http://YOUR.VPS.IP:3000/api/test-db
curl http://74.208.125.19:3000/api/test-db
curl http://YOUR_PUBLIC_IP:3000/api/test-db
curl -X POST http://YOUR_PUBLIC_IP:3000/api/register -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
curl -X POST http://YOUR_PUBLIC_IP:3000/api/login -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
curl http://74.208.125.19:3000/api/test-db
curl -X POST http://74.208.125.19:3000/api/register   -H "Content-Type: application/json"   -d '{"username":"testuser","password":"123456"}'
curl -X POST http://74.208.125.19:3000/api/login   -H "Content-Type: application/json"   -d '{"username":"testuser","password":"123456"}'
pm2 save
pm2 startup
pm2 save
pm2 status
systemctl status pm2-root
pm2 status
# Test DB
curl http://127.0.0.1:3000/api/test-db
# Register a user
curl -X POST http://127.0.0.1:3000/api/register   -H "Content-Type: application/json"   -d '{"username":"testuser","password":"123456"}'
# Login a user
curl -X POST http://127.0.0.1:3000/api/login   -H "Content-Type: application/json"   -d '{"username":"testuser","password":"123456"}'
pm2 save
curl http://YOUR_PUBLIC_IP:3000/api/test-db
curl http://74.208.125.19:3000/api/test-db
pm2 logs creator-os-backend
sudo mariadb -u root -p
ALTER TABLE users CHANGE password_hash password VARCHAR(255) NOT NULL;
pm2 restart creator-os-backend --update-env
sudo mariadb -u root -p
pm2 restart creator-os-backend --update-env
curl http://127.0.0.1:3000/api/test-db
curl -X POST http://127.0.0.1:3000/api/register   -H "Content-Type: application/json"   -d '{"username":"testuser","password":"123456"}'
curl -X POST http://127.0.0.1:3000/api/login   -H "Content-Type: application/json"   -d '{"username":"testuser","password":"123456"}'
sudo mariadb -u root -p
curl -X POST http://127.0.0.1:3000/api/register   -H "Content-Type: application/json"   -d '{"username":"testuser","password":"123456"}'
curl -X POST http://127.0.0.1:3000/api/login   -H "Content-Type: application/json"   -d '{"username":"testuser","password":"123456"}'
sudo mariadb -u root -p
nano /var/www/vhosts/puaboverse.online/backend/server.js
cd /var/www/vhosts/puaboverse.online/backend
npm install express mysql2 bcrypt body-parser
pm2 restart creator-os-backend --update-env
curl http://127.0.0.1:3000/api/test-db
curl -X POST http://127.0.0.1:3000/api/register   -H "Content-Type: application/json"   -d '{"username":"newuser","password":"123456"}'
curl -X POST http://127.0.0.1:3000/api/login   -H "Content-Type: application/json"   -d '{"username":"newuser","password":"123456"}'
curl http://127.0.0.1:3000/api/users
curl -X PUT http://127.0.0.1:3000/api/users/1   -H "Content-Type: application/json"   -d '{"email":"newemail@test.com"}'
curl -X DELETE http://127.0.0.1:3000/api/users/1
npm install express mysql2 bcrypt body-parser
node server.js
curl http://127.0.0.1:3000/api/test-db
curl -X POST http://127.0.0.1:3000/api/register -H "Content-Type: application/json" -d '{"username":"testuser","password":"123456"}'
sudo systemctl status mariadb
sudo systemctl stop mariadb
sudo systemctl status mariadb
sudo cp -r /var/lib/mysql /var/lib/mysql_backup
sudo mv /var/lib/mysql/ib_logfile0 /var/lib/mysql/ib_logfile0.bak
sudo mv /var/lib/mysql/ib_logfile1 /var/lib/mysql/ib_logfile1.bak
sudo systemctl start mariadb
sudo cat /var/log/mysql/error.log
sudo journalctl -xeu mariadb.service
sudo systemctl status mariadb
sudo systemctl stop mariadb
# One solid backup of your current DB dir
sudo tar -C /var/lib -czf /root/mysql_backup_$(date +%F_%H%M).tar.gz mysql
# Optional: also keep a fast copy you can peek into
sudo cp -a /var/lib/mysql /var/lib/mysql_copy_$(date +%F_%H%M)
# Remove InnoDB log/buffer files (they are recreated automatically)
sudo rm -f /var/lib/mysql/ib_logfile0 /var/lib/mysql/ib_logfile1 /var/lib/mysql/ib_buffer_pool 2>/dev/null || true
# Make sure ownership/permissions are correct
sudo chown -R mysql:mysql /var/lib/mysql
sudo find /var/lib/mysql -type d -exec chmod 750 {} \;
sudo find /var/lib/mysql -type f -exec chmod 640 {} \;
# Try to start
sudo systemctl start mariadb
sudo systemctl status mariadb --no-pager
# Open the server config
sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf
sudo systemctl restart mariadb
sudo systemctl status mariadb --no-pager
sudo systemctl stop mariadb
# Backup the entire data dir (big but safe)
sudo mkdir -p /root/mysql_backups
sudo tar czf /root/mysql_backups/var-lib-mysql-$(date +%F-%H%M%S).tgz /var/lib/mysql
# Also note free disk space (just in case)
df -h
# Ensure ownership & perms
sudo chown -R mysql:mysql /var/lib/mysql
sudo find /var/lib/mysql -type d -exec chmod 750 {} \;
# Make sure runtime dir exists
sudo install -d -m 755 -o mysql -g root /var/run/mysqld
# Remove stale PID/socket if present
sudo rm -f /var/run/mysqld/mysqld.pid /var/run/mysqld/mysqld.sock
# Create a temporary recovery config
sudo tee /etc/mysql/mariadb.conf.d/zz-innodb-recovery.cnf >/dev/null <<'EOF'
[mysqld]
# Force InnoDB recovery (start with 1; only go higher if it still won't start)
innodb_force_recovery = 1

# Keep it light while we recover
innodb_buffer_pool_size = 256M
innodb_log_file_size    = 64M

# Be explicit about data dir and sockets
datadir  = /var/lib/mysql
socket   = /run/mysqld/mysqld.sock
pid-file = /run/mysqld/mysqld.pid

# Log errors here for easy review
log_error = /var/log/mysql/error.log
EOF

# Try to start
sudo systemctl start mariadb
sudo systemctl status mariadb --no-pager -l
# Create a temporary recovery config
sudo tee /etc/mysql/mariadb.conf.d/zz-innodb-recovery.cnf >/dev/null <<'EOF'
[mysqld]
# Force InnoDB recovery (start with 1; only go higher if it still won't start)
innodb_force_recovery = 1

# Keep it light while we recover
innodb_buffer_pool_size = 256M
innodb_log_file_size    = 64M

# Be explicit about data dir and sockets
datadir  = /var/lib/mysql
socket   = /run/mysqld/mysqld.sock
pid-file = /run/mysqld/mysqld.pid

# Log errors here for easy review
log_error = /var/log/mysql/error.log
EOF

# Try to start
sudo systemctl start mariadb
sudo systemctl status mariadb --no-pager -l
sudo systemctl stop mariadb
df -h
sudo mkdir -p /root/mysql_backups
sudo tar czf /root/mysql_backups/mysql-$(date +%F-%H%M%S).tgz /var/lib/mysql
sudo chown -R mysql:mysql /var/lib/mysql
sudo find /var/lib/mysql -type d -exec chmod 750 {} \;
sudo install -d -m 755 -o mysql -g root /var/run/mysqld
sudo rm -f /var/run/mysqld/mysqld.pid /var/run/mysqld/mysqld.sock
cd /var/lib/mysql
sudo mv ibdata1 ibdata1.bak 2>/dev/null || true
sudo mv ib_logfile0 ib_logfile0.bak 2>/dev/null || true
sudo mv ib_logfile1 ib_logfile1.bak 2>/dev/null || true
sudo mv aria_log_control aria_log_control.bak 2>/dev/null || true
sudo mv aria_log.* aria_logs.bak/ 2>/dev/null || true
sudo systemctl stop mariadb
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql --skip-test-db
sudo chown -R mysql:mysql /var/lib/mysql
sudo systemctl start mariadb
sudo systemctl status mariadb --no-pager -l
sudo systemctl start mariadb
sudo systemctl status mariadb --no-pager -l
sudo systemctl start mariadb
sudo systemctl status mariadb --no-pager -l
sudo systemctl stop mariadb
sudo systemctl status mariadb --no-pager -l
# remove the temp innodb_force_recovery file if present
sudo rm -f /etc/mysql/mariadb.conf.d/zz-temp-recovery.cnf
sudo rm -f /etc/mysql/conf.d/zz-temp-recovery.cnf
sudo mkdir -p /var/log/mysql
sudo touch /var/log/mysql/error.log
sudo chown -R mysql:mysql /var/log/mysql
sudo chmod 750 /var/log/mysql
sudo chmod 640 /var/log/mysql/error.log
sudo install -d -m 755 -o mysql -g root /var/run/mysqld
sudo chown -R mysql:mysql /var/lib/mysql
sudo find /var/lib/mysql -type d -exec chmod 750 {} \;
sudo systemctl start mariadb
sudo systemctl status mariadb --no-pager -l
sudo journalctl -u mariadb -n 200 --no-pager
sudo tail -n 200 /var/log/mysql/error.log || true
sudo systemctl stop mariadb
sudo cp -a /var/lib/mysql /var/lib/mysql_backup_$(date +%F_%H%M)
sudo rm -f /etc/mysql/conf.d/zz-temp-recovery.cnf          /etc/mysql/mariadb.conf.d/zz-temp-recovery.cnf          /etc/mysql/conf.d/innodb_force_recovery.cnf 2>/dev/null || true
sudo grep -RIn "innodb_force_recovery" /etc/mysql /etc/my.cnf* /etc/mysql/ 2>/dev/null || echo "no innodb_force_recovery found"
sudo mkdir -p /var/log/mysql
sudo touch /var/log/mysql/error.log
sudo chown -R mysql:mysql /var/log/mysql
sudo chmod 750 /var/log/mysql
sudo chmod 640 /var/log/mysql/error.log
ls -la /var/log/mysql
sudo install -d -m 755 -o mysql -g root /var/run/mysqld
sudo chown -R mysql:mysql /var/lib/mysql
sudo find /var/lib/mysql -type d -exec chmod 750 {} \;
ls -la /var/lib/mysql | head -n 40
sudo systemctl start mariadb
sudo systemctl status mariadb --no-pager -l
sudo journalctl -u mariadb -n 200 --no-pager
sudo rm -f /etc/mysql/conf.d/zz-temp-recovery.cnf          /etc/mysql/mariadb.conf.d/zz-temp-recovery.cnf          /etc/mysql/conf.d/innodb_force_recovery.cnf 2>/dev/null || true
chown -R mysql:mysql /var/lib/mysql
mkdir -p /var/log/mysql
chown -R mysql:mysql /var/log/mysql
mkdir -p /var/run/mysqld
chown -R mysql:mysql /var/run/mysqld
chmod 750 /var/lib/mysql
chmod 750 /var/log/mysql
chmod 755 /var/run/mysqld
root@ubuntu:/var/lib/mysql# sudo rm -f /etc/mysql/conf.d/zz-temp-recovery.cnf          /etc/mysql/mariadb.conf.d/zz-temp-recovery.cnf          /etc/mysql/conf.d/innodb_force_recovery.cnf 2>/dev/null || true
root@ubuntu:/var/lib/mysql# chown -R mysql:mysql /var/lib/mysql
root@ubuntu:/var/lib/mysql# mkdir -p /var/log/mysql
chown -R mysql:mysql /var/log/mysql
root@ubuntu:/var/lib/mysql# mkdir -p /var/run/mysqld
chown -R mysql:mysql /var/run/mysqld
root@ubuntu:/var/lib/mysql# chmod 750 /var/lib/mysql
chmod 750 /var/log/mysql
chmod 755 /var/run/mysqld
root@ubuntu:/var/lib/mysql#
systemctl start mariadb
systemctl status mariadb
ls -l /var/log/mysql/
tail -40 /var/log/mysql/error.log
ls -l /var/lib/mysql/ibdata1
ls -l /var/lib/mysql/
stat /var/lib/mysql/ibdata1
df -h
systemctl stop mariadb
mv /var/lib/mysql/ibdata1.bak /var/lib/mysql/ibdata1
mv /var/lib/mysql/ib_logfile0.bak /var/lib/mysql/ib_logfile0
chown mysql:mysql /var/lib/mysql/ibdata1 /var/lib/mysql/ib_logfile0
chmod 660 /var/lib/mysql/ibdata1 /var/lib/mysql/ib_logfile0
echo -e "[mysqld]\ninnodb_force_recovery=1" > /etc/mysql/conf.d/innodb_force_recovery.cnf
systemctl start mariadb
systemctl status mariadb
tail -40 /var/log/mysql/error.log
ps aux | egrep 'mysql|mariadb'
systemctl stop mariadb
pkill -9 mysqld_safe
pkill -9 mysqld
pkill -9 mariadbd
ps aux | egrep 'mysql|mariadb'
ls -l /var/lib/mysql/*.pid
ls -l /var/lib/mysql/*.sock
ls -l /var/lib/mysql/*.lock
systemctl start mariadb
systemctl status mariadb
tail -40 /var/log/mysql/error.log
ls -lh /root/mariadb-dump.sql
head -20 /root/mariadb-dump.sql
tail -20 /root/mariadb-dump.sql
mysqldump --all-databases --single-transaction --routines --triggers --flush-logs --master-data=2 > /root/mariadb-dump.sql
root@ubuntu:~# mysqldump --all-databases --single-transaction --routines --triggers --flush-logs --master-data=2 > /root/mariadb-dump.sql
mysqldump: Got error: 1045: "Access denied for user 'root'@'localhost' (using password: NO)" when trying to connect
root@ubuntu:~#
mysqldump -u admin -p`cat /etc/psa/.psa.shadow` --all-databases --single-transaction --routines --triggers --flush-logs --master-data=2 > /root/mariadb-dump.sql
ls -lh /root/mariadb-dump.sql
head -20 /root/mariadb-dump.sql
tail -20 /root/mariadb-dump.sql
scp /root/mariadb-dump.sql youruser@yourserver:/path/to/backup/
scp /root/mariadb-dump.sql root@74.208.125.19:/desired/remote/path/
scp /root/mariadb-dump.sql root@74.208.125.19:/root/
systemctl restart mariadb
systemctl status mariadb
mysql -u admin -p`cat /etc/psa/.psa.shadow`
sudo systemctl status mariadb --no-pager -l
# Stop MariaDB
sudo systemctl stop mariadb
# Start MariaDB in safe mode
sudo mysqld_safe --skip-grant-tables --skip-networking &
# Give it a few seconds to start, then reset the root password
mariadb -e "FLUSH PRIVILEGES; ALTER USER 'root'@'localhost' IDENTIFIED BY 'LnuWQ96Y';"
# Stop safe mode (kill the background process)
sudo pkill mysqld_safe
sudo pkill mariadbd
# Start MariaDB normally
sudo systemctl start mariadb
# Check status
sudo systemctl status mariadb --no-pager -l
# Test login
mariadb -u root -p
grep -R "innodb_force_recovery" /etc/mysql/
sudo rm -f /etc/mysql/conf.d/innodb_force_recovery.cnf
sudo rm -f /etc/mysql/mariadb.conf.d/zz-innodb-recovery.cnf
sudo systemctl restart mariadb
systemctl status mariadb --no-pager -l
sudo mariadb
sudo systemctl stop mariadb
sudo mysqld_safe --skip-grant-tables --skip-networking &
sudo systemctl stop mariadb
nano /etc/mysql/my.cnf
nano /etc/mysql/mariadb.conf.d/50-server.cnf
grep -r innodb_force_recovery /etc/mysql/
sudo mysqld_safe --skip-grant-tables --skip-networking &
ps aux | grep mysqld
mysql -u root
sudo killall mysqld mysqld_safe
sudo systemctl start mariadb
sudo systemctl status mariadb
sudo journalctl -xeu mariadb | tail -40
sudo tail -40 /var/log/mysql/error.log
ps aux | grep -E 'mysqld|mariadbd'
sudo kill -9 274810 274811 274812 274970 274971
ps aux | grep -E 'mysqld|mariadbd'
sudo systemctl start mariadb
sudo systemctl status mariadb
mysql -u root -p
sudo mkdir -p /opt/puabo_os/{core_modules,microservices,tools,integrations}
sudo chown -R $USER:$USER /opt/puabo_os
cd /opt/puabo_os
git clone https://github.com/Puabo20/PUABO-OS-V200.git
cd PUABO-OS-V200
ls -al
cp .env.example .env
nano .env
nano .env.example
cp .env.example .env
nano .env
ls -al | grep .env
nano .env
cat /opt/puabo_os/PUABO-OS-V200/.env.example
nano .env
ls -a
nano .env
docker-compose restart
docker-compose up -d
sudo netstat -tulpn | grep :3000
sudo kill -9 <PID>
docker ps
docker stop <container_id>
docker-compose up -d
ERROR: for backend  Cannot start service backend: driver failed programming external connectivity on endpoint puabo-backend (a8287639a8c3ab6fd985ed0f761039723e8bce8803daccb846f85fefdda7deca): failed to bind port 0.0.0.0:3000/tcp: Error starting userland proxy: listen tcp4 0.0.0.0:3000: bind: address already in use
ERROR: Encountered errors while bringing up the project.
root@ubuntu:/opt/puabo_os/PUABO-OS-V200#
sudo netstat -tulpn | grep :3000
sudo apt update
sudo apt install net-tools
sudo netstat -tulpn | grep :3000
sudo kill -9 <PID>
docker-compose up -d
sudo lsof -i :3000
sudo kill -9 220150
docker-compose up -d
sudo lsof -i :3000
sudo kill -9 285421
sudo lsof -i :3000
sudo kill -9 285692
sudo lsof -i :3000
docker-compose up -d
sudo lsof -i :3000
sudo kill -9 285740
sudo lsof -i :3000
sudo kill -9 285901
sudo lsof -i :3000
sudo kill -9 285951
sudo lsof -i :3000
docker-compose up -d
pm2 list
pm2 stop creator-os-backend
pm2 stop all
sudo lsof -i :3000
docker-compose up -d
sudo lsof -i :80
sudo systemctl stop nginx
sudo systemctl disable nginx
sudo lsof -i :80
docker-compose up -d
ls -l /opt/puabo_os/PUABO-OS-V200/nginx.conf
rm -r /opt/puabo_os/PUABO-OS-V200/nginx.conf
touch /opt/puabo_os/PUABO-OS-V200/nginx.conf
cp /etc/nginx/nginx.conf /opt/puabo_os/PUABO-OS-V200/nginx.conf
ls -l /opt/puabo_os/PUABO-OS-V200/nginx.conf
docker-compose up -d
docker ps
docker logs puabo-nginx
sed -i 's/user www-data;/user nginx;/' /opt/puabo_os/PUABO-OS-V200/nginx.conf
docker-compose restart nginx
docker ps
docker-compose logs backend
pathToRegexp('/api/:/something')
grep -rn "pathToRegexp" .
grep -rn "/:" .
grep -rn "/api/" .
grep -rn "router." .
grep -rn "app." .
const base = process.env.API_BASE || "/api";
app.get(`${base}/:/something`, handler); // This would be wrong if base is empty
grep -rn "/:/" .
grep -rn "${base}/:" .
grep -r ':/[^a-zA-Z]' .
grep -rn '\${' ./backend
your-backend-start-command | tee error.log
npm start | tee error.log
node src/index.js | tee error.log
ls
ls backend/src
node backend/src/index.ts | tee error.log
npm run dev | tee error.log
npm install -g pnpm
pnpm run dev | tee error.log
pnpm install
pnpm run dev | tee error.log
sudo apt update && sudo apt upgrade -y
sudo apt install fail2ban ufw curl wget git vim unzip -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable
sudo systemctl enable fail2ban --now
sudo mysql_secure_installation
SELECT User, Host FROM mysql.user;
mysql -u root -p
grep -rn "router." backend/src
cd /opt/puabo_os/PUABO-OS-V200
grep -rn "router." backend/src
backend/src/modules/profile/routes.ts:41:router.post('/avatar', (req, res) => {
backend/src/modules/profile/routes.ts:53:router.get('/settings', (req, res) => {
backend/src/modules/profile/routes.ts:69:router.put('/settings', (req, res) => {
backend/src/modules/profile/routes.ts:79:export default router;
backend/src/modules/admin/routes.ts:3:const router: express.Router = express.Router();
backend/src/modules/admin/routes.ts:6:router.get('/users', (req, res) => {
backend/src/modules/admin/routes.ts:49:router.put('/user/:id/status', (req, res) => {
backend/src/modules/admin/routes.ts:65:router.get('/reports', (req, res) => {
backend/src/modules/admin/routes.ts:101:router.get('/logs', (req, res) => {
backend/src/modules/admin/routes.ts:146:router.get('/analytics', (req, res) => {
backend/src/modules/admin/routes.ts:174:router.post('/system/backup', (req, res) => {
backend/src/modules/admin/routes.ts:187:router.get('/system/health', (req, res) => {
backend/src/modules/admin/routes.ts:211:export default router;
backend/src/modules/blac/routes.ts:3:const router: express.Router = express.Router();
backend/src/modules/blac/routes.ts:6:router.get('/applications', (req, res) => {
backend/src/modules/blac/routes.ts:37:router.post('/apply', (req, res) => {
backend/src/modules/blac/routes.ts:59:router.get('/application/:id', (req, res) => {
backend/src/modules/blac/routes.ts:92:router.post('/upload-document', (req, res) => {
backend/src/modules/blac/routes.ts:113:router.get('/loan-types', (req, res) => {
backend/src/modules/blac/routes.ts:154:export default router;
backend/src/modules/tvradio/routes.ts:3:const router: express.Router = express.Router();
backend/src/modules/tvradio/routes.ts:6:router.get('/programs', (req, res) => {
backend/src/modules/tvradio/routes.ts:44:router.post('/program', (req, res) => {
backend/src/modules/tvradio/routes.ts:65:router.put('/program/:id', (req, res) => {
backend/src/modules/tvradio/routes.ts:83:router.post('/program/:id/start', (req, res) => {
backend/src/modules/tvradio/routes.ts:99:router.post('/program/:id/stop', (req, res) => {
backend/src/modules/tvradio/routes.ts:114:router.get('/schedule', (req, res) => {
backend/src/modules/tvradio/routes.ts:150:router.get('/analytics/:programId', (req, res) => {
backend/src/modules/tvradio/routes.ts:184:export default router;
root@ubuntu:/opt/puabo_os/PUABO-OS-V200#
ls
nano backend/src/modules/admin/routes.ts
grep -rn "router.get('/" backend/src | grep ":"
grep -rn "router.post('/" backend/src | grep ":"
grep -rn "router.put('/" backend/src | grep ":"
grep -rn "router.delete('/" backend/src | grep ":"
app.use('/api/:', someRouter) // WRONG!
nano backend/src/index.ts
grep -rn "path-to-regexp" backend/src
ls backend/src
nano backend/src/index.ts
npm start
npm run dev
nano backend/src/modules/auth/routes.ts
nano backend/src/modules/profile/routes.ts
nano backend/src/modules/streaming/routes.ts
grep -rn "'/:.*'" backend/src/modules
grep -rn '"/:.*"' backend/src/modules
cd /opt/puabo_os/PUABO-OS-V200
grep -rn '"/:.*"' backend/src/modules
grep -rn "'/:.*'" backend/src/modules
router.use('/' + someVar, ...)
router.use(`/${someVar}`, ...)
grep -rn "router.use('/" backend/src/modules
root@ubuntu:/opt/puabo_os/PUABO-OS-V200# grep -rn "router.use('/" backend/src/modules
root@ubuntu:/opt/puabo_os/PUABO-OS-V200#
cd /opt/puabo_os/PUABO-OS-V200
grep -rn "router.use('/" backend/src/modules
grep -n "app.use" backend/src/index.ts
grep -rn "router.use" backend/src/modules/
nano backend/src/modules/auth/routes.ts
grep -n "app.use" backend/src/index.ts
grep -rn "router.use" backend/src/modules/cd /opt/puabo_os/PUABO-OS-V200
curl -X POST http://localhost:3000/api/auth/register   -H "Content-Type: application/json"   -d '{"username": "testuser", "email": "test@example.com", "password": "testpass"}'
npm run start
npm run dev
nano backend/src/modules/auth/routes.ts
nano /opt/puabo_os/PUABO-OS-V200/backend/src/modules/auth/routes.ts
npm run dev
Expanded Security Maintenance for Applications is not enabled.
0 updates can be applied immediately.
1 additional security update can be applied with ESM Apps.
Learn more about enabling ESM Apps service at https://ubuntu.com/esm
You have mail.
Last login: Fri Aug 15 22:54:25 2025 from 71.83.114.47
This server is powered by Plesk.
Run the 'plesk login' command and log in by browsing either of the links received in the output.
Use the 'plesk' command to manage the server. Run 'plesk help' for more info.
root@ubuntu:~# nano /opt/puabo_os/PUABO-OS-V200/backend/src/modules/auth/routes.ts
root@ubuntu:~# npm run dev
npm error code ENOENT
npm error syscall open
npm error path /root/package.json
npm error errno -2
npm error enoent Could not read package.json: Error: ENOENT: no such file or directory, open '/root/package.json'
npm error enoent This is related to npm not being able to find a file.
npm error enoent
npm error A complete log of this run can be found in: /root/.npm/_logs/2025-08-15T23_01_20_468Z-debug-0.log
root@ubuntu:~#
cd /opt/puabo_os/PUABO-OS-V200
npm run dev
nano /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
cd /opt/puabo_os/PUABO-OS-V200/backend/src/modules/
ls */routes.*
grep -n "router.*('/:" */routes.*
cd /opt/puabo_os/PUABO-OS-V200
npm run dev
mkdir -p backend/src/modules/auth
nano backend/src/modules/auth/routes.ts
npm run dev
cd /opt/puabo_os/PUABO-OS-V200
npm run dev
nano /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
cd /opt/puabo_os/PUABO-OS-V200/backend/src
grep -n "app.use" index.ts
grep -n "app.get" index.ts
grep -n "app.post" index.ts
and
grep -n "/:" index.ts
nano /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
nano /opt/puabo_os/PUABO-OS-V200/backend/src/modules/auth/routes.ts
grep "import " index.ts
npm error enoent This is related to npm not being able to find a file.nano /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
q
nano /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
npm run dev
nano /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
npm run dev
pnpm run dev
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
grep -n "/:'" */routes.*
grep -n '/:"' */routes.*
grep -n "router." */routes.*
cd /opt/puabo_os/PUABO-OS-V200/backend/src/modules
grep -n "/:'" */routes.*
grep -n '/:"' */routes.*
grep -n "router." */routes.*
cd /opt/puabo_os/PUABO-OS-V200
npm run dev
rm -rf node_modules/.pnpm/esbuild*
npm run dev
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
nano /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
npm run dev
pnpm run dev
You must fix the following issue in ONE PASS without looping, guessing, or leaving it unresolved. 
We are working in a TypeScript project with `index.ts` as the entry point. The recurring error happens because of one of these top reasons:  
1. Accidental typo, stray word, or missing semicolon near the top of `index.ts`.  
2. The editor didn’t save correctly or we’re editing the wrong file.  
3. A hidden character or copy-paste mistake.  
4. Another file (config or .ts) is being loaded and has the same syntax error.  
5. The error is coming from a cached/compiled file, not the edit we made.  
Your job:  
- Inspect `index.ts` (and any immediately linked configs/ts files).  
- Locate the exact root cause in the FIRST attempt.  
- Remove hidden/stray characters, fix typos, missing semicolons, or copy-paste issues.  
- Ensure the code is syntactically valid and TypeScript compiles without errors.  
- Clear or reset any stale cache/compiled output if necessary.  
- Return the corrected and FINAL working code in full.  
Important: Do not explain in circles. Do not repeat steps. Do not guess. Just deliver the fixed, final code.  
Once done, say:  
"✅ Fix complete. Ready to pick up from here tomorrow."  
npm run dev
pnpm run dev
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
nano /opt/puabo_os/PUABO-OS-V200/backend/src/modules/auth/routes.ts
npm run dev
/opt/puabo_os/PUABO-OS-V200/backend
cd /opt/puabo_os/PUABO-OS-V200/backend
ls
npm run dev
nano /opt/puabo_os/PUABO-OS-V200/backend/.env
npm run dev
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
cd /opt/puabo_os/PUABO-OS-V200/backend
nano .env
curl -X POST http://localhost:5000/auth/login -d '{"username":"test","password":"test"}' -H "Content-Type: application/json"
ls
nano src/index.ts
npm run dev
nano /opt/puabo_os/PUABO-OS-V200/backend/.env
curl -X POST http://localhost:5000/auth/login -d '{"username":"test","password":"test"}' -H "Content-Type: application/json"
LnuWQ96Y
curl http://localhost:5000/profile/me
curl -X POST http://localhost:5000/auth/register -d '{"username":"newuser","password":"pass"}' -H "Content-Type: application/json"
nano /opt/puabo_os/PUABO-OS-V200/backend/src/modules/auth/routes.ts
npm run dev
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
nano /opt/puabo_os/PUABO-OS-V200/backend/.env
npm run dev
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
curl http://localhost:5000
sudo systemctl status nginx
curl -X POST http://localhost:5000/auth/register -d '{"username":"newuser","password":"pass"}' -H "Content-Type: application/json"
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
nano /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
rm -rf node_modules/.pnpm/esbuild*
npm run dev
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
curl -X POST http://localhost:5000/auth/register -d '{"username":"newuser","password":"pass"}' -H "Content-Type: application/json"
curl -X POST http://localhost:5000/auth/login -d '{"username":"testuser","password":"pass"}' -H "Content-Type: application/json"
curl ifconfig.me
hostname -I
dig +short puaboverse.online
docker-compose ps
cd /opt/puabo-os
docker-compose ps
ls -l docker-compose.yml
ls /opt
ls ~
cd ~/puabo-os-2025
ls
docker-compose ps
chmod +x deploy.sh setup-ssl.sh
./deploy.sh
ls -al .env*
nano .env.production
chmod +x setup-env-production.sh
nano setup-env-production.sh
chmod +x setup-env-production.sh
./setup-env-production.sh
nano .env.production
ps aux | grep node
app.listen(3000)
server.listen(process.env.PORT || 3000)
nano /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
curl http://localhost:3000
grep -i listen /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
cd /opt/puabo_os/PUABO-OS-V200/backend
node src/index.ts
npx tsx src/index.ts
nano /opt/puabo_os/PUABO-OS-V200/backend/src/index.ts
npx tsx src/index.ts
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
curl -X POST http://localhost:5000/auth/register -d '{"username":"newuser","password":"pass"}' -H "Content-Type: application/json"
curl -X POST http://localhost:5000/auth/login -d '{"username":"testuser","password":"pass"}' -H "Content-Type: application/json"
npm run dev
/opt/puabo_os/PUABO-OS-V200/backend
cd /opt/puabo_os/PUABO-OS-V200/backend
src/modules/auth/routes.ts
cd src/modules/auth
ls
nano routes.ts
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
sudo systemctl start nginx
sudo nginx -t
grep -R "server_name puaboverse.online" /etc/nginx/sites-available/
grep -R "server_name puaboverse.online" /etc/nginx/sites-enabled/
ls -l /etc/nginx/sites-enabled/
sudo rm /etc/nginx/sites-enabled/puaboverse
sudo nginx -t
sudo systemctl restart nginx
sudo nginx -t
sudo systemctl status nginx.service
sudo netstat -tulpn | grep :80
sudo lsof -i :80
sudo docker ps
sudo docker stop <container_id>
sudo docker stop 3a2d13ed8084
sudo systemctl start nginx
sudo systemctl status nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx
curl http://localhost
curl -I http://localhost
sudo netstat -tulpn | grep :443
sudo ufw status
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw reload
sudo ufw status
sudo mkdir -p /var/www/puaboverse.online
sudo find / -name index.html
sudo nano /etc/nginx/sites-available/puaboverse.online
sudo ln -sf /etc/nginx/sites-available/puaboverse.online /etc/nginx/sites-enabled/
sudo rm /etc/nginx/sites-enabled/default
sudo nginx -t
sudo nano /etc/nginx/sites-available/puaboverse.online
sudo nginx -t
ls /var/www/vhosts/puaboverse.online/httpdocs/
ls /var/www/vhosts/puaboverse.online/httpdocs/backend
ls /var/www/vhosts/puaboverse.online/httpdocs/backend/* 2>/dev/null
ls /var/www/vhosts/puaboverse.online/httpdocs/backend/app/models
ls /var/www/vhosts/puaboverse.online/httpdocs/backend/app/api
head -40 /var/www/vhosts/puaboverse.online/httpdocs/backend/app/models/schemas.py
ls /var/www/vhosts/puaboverse.online/httpdocs/backend/app/api
head -40 /var/www/vhosts/puaboverse.online/httpdocs/backend/app/api/auth.py
nano /var/www/vhosts/puaboverse.online/httpdocs/backend/app/api/auth.py
cd /var/www/vhosts/puaboverse.online/httpdocs/backend/app
uvicorn main:app --host 0.0.0.0 --port 8000
pip install uvicorn
apt update
apt install python3-pip
pip3 install uvicorn
apt update
apt install python3-uvicorn
cd /var/www/vhosts/puaboverse.online/httpdocs/backend/app
ls
uvicorn main:app --host 0.0.0.0 --port 8000
python3 -m uvicorn main:app --host 0.0.0.0 --port 8000
python3 -m venv venv
source venv/bin/activate
pip install fastapi uvicorn
uvicorn main:app --host 0.0.0.0 --port 8000
sudo apt update
sudo apt install python3-venv
python3 -m venv venv
source venv/bin/activate
pip install fastapi uvicorn
uvicorn main:app --host 0.0.0.0 --port 8000
sudo apt update
sudo apt install python3-venv
python3 -m venv venv
source venv/bin/activate
pip install fastapi uvicorn
uvicorn main:app --host 0.0.0.0 --port 8000
cd .. && uvicorn app.main:app --host 0.0.0.0 --port 8000
pip install python-multipart
uvicorn main:app --host 0.0.0.0 --port 8000
cd app && uvicorn main:app --host 0.0.0.0 --port 8000
cd ..
uvicorn app.main:app --host 0.0.0.0 --port 8000
sudo ufw status
sudo ufw allow 8000
sudo ufw allow 8000/tcp
uvicorn app.main:app --host 0.0.0.0 --port 8000
sudo ufw allow 8000
curl http://localhost:8000
uvicorn app.main:app --host 0.0.0.0 --port 8000
/opt/puabo_os/PUABO-OS-V200/backend
cd /opt/puabo_os/PUABO-OS-V200/backend
npm run dev
uvicorn app.main:app --host 0.0.0.0 --port 8000
source /var/www/vhosts/puaboverse.online/httpdocs/backend/app/venv/bin/activate
cd /var/www/vhosts/puaboverse.online/httpdocs/backend
uvicorn app.main:app --host 0.0.0.0 --port 8000
sudo apt update
sudo apt install uvicorn
sudo -u postgres psql
mysql -u root -p
pip install passlib[bcrypt]
python3 -c "from passlib.hash import bcrypt; print(bcrypt.hash('Momoney2025$$'))"
pip install passlib[bcrypt]
python3 -c "from passlib.hash import bcrypt; print(bcrypt.hash('Momoney2025$$'))"
python3 -m venv ~/pyenv
source ~/pyenv/bin/activate
pip install passlib[bcrypt]
python3 -c "from passlib.hash import bcrypt; print(bcrypt.hash('Momoney2025$$'))"
pip install passlib[bcrypt]
python3 -c "from passlib.hash import bcrypt; print(bcrypt.hash('Momoney2025$$'))"
nano /path/to/your/app/auth.py
cd /path/to/your/fastapi/app
mkdir -p ~/puabo_os
cd ~/puabo_os
nano auth.py
nano main.py
pip install fastapi uvicorn sqlalchemy passlib[bcrypt]
uvicorn main:app --host 0.0.0.0 --port 8000
nano /root/puabo_os/models.py
nano /root/puabo_os/database.py
pip install pymysql
cd /root/puabo_os
cat > models.py <<EOF
from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class User(Base):
    __tablename__ = "users"
    id = Column(Integer, primary_key=True, index=True)
    username = Column(String(50), unique=True, nullable=False)
    password = Column(String(255), nullable=False)
    email = Column(String(100), nullable=True)
    role = Column(String(50), nullable=True)
EOF

cat > database.py <<EOF
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

DATABASE_URL = "mysql+pymysql://root:your_db_LnuWQ96Y@localhost/creator_os"

engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
EOF

pip install fastapi uvicorn sqlalchemy passlib[bcrypt] pymysql
uvicorn main:app --host 0.0.0.0 --port 8000
curl -X POST "http://localhost:8000/login"   -H "Content-Type: application/json"   -d '{"email": "robert.white@puaboverse.online", "password": "Momoney2025$$"}'
uvicorn main:app --host 0.0.0.0 --port 8000
nano main.py
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
curl -X POST "http://your-server-ip:8000/login"   -H "Content-Type: application/json"   -d '{"email": "robert.white@puaboverse.online", "password": "Momoney2025$$"}'
hostname -I
curl -X POST "http://127.0.0.1:8000/login"   -H "Content-Type: application/json"   -d '{"email": "robert.white@puaboverse.online", "password": "Momoney2025$$"}'
uvicorn main:app --host 0.0.0.0 --port 8000 --reload --debug
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
lsof -i:8000
kill -9 12345
kill -9 56789
lsof -i:8000
kill -9 568636
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
curl -X POST "http://127.0.0.1:8000/login"   -H "Content-Type: application/json"   -d '{"email": "robert.white@puaboverse.online", "password": "Momoney2025$$"}'
ls main.py
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
pip install fastapi uvicorn
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
scp -r "C:\Users\wecon\Downloads\PUABO OS Official GitPush Files\mobile" root@74.208.125.19:/root/
pip3 install fastapi uvicorn
python3 -c "import fastapi; print(fastapi.__version__)"
pip install fastapi uvicorn
python3 -c "import fastapi; print(fastapi.__version__)"
python3 -m venv venv
source venv/bin/activate
pip install fastapi uvicorn
python3 -c "import fastapi; print(fastapi.__version__)"
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
from fastapi import FastAPI
app = FastAPI()
@app.get("/")
def read_root():
nano main.py
curl http://127.0.0.1:8000/
cd frontend && npm install && npm audit fix && npm update
ls
root@ubuntu:~# ls
': man:mariadbd(8)'                    pm2_full_logs.txtjournalctl
'erver.js .env'                        server
root@ubuntu:~#
sudo apt update && sudo apt install nodejs npm -y
sudo apt-get remove --purge nodejs npm
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install --lts
nvm use --lts
node -v
npm -v
npm install
scp -r "C:\Users\wecon\Downloads\PUABO OS Official GitPush Files\mobile" root@your-vps-ip:/root/
scp -r "C:\Users\wecon\Downloads\PUABO OS Official GitPush Files\mobile" root@74.208.125.19
scp -r "C:\Users\wecon\Downloads\PUABO OS Official GitPush Files\mobile" root@74.208.125.19:/root/
cd /root/mobile
npm install
npm start  
expo start --tunnel
npx expo start --tunnel
mkdir -p puabo-os-2025/services
cd puabo-os-2025/services
for m in "v-screen-pro" "v-prompter-pro" "v-caster-pro" "puabo-tv" "ott-streaming-hub" "creator-wallet" "cloudcore" "musicchain" "ai-studio" "analytics-engine" "payment-gateway" "marketplace" "chat-messaging" "community-hub" "admin-dashboard" "api-gateway"; do   mkdir $m; done
cd puabo-os-2025/services/v-screen-pro
npm init -y
npm install typescript ts-node express
npx tsc --init
echo 'FROM node:18\nWORKDIR /app\nCOPY . .\nRUN npm install\nCMD ["npm", "start"]' > Dockerfile
echo 'console.log("V-Screen Pro Service running")' > index.ts
chmod +x init_puabo_services.sh
./init_puabo_services.sh
chmod +x init_puabo_services.sh
./init_puabo_services.sh
nano init_puabo_services.sh
npm install
for d in */; do (cd "$d" && npm install); done
cd v-screen-pro
npm start
# In another terminal:
curl http://localhost:4001/health
npm install
npm run start
npm install -g ts-node typescript
curl http://localhost:4001/health
npm run start
cat package.json
less package.json
mkdir my-new-service
cd my-new-service
npm init -y
npm install --save-dev typescript ts-node
npm install express
npx tsc --init
nano index.ts
npm run start
npx ts-node index.ts
npm run start
nano package.json
npm run start
npx ts-node index.ts
nano index.ts
npm run start
npm install --save-dev @types/express
nano package.json
npm install
npm run start
nano package.json
npm install
echo '{
  "name": "my-new-service",
  "version": "1.0.0",
  "description": "",
  "main": "index.ts",
  "scripts": {
    "start": "ts-node index.ts",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "ts-node": "^10.9.2",
    "typescript": "^5.9.2",
    "@types/express": "^4.17.15"
  },
  "dependencies": {
    "express": "^4.18.2"
  }
}' > package.json
npm install
nano tsconfig.json
npx ts-node index.ts
npm start
nano index.ts
npm start
npx ts-node index.ts
index.ts
nano index.ts
nano ts.config
nano package.json
rm -rf dist
npm install
npx ts-node index.ts
npm start
nano index.ts
npm start
ls puabo-os-2025
ls puabo_os
ls mobile
ls server
ls puabo-os-2025/server
ls puabo_os/server
ls puabo-os-2025/src
ls puabo_os/src
ls server
ls *.py
curl http://localhost:4001/health
nano index.ts
npx ts-node index.ts
npm start
cd ~/puabo-os-2025/services/v-prompter-pro/
npm start
cd ~/puabo-os-2025/services/v-prompter-pro/
npx ts-node index.ts
nano index.ts
npm install express @types/express ts-node typescript
npx ts-node index.ts
mkdir -p ~/puabo-os-2025/services/v-caster-pro
cd ~/puabo-os-2025/services/v-caster-pro
npm install express @types/express ts-node typescript
npx ts-node index.ts
nano index.ts
npm install express @types/express ts-node typescript
npx ts-node index.ts
cd ~/puabo-os-2025/services/ott-streaming-hub
npm init -y
npm install express
npm install --save-dev @types/express
npm install --save-dev ts-node typescript
nano index.ts
npx tsc --init
npm install express
npm install --save-dev @types/express ts-node typescript
nano index.ts
npx ts-node index.ts
kdir -p ~/puabo-os-2025/services/ott-streaming-hub
cd ~/puabo-os-2025/services/ott-streaming-hub
npm init -y
nano package.json
npx tsc --init
nano ts.config
nano index.ts
npm install express
npm install --save-dev @types/express ts-node typescript
npx ts-node index.ts
nano package.json
sed -i '0,/version/{/version/ a\  "type": "module",' package.json
(Get-Content package.json) -replace '"version": "1.0.0",', '"version": "1.0.0",' + "`n  \"type\": \"module\"," | Set-Content package.json
sed -i '/"version": "1.0.0",/a\  "type": "module",' package.json
(Get-Content package.json) -replace '"version": "1.0.0",', '"version": "1.0.0",' + "`n  \"type\": \"module\"," | Set-Content package.json
nano index.ts
npm install express
npm install --save-dev @types/express ts-node typescript
npx ts-node index.ts
nano package.json
nano tsconfig.json
nano index.ts
nano package.json
nano tsconfig.json
nano index.ts
dir index.ts
nano index.ts
move -Force package-lock.json puabo-os-2025\services\creator-wallet\package-lock.json
nano index.ts
find . | sort
nano users.jason
$folder = ".\yourfolder"; if (!(Test-Path $folder)) { New-Item -ItemType Directory -Path $folder }; $usersFile = Join-Path $folder "users.json"; if (Test-Path $usersFile) { Remove-Item $usersFile }; $users = @([PSCustomObject]@{email="robert.white@puaboverse.online";password="TempPassword123!";active=$true;roles=@("admin")}); $users | ConvertTo-Json -Depth 5 | Set-Content $usersFile; Get-Content $usersFile
mkdir -p yourfolder
cat > yourfolder/users.json <<EOF
[
  {
    "email": "robert.white@puaboverse.online",
    "password": "TempPassword123!",
    "active": true,
    "roles": ["admin"]
  }
]
EOF

cat yourfolder/users.json
cd /path/to/backend
npm start
ls ~
ls /var/www
ls /opt
ls ~/backend
ls ~/server
ls ~/puaboverse-backend
ls ~/puabo-os-2025
ls ~/puabo_os
cat ~/backend/package.json
cat ~/package.json
nano ~/package.json
cd ~
npm install
npm start
nano ~/tsconfig.json
ls ~/index.ts
nano ~/tsconfig.json
npm start
nano ~/tsconfig.json
cat ~/tsconfig.json
nano ~/tsconfig.json
cat ~/tsconfig.json
nano ~/tsconfig.json
npm start
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"username":"yourusername","password":"yourpassword"}'curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
curl -X POST http://localhost:4006/login \
q
curl http://localhost:4006/
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
sed -i '/app.post("\/login"/a\  console.log("LOGIN DEBUG:", JSON.stringify(req.body));' index.ts
npx ts-node index.ts
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
(Get-Content .\index.ts) -replace '(app\.post\(\s*"\s*/login"\s*,\s*\([^\)]*\)\s*=>\s*\{)', '$1`n    console.log("LOGIN DEBUG:", JSON.stringify(req.body));' | Set-Content .\index.ts
sed -i '/app.post("\/login"/a\  console.log("LOGIN DEBUG:", JSON.stringify(req.body));' index.ts
npx ts-node index.ts
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
curl -X POST http://<your-server-ip>:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
curl -X POST http://74.208.125.19:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
npx ts-node index.ts
node index.js
curl -X POST http://74.208.125.19:4006/login -H "Content-Type: application/json" -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
console.log("LOGIN DEBUG:", req.body);
nano index.ts
npx ts-node index.ts
nano index.ts
curl -X POST http://74.208.125.19:4006/force-login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","adminKey":"SuperSecretKey2025"}'
nano index.ts
npx ts-node index.ts
node index.ts
curl -X POST http://74.208.125.19:4006/login -H "Content-Type: application/json" -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
curl -X POST http://74.208.125.19:4006/force-login -H "Content-Type: application/json" -d '{"email":"robert.white@puaboverse.online","adminKey":"SuperSecretKey2025"}'
curl -X POST http://74.208.125.19:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
ss -tulnp | grep 4006
sudo ufw status
sudo ufw allow 4006
sudo ufw allow 4006/tcp
sudo ufw reload
sudo ufw status
curl -X POST http://74.208.125.19:4006/force-login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","adminKey":"SuperSecretKey2025"}'
nano index.ts
npm install express
npx ts-node index.ts
Invoke-RestMethod -Method Post -Uri 'http://74.208.125.19:4006/force-login' -ContentType 'application/json' -Body '{"email":"robert.white@puaboverse.online","adminKey":"SuperSecretKey2025"}'
ss -tulnp | grep 4006
curl -X POST http://127.0.0.1:4006/force-login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","adminKey":"SuperSecretKey2025"}'
curl -X POST http://127.0.0.1:4006/force-login -H "Content-Type: application/json" -d '{"email":"robert.white@puaboverse.online","adminKey":"SuperSecretKey2025"}'
cat > index.ts <<EOF
import express from "express";
const app = express();
app.use(express.json());
app.post("/login", (req, res) => {
  const { email, username, password } = req.body;
  if (
    (email === "robert.white@puaboverse.online" ||
      username === "robert.white@puaboverse.online") &&
    password === "Momoney2025$$"
  ) {
    return res.json({ success: true, message: "Login successful!" });
  } else {
    return res.status(401).json({ success: false, message: "Invalid credentials" });
  }
});
app.post("/force-login", (req, res) => {
  res.json({
    success: req.body.adminKey === "SuperSecretKey2025",
    message: req.body.adminKey === "SuperSecretKey2025" ? "Force login successful!" : "Invalid adminKey",
    email: req.body.email
  });
});
app.get("/", (req, res) => {
  res.send("Creator Wallet service is running!");
});
app.listen(4006, '0.0.0.0', () => {
  console.log("Creator Wallet service running on port 4006");
});
EOF

pkill node
npx ts-node index.ts
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"username":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
nano index.ts
npm start
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"username":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
nano index.ts
npm start
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"username":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
nano index.ts
npm start
npx ts-node index.ts
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
nano index.ts
nono index.ts
import express from "express"; express().use(express.json()).post("/login",(req,res)=>{const{email,username,password}=req.body;if((email==="robert.white@puaboverse.online"||username==="robert.white@puaboverse.online")&&password==="Momoney2025$$"){res.json({success:true,message:"Login successful!"});}else{res.status(401).json({success:false,message:"Invalid credentials"});}}).get("/",(req,res)=>res.send("Creator Wallet service is running!")).listen(4006,()=>console.log("Creator Wallet service running on port 4006"));
npx ts-node index.ts
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
npm install express
nano index.ts
npx ts-node index.ts
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
nano index.ts
npx ts-node index.ts
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
ls
cat package.json | head -20
nano index.ts
ps aux | grep node
netstat -tulpn | grep 4006
curl -X POST http://[::1]:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
curl -X POST http://127.0.0.1:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
curl -X POST http://localhost:4006/login   -H "Content-Type: application/json"   -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
ps aux | grep node
kill -9 593019 674843 674854 674855
ps aux | grep node
npx ts-node index.ts
curl http://localhost:4006/
curl -X POST http://localhost:4006/login -H "Content-Type: application/json" -d '{"email":"robert.white@puaboverse.online","password":"Momoney2025$$"}'
curl http://localhost:4006/
System information as of Mon Aug 18 03:31:32 UTC 2025
Expanded Security Maintenance for Applications is not enabled.
2 updates can be applied immediately.
To see these additional updates run: apt list --upgradable
1 additional security update can be applied with ESM Apps.
Learn more about enabling ESM Apps service at https://ubuntu.com/esm
You have mail.
Last login: Mon Aug 18 03:05:58 2025 from 71.83.114.47
This server is powered by Plesk.
Run the 'plesk login' command and log in by browsing either of the links received in the output.
Use the 'plesk' command to manage the server. Run 'plesk help' for more info.
root@ubuntu:~#
passwd
chown -R puaboverse_user:psaserv /var/www/vhosts/puaboverse.online/backend
su - puaboverse_user
Creator Wallet service running on port 4006
curl ifconfig.me
Invoke-RestMethod -Method Post -Uri 'http://74.208.125.19:4006/login' -ContentType 'application/json' -Body '{"email":"robert.white@puaboverse.online", "password":"Momoney2025$$"}'
sudo netstat -tuln | grep 4006
nano index.ts
cd /path/to/your/project
ls ~
nano ~/index.ts
npx ts-node index.ts
sudo netstat -tuln | grep 4006
nano index.ts
npx ts-node index.ts
sudo netstat -tuln | grep 4006
cat /etc/os-release
ufw allow 3000
ufw reload
node server.js
pm2 restart server.js
cd /var/www/vhosts/puaboverse.online/backend
node server.js
sed -i "s/app\.listen(3000.*)/app.listen(3000, '0.0.0.0', () => { console.log('Backend running on port 3000') });/" server.js && cd /var/www/vhosts/puaboverse.online/backend && node server.js
sed -i "s/app\.listen(3000.*)/app.listen(3000, '0.0.0.0', () => { console.log('Backend running on port 3000') });/" /var/www/vhosts/puaboverse.online/backend/server.js && cd /var/www/vhosts/puaboverse.online/backend && node server.js
ss -tulpen | grep 3000
sed -i "s/app\.listen(3000.*)/app.listen(3000, '0.0.0.0', () => { console.log('Backend running on port 3000') });/" /var/www/vhosts/puaboverse.online/backend/server.js && cd /var/www/vhosts/puaboverse.online/backend && node server.js
plesk firewall rule add --name "Open port 3000" --action allow --port 3000 --protocol tcp
plesk firewall restart
curl http://your-server-ip:3000
curl http://74.208.125.19:3000
sed -i "/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
sed -i "/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js && node /var/www/vhosts/puaboverse.online/backend/server.js
nano /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
nano /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
nano /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "s/password: 'Momoney2025\$\$,.*/password: 'Momoney2025\$\$', \/\/ your MariaDB password/" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/app.get('/',/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/app.get('/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/app.get('/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/app.get('/',/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
npm install dotenv
touch .env
DB_PASSWORD=Momoney2025$$
DB_USER=root
DB_NAME=creator_os
DB_HOST=localhost
sed -i '1i require("dotenv").config();' /var/www/vhosts/puaboverse.online/backend/server.js
DB_PASSWORD=Momoney2025$$
DB_USER=root
DB_NAME=creator_os
DB_HOST=localhost
cat > /var/www/vhosts/puaboverse.online/backend/.env <<EOF
DB_PASSWORD=Momoney2025\$\$
DB_USER=root
DB_NAME=creator_os
DB_HOST=localhost
EOF

sed -i "/mysql.createPool/,/})/ {s/password: *['\"].*['\"]/password: process.env.DB_PASSWORD/; s/user: *['\"].*['\"]/user: process.env.DB_USER/; s/database: *['\"].*['\"]/database: process.env.DB_NAME/; s/host: *['\"].*['\"]/host: process.env.DB_HOST/}" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/app.get(/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/app.get(/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/app.get(/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
app.get('/', (req, res) => res.send('Backend is working!'));
nano /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
sed -i "/app.get(.*SELECT NOW()/d;/const app *= *express()/a app.get('/', async (req, res) => { const [rows] = await pool.query('SELECT NOW() AS serverTime'); res.send(\`Backend is working! Server time: \${rows[0].serverTime}\`); });" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/app.get(.*SELECT NOW()/d;/const app *= *express()/a app.get('/', async (req, res) => { const [rows] = await pool.query('SELECT NOW() AS serverTime'); res.send(\`Backend is working! Server time: \${rows[0].serverTime}\`); });" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/await pool.query('SELECT NOW() AS serverTime'/d;/app.get(/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/app.get(/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
sed -i "/app.get(/d;/erver.js .env/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
sed -i "/app.get(/d;/erver.js .env/d;/const app *= *express()/a app.get('/', (req, res) => res.send('Backend is working'erver.js .env'                        server));" /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
nano /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://74.208.125.19:3000/
nano /var/www/vhosts/puaboverse.online/backend/server.js
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://localhost:3000/
curl http://74.208.125.19:3000/
cat /var/www/vhosts/puaboverse.online/backend/server.js
lsof -i :3000
pkill node
node /var/www/vhosts/puaboverse.online/backend/server.js
curl http://localhost:3000/
curl http://74.208.125.19:3000/
nginx -v
ls -l /var/www/vhosts/puaboverse.online/httpdocs/mobile
cat /etc/os-release
ls -l /var/www/vhosts/puaboverse.online/httpdocs/mobile/web-build
nano /etc/nginx/plesk.conf.d/vhosts/puaboverse.online.conf
nginx -t
systemctl reload nginx
sudo netstat -tuln | grep 4006
sudo ufw allow 4006/tcp
sudo netstat -tuln | grep 4006
curl ifconfig.me
curl http://127.0.0.1:4006/
passwd
plesk login
plesk loginplesk loginservice plesk status
service psa status
ufw status
ufw allow 8443/tcp
ufw status
netstat -tlnp | grep 8443
File Manager for puaboos.puaboverse.online
Home directory
.composer
backend
error_docs
httpdocs
logs
puaboos.puaboverse.online
Copy
Move
Archive
More
Remove
Search in filename
Home directory
backend
	Name	Modified	Size	Permissions	User	Group	
	 .expo	Aug 14, 2025 07:11 AM		rwx r-x r-x	root	root	 
	 node_modules	Aug 14, 2025 05:21 PM		rwx r-x r-x	root	root	 
	 db.js	Aug 14, 2025 11:12 PM	271 B	rw- r-- r--	root	root	 
	 index.js	Aug 14, 2025 07:02 AM	1.1 KB	rw- r-- r--	root	root	 
	 package-lock.json	Aug 15, 2025 01:35 AM	39.5 KB	rw- r-- r--	root	root	 
	 package.json	Aug 14, 2025 05:21 PM	457 B	rw- r-- r--	root	root	 
	 server.js	Aug 15, 2025 01:19 AM	4.7 KB	rw- r-- r--	root	root	 
ssh your-plesk-root@74.208.125.19
ssh puaboverse_user@74.208.125.19
mongosh
sudo apt update
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs
node -v
npm -v
sudo apt install -y mongodb
sudo systemctl enable mongodb
sudo systemctl start mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl enable mongod
sudo systemctl start mongod
sudo rm /etc/apt/sources.list.d/mongodb-org-6.0.list
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl enable mongod
sudo systemctl start mongod
sudo systemctl status mongod
sudo tail -30 /var/log/mongodb/mongod.log
cat /etc/mongod.conf | grep dbPath
sudo mkdir -p /var/lib/mongodb
sudo chown -R mongodb:mongodb /var/lib/mongodb
sudo systemctl restart mongod
sudo systemctl status mongod
sudo mongod --config /etc/mongod.conf
ls -ld /var/lib/mongodb
cat /etc/mongod.conf
sudo nano /etc/mongod.conf
sudo systemctl restart mongod
sudo systemctl status mongod
sudo nano /etc/mongod.conf
sudo systemctl restart mongod
sudo systemctl status mongod
mongosh
sudo systemctl stop mongod
sudo mongod --config /etc/mongod.conf --noauth
sudo systemctl start mongod
use admin
db.createUser({
})
mongosh
mongosh -u admin -p Momoney2025$$ --authenticationDatabase admin
mongosh
mongosh --quiet --eval 'db = db.getSiblingDB("admin"); db.createUser({ user: "admin", pwd: "Momoney2025$$", roles: [ { role: "userAdminAnyDatabase", db: "admin" }, "readWriteAnyDatabase" ] })'
sudo mongod --config /etc/mongod.conf --noauth
mongosh --quiet --eval 'db = db.getSiblingDB("admin"); db.createUser({ user: "admin", pwd: "Momoney2025$$", roles: [ { role: "userAdminAnyDatabase", db: "admin" }, "readWriteAnyDatabase" ] })'
mongosh
sudo systemctl start mongod
mongosh -u admin -p Momoney2025$$ --authenticationDatabase admin
sudo systemctl stop mongod
sudo mongod --config /etc/mongod.conf --noauth
db.getUsers() sudo mongod --config /etc/mongod.conf --noauth
mongosh --quiet --eval 'db.getSiblingDB("admin").getUsers()'
sudo systemctl stop mongod
sudo mongod --config /etc/mongod.conf --noauth --fork --logpath /tmp/mongod.log
mongosh --quiet --eval 'db = db.getSiblingDB("admin"); db.createUser({ user: "admin", pwd: "Momoney2025$$", roles: [ { role: "userAdminAnyDatabase", db: "admin" }, "readWriteAnyDatabase" ] })'
sudo pkill mongod
sudo mongod --config /etc/mongod.conf --noauth
sudo pkill mongod
sudo mongod --dbpath /var/lib/mongodb --noauth
sudo pkill mongod
sudo mongod --dbpath /var/lib/mongodb --noauth
sudo pkill mongod
sudo mongod --dbpath /var/lib/mongodb --noauth
sudo pkill mongod
sudo rm /var/lib/mongodb/mongod.lock
sudo chown -R mongodb:mongodb /var/lib/mongodb
sudo mongod --dbpath /var/lib/mongodb --noauth
sudo pkill mongod
sudo rm /var/lib/mongodb/mongod.lock
sudo chown -R mongodb:mongodb /var/lib/mongodb
ps aux | grep mongod
sudo kill 801554
ps aux | grep mongod
sudo mongod --dbpath /var/lib/mongodb --noauth
sudo pkill mongod
sudo rm /var/lib/mongodb/mongod.lock
ps aux | grep mongod
sudo kill 802174
ps aux | grep mongod
sudo kill 802497
ps aux | grep mongod
sudo pkill mongod
ps aux | grep mongod
sudo systemctl stop mongod
ps aux | grep mongod
sudo pkill -9 mongod
ps aux | grep mongod
sudo systemctl status mongod
ps -ef | grep mongod
ps -fp 803397
docker ps
docker stop puabo-mongodb
ps aux | grep mongod
sudo mongod --dbpath /var/lib/mongodb --noauth
sudo mongod --dbpath /var/lib/mongodb --auth
sudo mongod --dbpath /var/lib/mongodb --noauth
sudo mongod --dbpath /var/lib/mongodb --auth
npm start
curl http://localhost:4006/api/users
curl -X POST http://localhost:4006/api/users   -H "Content-Type: application/json"   -d '{"username":"testuser", "password":"testpass"}'
nano routes/api.js
mkdir -p routes
nano routes/api.js
nano app.js
nano package.json
npm install
npm start
sudo lsof -i :4006
sudo kill 811154
sudo lsof -i :4006
npm start
mongosh -u admin -p Momoney2025$$ --authenticationDatabase admin
sudo mongod --dbpath /var/lib/mongodb --auth
use admin
npm install      # Installs dependencies from package.json
npm start        # Starts your server (default: port 3000)
q
mongosh --quiet --eval 'db = db.getSiblingDB("admin"); db.createUser({ user: "admin", pwd: "Momoney2025$$", roles: [ { role: "userAdminAnyDatabase", db: "admin" }, "readWriteAnyDatabase" ] })'
mongosh --quiet --eval '
db = db.getSiblingDB("admin");
db.createUser({
  user: "admin",
  pwd: "Momoney2025$$",
  roles: [
    { role: "userAdminAnyDatabase", db: "admin" },
    "readWriteAnyDatabase"
  ]
})
'
mongosh
mongosh -u admin -p Momoney2025$$ --authenticationDatabase admin
mongosh
mongosh -u admin -p 'Momoney2025$$' --authenticationDatabase admin
npm install mongoose
nano db.js
nano models/user.js
curl http://localhost:4006/api/users
npm start
nano models/Users.js
curl http://localhost:4006/api/users
npm install bcrypt jsonwebtoken
nano auth.js
nano app.js
curl -X POST -H "Content-Type: application/json" -d '{"username":"testuser","password":"mypassword","email":"test@demo.com"}' http://localhost:4006/api/auth/register
nano routes/auth.js
models/Users.js
nano models/User.js
npm start
node app.js
sudo lsof -i :4006
sudo kill 815460
sudo lsof -i :4006
node app.js
ps aux | grep node
curl -X POST -H "Content-Type: application/json" -d '{"username":"testuser","password":"mypassword","email":"test@demo.com"}' http://localhost:4006/api/auth/register
npm install bcryptjs
nano bcryptjs
nano auth.js
node app.js
sudo lsof -i :4006
curl -X POST -H "Content-Type: application/json" -d '{"username":"testuser","password":"mypassword","email":"test@demo.com"}' http://localhost:4006/api/auth/register
nano auth.js
npm install bcryptjs jsonwebtoken
node app.js
curl -X POST -H "Content-Type: application/json" -d '{"username":"testuser","password":"mypassword"}' http://localhost:4006/api/auth/login
openssl rand -hex 32
nano auth.js
nano authmiddleware.js
nano protected.js
nano app.js
node app.js
export JWT_SECRET="YourNewMemorableSecret"
node app.js
nano protected.js
node app.js
nano app.js
curl http://localhost:4006/api/profile -H "Authorization: Bearer <whitefamilylegacy600$$>"
nano protected.js
nano app.js
nano authmiddleware.js
node app.js
curl -X POST http://localhost:4006/api/auth/login   -H "Content-Type: application/json"   -d '{"username":"testuser","password":"testpassword"}'
mv /root/protected.js /root/routes/protected.js
mkdir -p /root/routes
nano /root/routes/protected.js
node app.js
mkdir -p /root/middleware
nano /root/middleware/authMiddleware.js
node app.js
ls -R /root
npm install mongoose
nano db.js
nano User.js
nano show.js
nano media.js
nano Contract.js
nano seed.js
nano app.js
nano users.js
nana app.js
nano app.js
npm install bcrypt
nano auth.js
authMiddleware.js
nano authMiddleware.js
nano dashboard.js
nano app.js
nano nodejs.yml
nano puabo-final-launch.sh
chmod +x puabo-final-launch_Version2.sh
export MONGODB_ATLAS_PROJECT_ID="your_project_id"
export SLACK_WEBHOOK="your_slack_webhook_url"
chmod +x puabo-final-launch_Version2.sh
./puabo-final-launch_Version2.sh
nano puabo-final-launch_Version2.sh
chmod +x puabo-final-launch_Version2.sh
./puabo-final-launch_Version2.sh
cat package.json
npm install --save-dev jest
nano package.json
mkdir __tests__
nano __tests__/basic.test.js
npm run test
nano package.jason
nano package.json
npm run test
nano package.json
npm run test
cat "/root/.nvm/test/fast/Unit tests/mocks/project_dirs/nested-pkg/package.json"
rm "/root/.nvm/test/fast/Unit tests/mocks/project_dirs/nested-pkg/package.json"
npm run test
find "/root/.nvm" -type f -name "package.json" -exec sh -c 'if [ ! -s "{}" ]; then rm "{}"; fi' \;
npm run test
nano __tests__/basic.test.js
npx jest __tests__/basic.test.js
nano package.json
nano basic.test.js
mkdir -p __tests__
npm run test
nano package.json
nano _test_basic.test.js
npm install
npm run test
nano package.json
mkdir -p __tests__
nano _test_
ls -l
mkdir -p __tests__
nano package.json
nano _test_/basic.test.js
curl http://localhost:4006/api/users
curl -X POST http://localhost:4006/api/users   -H "Content-Type: application/json"   -d '{"username":"testuser", "password":"testpass"}'
sudo systemctl start mongod
sudo systemctl status mongod
sudo tail -n 50 /var/log/mongodb/mongod.log
sudo tail -n 50 /var/log/mongodb/mongod.log | grep -iE "error|fatal|exception"
sudo chown -R mongodb:mongodb /var/lib/mongodb
sudo chmod -R 755 /var/lib/mongodb
mount | grep '/var/lib/mongodb'
sudo mount -o remount,rw /var/lib/mongodb
sudo mount -o remount,rw /
sudo systemctl start mongod
sudo systemctl status mongod
node seeds/seed.js
ls
cd backend
ls
node seeds/seed.js
cd ..
ls
cd backend
mkdir -p seeds
nano seeds/seed.js
node seeds/seed.js
cd ~/backend
mkdir -p models
nano models/User.js
nano models/Show.js
node seeds/seed.js
npm start
curl http://localhost:4006/api/users
mkdir -p __tests__ && echo "test('basic test', () => { expect(1 + 1).toBe(2); });" > __tests__/basic.test.js
npm run test
nano package.json
npm install
mkdir -p __tests__ && echo "test('basic test', () => { expect(1 + 1).toBe(2); });" > __tests__/basic.test.js
npm run test
npm install --save-dev supertest
mkdir -p __tests__ && echo "test('basic test', () => { expect(1 + 1).toBe(2); });" > __tests__/basic.test.js
echo "const request = require('supertest');\nconst app = require('../app');\ndescribe('GET /api/users', () => {\n  it('should return a list of users', async () => {\n    const res = await request(app).get('/api/users');\n    expect(res.statusCode).toBe(200);\n    // expect(Array.isArray(res.body)).toBe(true); // Uncomment if your API returns an array\n  });\n});" > __tests__/users.test.js
npm run test
ls -lh __tests__
cat __tests__/users.test.js
cat > __tests__/users.test.js <<EOF
const request = require('supertest');
const app = require('../app');

describe('GET /api/users', () => {
  it('should return 200 OK', async () => {
    const res = await request(app).get('/api/users');
    expect(res.statusCode).toBe(200);
    // expect(Array.isArray(res.body)).toBe(true); // Uncomment if your API returns an array
  });
});
EOF

npm run test
module.exports = app;
nano app.js
npm run test
nano app.js
node app.js
nano app.json
nano app.js
npm install express mongoose bcrypt
nano package.json
nano .gitinore
nano README.md
git add app.js package.json .gitignore README.md
git commit -m "Initial API build for IONOS Deploy Now"
git push
cd ~/node-auth-api
git add app.js package.json .gitignore README.md
git commit -m "Initial commit for API"
cd ~/node-auth-api
mkdir ~/node-auth-api
cd ~/node-auth-api
nano app.js
nano package.json
nano .gitignore
nano README.md
git init
git add app.js package.json .gitignore README.md
git commit -m "Initial commit for node-auth-api"
git remote add origin https://github.com/Puabo20/node-auth-api.git
git push --set-upstream origin main
git branch -m main
git push --set-upstream origin main
mongod
node app.js
nano app.js
express mongoose bcrypt
Puabo20
node-auth-api
Type / to search
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
Settings
Owner avatar
node-auth-api
Public
Start coding with Codespaces
Add a README file and start coding in a secure, configurable, and dedicated development environment.
Add collaborators to this repository
Search for people using their GitHub username or email address.
Quick setup — if you’ve done this kind of thing before
or	
https://github.com/Puabo20/node-auth-api.git
Get started by creating a new file or uploading an existing file. We recommend every repository include a README, LICENSE, and .gitignore.
…or create a new repository on the command line
echo "# node-auth-api" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Puabo20/node-auth-api.git
git push -u origin main
…or push an existing repository from the command line
git remote add origin https://github.com/Puabo20/node-auth-api.git
git branch -M main
git push -u origin main
git push
Puabo20
git credential-cache exit
git config --global --unset credential.helper
rm ~/.git-credentials
git remote set-url origin https://<11BTSUS4Q09A19yR972rQJ_iKIgoeTq8rwKeAaBpiTvS3gWoyOp1DHyF2BEtlrBTDg633J7MNO0BXeaAcL
>@github.com/Puabo20/node-auth-api.git
ps aux | grep node
sudo kill 770596 815952
node app.js
curl -X POST -H "Content-Type: application/json" -d '{"username":"testuser","password":"mypassword","email":"test@demo.com"}' http://localhost:4006/api/auth/register
mkdir -p /root/models
mkdir -p /root/routes
mv /path/to/User.js /root/models/User.js
nano /root/models/User.js
/root/app.js
/root/routes/auth.js
/root/models/User.js
node app.js
nano app.js
node app.js
nano app.js
node app.js
mkdir node-auth-api
cd node-auth-api
git add .
git commit -m "Initial commit with Node.js auth API starter"
git push -u origin main
nano app.js
models/User.js
nano models/User.js
nano routes/uesr.js
nano controllers/userController.js
curl -X POST http://localhost:5000/api/users/register   -H "Content-Type: application/json"   -d '{"BobbyBlanco":"admin","Momoney2025$$":"Momoney2025$$","role":"admin"}'
curl -X POST http://localhost:5000/api/users/register   -H "Content-Type: application/json"   -d '{"username":"admin","password":"Momoney2025$$","role":"admin"}'
curl -X POST http://localhost:5000/api/users/login   -H "Content-Type: application/json"   -d '{"username":"admin","password":"Momoney2025$$"}'
curl -X GET http://localhost:5000/api/users/admin   -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4YTQ5YjljN2U4MGEzNDY2YjAyYWM5OSIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTc1NTYxODI1MywiZXhwIjoxNzU1NjIxODUzfQ.1LIcx2z5jIzct-Mp-OTqNHZfZ4ZBUlcv_Y7IVLSdSRg"
nano models/User.js
nano utils/mailer.js
git push --set-upstream origin main
mkdir -p controllers
nano controllers/userController.js
mkdir -p models routes middleware
nano app.js
nano models/User.js
nano routes/user.js
nano controllers/userControllers.js
nano middleware/auth.js
nano .env
nano .gitignore
npm init -y
npm install express mongoose bcryptjs jsonwebtoken dotenv cors
rm package.json
npm init -y
npm install express mongoose bcryptjs jsonwebtoken dotenv cors
cd ~/node-auth-api
nano .env
node app.js
~/node-auth-api/routes/user.js
ls ~/node-auth-api/routes/
mkdir -p ~/node-auth-api/routes
nano ~/node-auth-api/routes/user.js
ls ~/node-auth-api/routes/
cd ~/node-auth-api
node app.js
ls ~/node-auth-api/controllers/
mkdir -p ~/node-auth-api/controllers
nano ~/node-auth-api/controllers/userController.js
ls ~/node-auth-api/controllers/
node app.js
ls ~/node-auth-api/models/
mkdir -p ~/node-auth-api/models
nano ~/node-auth-api/models/User.js
ls ~/node-auth-api/models/
node app.js
ls ~/node-auth-api/middleware/
mkdir -p ~/node-auth-api/middleware
nano ~/node-auth-api/middleware/auth.js
ls ~/node-auth-api/middleware/
node app.js
chmod +x backup_puabo.sh
./backup_puabo.sh
backup_puabo.sh
restore_puabo.sh
nana backup_puabo.sh
nano backup_puabo.sh
git add backup_puabo.sh
git commit -m "Add backup script for PUABO OS #1"
git push
git push --set-upstream origin main
git config --global user.name "BobbyBlanco"
git config --global user.email "Robert.white@puaboverse.online"
git push --set-upstream origin main
src/routestouch src/server.ts
touch src/routes/auth.ts
git push --set-upstream origin main
git config --global credential.helper store
nano src/app.ts
