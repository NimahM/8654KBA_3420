DOMAINS
jurusan,jurusan1,kami,jenis,jenis1,indication,orang,saran1 = symbol
nama = profil(symbol,integer,symbol)
kuota,snmptn,sbmptn,smmptn,a = integer
kondisi = peop*
soal,you,name,tittle,peop = string

FACTS
person(kondisi)
false(peop)
jurusan(nama,snmptn,sbmptn,smmptn)

PREDICATES
nondeterm begin
nondeterm hasil(string,jenis)
nondeterm jawaban(name,indication)
nondeterm response(char)
nondeterm saran(jenis,jurusan,jurusan1)
nondeterm tampil
nondeterm showus(kondisi)
nondeterm prospek(tittle,tittle,tittle)
nondeterm menu(integer)
nondeterm about
nondeterm aboutus
nondeterm satu
nondeterm dua
nondeterm tiga
nondeterm empat
nondeterm lima
nondeterm enam
nondeterm menu1(a)
nondeterm kuota_siswa
nondeterm go
nondeterm keluar


CLAUSES
% ABOUT FKIP %
prospek("Berikut prospek kerja dalam FKIP sesuai program studi : ","","").
prospek("1. ","Pendidikan Matematika","  mendidik tenaga profesional bidang pendidikan matematika. \n Prospek kerja : guru, dosen, peneliti, diknas, bimbingan belajar, penerbit, penulis").
prospek("2. ","Pendidikan Biologi"," mendidik tenaga profesional bidang pendidikan biologi. \n Prospek kerja : guru, dosen, peneliti, diknas, bimbingan belajar, penerbit, penulis ").
prospek("3. ","Pendidikan Guru sd (PGSD)"," mendidik tenaga profesional bidang pendidikan jenjang sekolah dasar. \n Prospek kerja : guru, dosen, peneliti, diknas, bimbingan belajar, penerbit, penulis").
prospek("4. ","Bimbingan dan konseling (BK)"," mendidik tenaga profesional bidang layanan bimbingan dan konseling sekolah, keluarga dan masyarakat. \n Prospek kerja : guru, dosen, konsultan BK, PNS non-pendidikan.").
prospek("5. ","PG-PAUD","  mendidik tenaga profesional bidang pendidikan pra sekolah anak usia dini. \n Prospek kerja : guru, dosen, peneliti, diknas, bimbingan belajar, penerbit, penulis.").
prospek("6. ","Pendidikan Bahasa dan Sastra Indonesia (PBSI)"," mendidik tenaga profesional bidang pendidikan bahasa dan sastra indonesia.").
about:-prospek(Q,X,Y),write(Q,X,Y,"\n--------------------------------------------------------------------------------------------------------------"),nl,fail.

% ABOUT Us%
person(["\t\t\t\t\t\t\t\t\t Ni'mah Moham \t15150151016"]).
person(["\t\t\t\t\t\t\t\t\t Wiji Astuti  \t15150151044"]).
person(["\t\t\t\t\t\t\t\t\t Susanti      \t15150151047"]).

showus([A|B]):-
     not(false(A)),
     write(A),nl,
     showus(B).
 
 	aboutus :- 
 		  write("\t\t\t\t\t\t\t\t=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+"),nl,
 	          write("\t\t\t\t\t\t\t\t+=+=+=+=+=+=+=+=+ KELOMPOK 15  +=+=+=+=+=+"),nl,
 	          write("\t\t\t\t\t\t\t\t=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+"),nl,
 	          write("\t\t\t\t\t\t\t\t\t   Nama                       Nim"),nl,
 	          person(X),
 	          showus(X),fail.


% PERTANYAAN %
 go :-
    	write("Hi.... "),nl,nl,
        write("Silahkan Maukkan nama anda?   "),nl,
        readln(You),
        write("\tAyo jawab pertanyaan berikut dengan jujur ya,Ini Cuman 1 Pertanyaan Kok"),nl,
        write("\t\t-------------------------------------------------------"),nl,
        write("Kalau ada teman yang curhat, biasanya kamu menanggapinya dengan..."),nl,
        write("a. Mendengarkan dengan seksama dan memberikan solusi  setelah dia selesai cerita"),nl,
        write("b. Mendengarkan sambil sesekali melontarkan celetukan lucu, \n yang anehnya bisa bikin dia ketawa walaupun   ceritanya sedih luar biasa"),nl,
        write("c. Hanya mendengarkan tanpa bisa memberikan solusi"),nl,
        write("\tSilahkan Pilih satu"),nl,
        hasil(You,Jenis),
        write(You," Kamu cocok nih dengan jurusan yang berkaitan dengan ",Jenis,"."),nl,
    	 saran(Jenis,Jurusan,Jurusan1),nl,nl,
    	 write("\tSaran Jurusan Buat Kamu"),nl,
    	 write("\t",Jenis," dengan saran jurusan ",Jurusan," atau ",Jurusan1,"."),nl,nl,nl.   
        
    go :-
        write("Sorry, Maaf Kami Tidak Menemukan Jurusan Yang tepat Buat Kamu"),nl,
        write("coba lagi."),nl.
   
   
   
    jawaban(You,test1):-
        write("\n\nHi ",You," apakah kamu seperti pilihan a? (y) jika benar"),nl,
        response(Reply),
        Reply='y'.
    jawaban(You,test2):-
        write("Hi ",You," apakah kamu seperti pilihan b? (y) jika benar"),nl,
        response(Reply),
        Reply='y'.
        
      jawaban(You,test3):-
      write("Hi ",You," apakah kamu seperti pilihan c? (y) jika benar"),nl,
        response(Reply),
        Reply='y'.
    
    
        
        
        hasil(You,sosial) :-     
        jawaban(You,test1).
        
         hasil(You,seni) :-     
        jawaban(You,test2).   
        
        
        hasil(You,sains) :-      
        jawaban(You,test3).
       
        saran(sosial,bimbingan_dan_konseling,pendidikan_Guru_SD).
        saran(seni,pendidikan_Bahasa_dan_Sastra_Indonesia,pendidikan_Guru_PAUD).
        saran(sains,pendidikan_Matematika,pendidikan_Biologi).
       
                    
    response(Reply) :-
        readchar(Reply),
        write(Reply),nl,!.


% Tampil %
   tampil:-
    write("\t=+=+=+=+=+=+=+=+=+ BIODATA =+=+=+=+=+=+=+=+=+"),nl,
   	write("\tMasukkan Nama 			: "),readln(A),nl,
   	write("\tMasukkan Tanggal Lahir		: "),readln(B),nl,
   	write("\tMasukkan Asal Sekolah		: "),readln(C),nl,
   	write("\tMasukkan Tahun Lulus SMA/SMK	: "),readln(D),nl,nl,
   	write("\t=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+"),nl,
   	write("\t+=+=+=+=+=+=+==DAFTAR JURUSAN+=+=+=+=+=+=+=+=+="),nl,
   	write("\t=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+"),nl,
   	write("\t1. Pendidikan Matematika"),nl,
	write("\t2. Pendidikan Biologi"),nl,
	write("\t3. Pendidikan Guru sd (PGSD)"),nl,
	write("\t4. Bimbingan dan konseling (BK)"),nl,
	write("\t5. Pendidikan Guru-PAUD"),nl,
	write("\t6. Pendidikan Bahasa dan Sastra Indonesia (PBSI)"),nl, 
	write("\tPilih Jurusan Yang Diinginkan : "),readint(Pilih),menu1(Pilih),nl,   	
   	write("\t\t\t\t\t\t=+=+=+=+=+=+=+=+=+ KETERANGAN CALON MAHASISWA  =+=+=+=+=+=+=+=+=+"),nl,
   		write("\t\t\t\t\t\tNama 			: "),write(A),nl,
   		write("\t\t\t\t\t\tTanggal Lahir		: "),write(B),nl,
   		write("\t\t\t\t\t\tAsal Sekolah		: "),write(C),nl,
   		write("\t\t\t\t\t\tTahun Lulus SMA/SMK	: "),write(D),nl,
   		write("\t\t\t\t\t\t\t\t=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+"),nl,nl.
     satu:-
   		write("\t\t\t\t\t\t\t=+=+=+=+=+=+=+=+=+ JURUSAN  =+=+=+=+=+=+=+=+=+"),nl,nl,
   		write("\t\t\t\t\t\t\t                  Pendidikan Matematika"),nl.
     dua:-
   		write("\t\t\t\t\t\t\t=+=+=+=+=+=+=+=+=+ JURUSAN  =+=+=+=+=+=+=+=+=+"),nl,nl,
   		write("\t\t\t\t\t\t\t                  Pendidikan Biologi"),nl.
     tiga:-
   		write("\t\t\t\t\t\t\t=+=+=+=+=+=+=+=+=+ JURUSAN  =+=+=+=+=+=+=+=+=+"),nl,nl,
   		write("\t\t\t\t\t\t\t                  Pendidikan Guru sd (PGSD)"),nl.
    empat:-
   		write("\t\t\t\t\t\t\t=+=+=+=+=+=+=+=+=+ JURUSAN  =+=+=+=+=+=+=+=+=+"),nl,nl,
   		write("\t\t\t\t\t\t\t                  Bimbingan dan konseling (BK)"),nl.
    lima:-
   		write("\t\t\t\t\t\t\t=+=+=+=+=+=+=+=+=+ JURUSAN  =+=+=+=+=+=+=+=+=+"),nl,nl,
   		write("\t\t\t\t\t\t\t                  Pendidikan Guru-PAUD"),nl.
    enam:-
   		write("\t\t\t\t\t\t\t=+=+=+=+=+=+=+=+=+ JURUSAN  =+=+=+=+=+=+=+=+=+"),nl,nl,
   		write("\t\t\t\t\t\t\t                  Pendidikan Bahasa dan Sastra Indonesia (PBSI)"),nl.						

   	menu1(A):-
   		A=1,satu;
   		A=2,dua;
   		A=3,tiga;
   		A=4,empat;
   		A=5,lima;
   		A=6,enam;
   		A>6,write("\t\t\t\t\t\t\t\t\t\tINPUTAN SALAH");
	
   	
% DATA PRODI %
jurusan(profil(pendidikan_Matematika,150,gunung_Kelua),50,50,50).
jurusan(profil(pendidikan_Biologi,150,gunung_Kelua),50,50,50).
jurusan(profil(pendidikan_Guru_sd,120,gunung_Kelua),20,50,50).
jurusan(profil(pimbingan_dan_konseling,100,banggeris),25,50,25).
jurusan(profil(pendidikan_Guru_PAUD,100,banggeris),25,50,25).
jurusan(profil(pendidikan_Bahasa_dan_Sastra_Indonesia,150,banggeris),25,50,75).


	
	
kuota_siswa:-
	write("\t\tINFO KUOTA PENERIMAAN SISWA!!!"),nl,
	jurusan(profil(Nama,Kuota,Alamat),SNMPTN,SBMPTN,SMMPTN),SNMPTN > 0, SBMPTN > 0 ,SMMPTN >0,
	write("\t\t-------------------------------------------------------------------------------------"),nl,nl,
	write("\tNama Prodi			: " ,Nama),nl,nl,		
	write("\tAlamat 				: ",Alamat),nl,nl,
	write("\tKuota Siswa 			: ",Kuota," Orang"),nl,nl,
	write("\tPembagian Kuota Penerimaan	: SNMPTN : ",SNMPTN," SBMPTN : ",SBMPTN," SMMPTN : ",SMMPTN),nl,
	fail.
	kuota_siswa.	
   	
% Menu %
begin:-
write("\n\t\t=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+"),
write("\n\t\t--- Selamat Datang Di Fakultas Keguruan dan Ilmu Pendidikan---"),
write("\n\t\t--kami akan membimbing anda agar memilih jurusan yang tepat--"),
write("\n\t\t=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+"),
write("\n\t\t\t1. Lihat Jurusan apa yang cocok denganmu\n\t\t\t2. Info Kuota\n\t\t\t3. About FKIP\n\t\t\t4. About Us \n\t\t\t5. Exit \n\t\t\tMasukkan Pilihan :\t"),readint(Pilihan),menu(Pilihan).

% exit %
keluar:-
	write("\n\n\nTerimakasih"),nl,nl.
	
% Swtich Case Menu Pilihan %
menu(X):-
	X=1,go,tampil,begin;
	X=2,kuota_siswa,begin;
	X=3,about,begin;
	X=4,aboutus,begin;
	X=5,keluar,!;
	X<1,begin;X>2,begin.

GOAL
begin.