@echo off
Title Jadwal Pelajaran X MM A
color 0a
:a
CLS
echo.
echo Jadwal Pelajaran X MM A

echo.
setlocal EnableDelayedExpansion

For /F "tokens=1 delims=| " %%a In ( 'wmic path win32_localtime get dayofweek /Value^|Find "DayOfWeek"' ) Do (
  set "str=%%a"
  set "str=!str:~10,1!"
)
for %%d in (Senin Selasa Rabu Kamis Jum'at Sabtu Minggu) do (
  set /A i=i+1
  set day[!i!]=%%d
  if !i!==!str! (
    ECHO %%d - %date%
  )
)

echo.
echo 1. Senin
echo 2. Selasa
echo 3. Rabu
echo 4. Kamis
echo 5. Jum'at
echo 6. Keluar
echo x=msgbox("Dibuat Oleh Trio Gempar S.G" ,0, "Tentang") >> about.vbs

echo.
set /p "pil=Masukan Pilihan : "
if %pil%==1 "D:\Project\Batch\Jadwal\1.bat"
if %pil%==2 "D:\Project\Batch\Jadwal\2.bat"
if %pil%==3 "D:\Project\Batch\Jadwal\3.bat"
if %pil%==4 "D:\Project\Batch\Jadwal\4.bat"
if %pil%==5 "D:\Project\Batch\Jadwal\5.bat"
if %pil%==6 exit \b
if %pil%==7 start about.vbs 
echo.
echo Perintah Tidak Ada, Coba Lagi!!!
pause
goto a