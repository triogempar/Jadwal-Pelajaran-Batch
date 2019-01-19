@ECHO OFF
color 0a
Title Jadwal Pelajaran X MM A
setlocal enableextensions disabledelayedexpansion

    for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a" 
    set "td.YY=%dt:~2,2%" 
    set "td.YYYY=%dt:~0,4%"
    set "td.MM=%dt:~4,2%"
    set "td.DD=%dt:~6,2%"

    rem Remove padding from date elements and increase day
    set /a "y=%td.YYYY%", "m=100%td.MM% %% 100", "d=(100%td.DD% %% 100)+1" 
    rem Calculate month length
    set /a "ml=30+((m+m/8) %% 2)" & if %m% equ 2 set /a "ml=ml-2+(3-y %% 4)/3-(99-y %% 100)/99+(399-y %% 400)/399"
    rem Adjust day / month / year for tomorrow date
    if %d% gtr %ml% set /a "d=1", "m=(m %% 12)+1", "y+=(%m%/12)"

    rem Pad date elements and set tomorrow variables
    set /a "m+=100", "d+=100"

    set "tm.YYYY=%y%"
    set "tm.YY=%y:~-2%"
    set "tm.MM=%m:~-2%"
    set "tm.DD=%d:~-2%"
	
setlocal EnableDelayedExpansion
echo.
For /F "tokens=1 delims=| " %%a In ( 'wmic path win32_localtime get dayofweek /Value^|Find "DayOfWeek"' ) Do (
  set "str=%%a"
  set "str=!str:~10,1!"
)
for %%d in (Selasa Rabu Kamis Jum'at Sabtu Minggu Senin) do (
  set /A i=i+1
  set day[!i!]=%%d
  if !i!==!str! (
    ECHO Besok Hari %%d %tm.DD%/%tm.MM%/%tm.YYYY%
  )
)
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