# Mikrotik-Api-Web-Based
MixCloud (Billing HOTSPOT dan PPPOE Mikrotik API) Web Based

* FULL FEATURED CREATED / ADDED BY : 
* WEBSITE	: HTTP://hijaunet.id
* EMAIL		: owner.hijaun3t@gmail.com
* FACEBOOK	: https://www.facebook.com/hijaunetpct
* MOBILE	: +62 877 0229 9005

MixCloud (Billing HOTSPOT dan PPPOE Mikrotik API) Web Based
Adalah sebuah Web Aplikasi yang bertugas untuk mengatur Billing pada mikrotik dan manajemen Voucher Hotspot.
Dengan MIXCLOUD anda bisa otomatiskan pekerjaan anda, Voucher tinggal dicetak, lalu titipkan di warung, Pengguna daftar sendiri di MIXCLOUD dengan mengikutsertakan voucher yang sudah dibeli.
Tugas menjadi lebih ringan, anda tinggal cek pendapatan di warung dan buat voucher baru lagi.
MIXCLOUD hanya menjalankan tugas untuk pendaftaran dan menambahkan voucher oleh user.
Untuk login hotspotnya sendiri masih menggunakan Mikrotik.

Fitur UMUM :
=============
- Tampilan GUI yang menarik
- Terintegrasi dengan MikroTik
- Mendukung mode HOTSPOT MikroTik 
- Mendukung mode PPPOE MikroTik (PREMIUM)
- Akses dan Manajemen yang terpisah untuk masing-masing router
- Mendukung Backup Restore Database Billing (PREMIUM)
- Mendukung backup dan restore database MikroTik (PREMIUM)
- Mendukung monitoring user online dam user expire
- Memiliki opsi untuk kepemilikan profile, member atau voucher
- Design Invoice yang simple dan menarik
- Mendukung untuk print atau cetak invoice/data tagihan
- Permisahan manajemen untuk masing-masing akun reseller/sales, admin tetap full akses
- Masing-masing akun reseller/sales tidak bisa melihat data dari akun lain
- Laporan Keuangan yang berbeda untuk masing akun reseller/Sales, admin tetap full akses
- Tersedia beberapa pilihan izin lanjutan untuk akun reseller/sales seperti membuat profile sendiri,izin akses API HOTSPOT (view atau manage) dan API PPPOE (view atau manage) 
- Pengalokasian satu router untuk satu akun reseller/sales
- Terintegrasi dengan MikroTik (resource, interface and graph, hotspot list, hotspot online, hotspot expire, ppp list and ppp online, dhcp lease, ip binding, walled garden, ip host, script, scheduler, netwatch… add, edit, remove, make static dhcp lease, make binding) (PREMIUM)
- Terintegrasi dengan User Manager MikroTik (customer,router,user,profile,profile limitation,limitation,log,session,backup restore usermanager database, print voucher) (PREMIUM)

Fitur HOTSPOT :
=================
- Design Voucher yang simple dan menarik
- Voucher sudah support QRCode
- Voucher Generator mendukung untuk semua jenis Login Page (Username + Password atau Voucher Code)
- Voucher Generator mendukung beberapa pilihan kombinasi kode atau username
- Menu Print/Cetak Voucher dengan beberapa pilihan (cetak semua, cetak yang dipilih, cetak berdasarkan prefix)
- Profile Generator sudah disertakan script on-login untuk manajemen masa aktif dan expire member HOTSPOT atau voucher HOTSPOT di MikroTik
- Otomatis penambahan schedule ke scheduler mikrotik setiap voucher pertama kali digunakan untuk manajemen masa aktif
- Mendukung mode Time Based, Quota Based, Time Based + Quota Based dan Unlimited
- Penambahan paket (Recharge) tidak menghilangkan waktu yang tersisa dan Otomatis memperbaharui masa aktif
- Form Input member yang lebih lengkap
- Dan lain-lain

Fitur PPPOE (PREMIUM):
========================
- Mendukung pilihan IP Address statis dan dinamis (PREMIUM)
- Mendukung beberapa pilihan aksi ketika expire (Disable Secret, Change To Expire Profile dan No Action) (PREMIUM)
- Pembatasan Waktu Recharge Ulang Untuk Member PPPOE, minimal 5 hari sebelum expire dan waktu yang tersisa akan ditambahkan ke masa aktif baru (PREMIUM)
- Mendukung pembuatan user PPPOE berbasis Voucher (Username + Password atau Voucher Code) (PREMIUM)
- Otomatis penambahan schedule ke scheduler mikrotik setiap pembuatan akun member untuk manajemen masa aktif (PREMIUM)
- Form Input member yang lebih lengkap (PREMIUM)
- Dan lain-lain

# DEMO VERSION
http://myfi.hijaunet.id/admin
- username: demo
- password: demo

Activation Required
=========================
Get Your Key First
And Then Active Your Software
* Name: ......................
* E-mail: ....................
* Domain: ....................
* Name Hotspot: ..............

# Send To:
- E-mail: owner.hijaun3t@gmail.com
- Private Maasage: https://www.facebook.com/hijaunetpct
- Whatsapp/ Sms/ Tlp : 0877 0229 9005

Instalation
==============
Local Webserver Download appserver https://www.appserv.org/download/

- Auto Installer
1. Unzip the contents of the zip file to a folder on your computer.
2. Upload the Entire MIXCLOUD folder to your website / server
3. Next you can rename the folder to whatever you like (billing, finance, manage etc..)
4. Now visit the uploaded location using your web browser to run the installer process.
5. Follow the instructions on screen to install MIXCLOUD
6. For security, Delete the install directory inside system folder.
7. If you see blank page after installation, it might be your compiled folder permission is not writable. Please make permission 755 compiled directory inside ui folder to store the generated contents from theme.

if you get error after submit database configuration, create chmod 777 folder system, retry instalation, after finish, chmod 755 folder system

- Manual Install
1. Unzip the contents of the zip file to a folder on your computer.
2. Upload the Entire MIXCLOUD folder to your website / server
3. Next you can rename the folder to whatever you like (billing, finance, manage etc..)
4. Sample config file is available here- system/config.sample.php, Rename it to config.php & put it in same location (/system/config.php) Open config file using a text editor & Put the database info and url.
5. Import database. Database file is located here- system/install/mixpanel.sql
6. For security, Delete the install directory inside system folder.

# USERNAME and PASSWORD
- Username: hijaunet
- Password: hijaunet

For security, Rename the install directory inside system folder, and rename back to install if you need to reinstall.
folder permission 444 .htaccess folder ...\ui\theme\default\images and ...\ui\theme\default\images\admin
