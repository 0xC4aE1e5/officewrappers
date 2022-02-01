@echo off

echo Word
cd Word
call npx electron-builder --win portable
cd ..
echo Excel
cd Excel
call npx electron-builder --win portable
cd ..
echo PowerPoint
cd PowerPoint
call npx electron-builder --win portable
cd ..
mkdir out
move Word\dist\Word*.exe out
move Excel\dist\Excel*.exe out
move PowerPoint\dist\PowerPoint*.exe out
echo Please review the errors above. Press any key to continue.
pause > nul