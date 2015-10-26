set JAR="hugb_hello_world.jar"
set LOCATION="C:\temp"

REM always deploy new version, clean before 

call bin\clean.bat
call bin\package.bat 

REM if jar file exists under C:\temp, remove it 
if not exist "%LOCATION%" mkdir %LOCATION%

copy build\libs\%JAR% %LOCATION%

REM run application once 

java -jar %LOCATION%\\%JAR%
