@echo off
Title Jadwal Pelajaran X MM A
color 0a
:a
CLS
echo.
echo Jadwal Pelajaran Senin

echo.
echo + Upacara Bendera
echo + Dasar Desain Grafis
echo + Bahasa Indonesia
echo + Seni Budaya

echo.
echo 1. Kembali
echo 2. Keluar

echo.
set /p "pil=Masukan Pilihan : "
if %pil%==1 "D:\Project\Batch\Jadwal\main.bat"
if %pil%==2 exit \b
echo.
echo Perintah Tidak Ada, Coba Lagi!!!
pause
goto a