@echo off
Title Jadwal Pelajaran X MM A
color 0a
:a
CLS
echo.
echo Jadwal Pelajaran Jum'at

echo.
echo + IMTAQ
echo + Bahasa Inggris
echo + Matematika
echo + Bimbingan Konseling
echo + Bahasa Jawa

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