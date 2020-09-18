Perihal test programming : Bhinneka Sangkuriang Cirebon

Spesifikasi
- Angular 8 (production file)
- Loopback 3 LTS (source code file)
- PostgreSQL 9.6 

---- optional ----
apabila anda ingin menggunakan PostgreSQL versi docker 9.6 sudah saya sediakan di : 
https://hub.docker.com/r/syscrypt/postgres 
https://hub.docker.com/r/syscrypt/pgadmin   
---- / optional ----

HOW TO RUN :

LOOPBACK 3
1. download nodejs (LTS) pada : https://nodejs.org/en/
2. install nodejs
3. jika sudah terinstal maka akan muncul jika di check versi nodejs "node -v" dan check versi npm "npm -v", 
4. buka folder backend_loopback3 "./backend_loopback3/", kemudian buka command promt / terminal ketik "npm install"
5. kemudian buka command promt / terminal  "npm install nodemon -g"
6. buka folder backend_loopback3 "./backend_loopback3/server/datasources.json"
7. sesuaikan konfigurasi database (PotgreSQL) anda.
example:  "eki_movie_db": {
			"host": "127.0.0.1",
			"port": "5433",       <<== port default postgreSQL 5432, disni saya menggunakan docker
			"database": "eki_movie_db",
			"password": "<password anda>",
			"name": "eki_movie_db",
			"user": "postgres",
			"connector": "postgresql"  <<== jangan di rubah, ini connector loopback
	 }
8. untuk menjalankan buka command promt / terminal buka folder "./backend_loopback3" ,jika sudah lalu ketik perintah "nodemon" untuk menjalankan,
   apabila bermasalah install "npm install -g @loopback/cli"  atau  "npm install -g loopback-cli" , lalu jalankan kembali "nodemon".

ANGULAR 8 (production file)
1. file ini bukan berupa source code tetapi berupa file production yang sudah jadi tinggal di pindahkan ke web server (Apache/Nginx/IIS/, dll) 
   file static ini karena hanya berupa css html dan javascript saja, sudah saya sertakan video tutorialnya
   
   
ada video dokumentasi bukti aplikasi ini sudah berjalan 


Thanks & best regards,
Eki Indradi, S.Kom