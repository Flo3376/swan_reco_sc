em start at the top of the tree to visit and loop though each directory
for /r %%b in (.) do (
  rem enter the directory
  pushd %%b
  echo In directory:

  cd %%b
  for %%a in (*.*) do (
    echo %%a|findstr /i /L "voice_1_">nul
    if errorlevel 1 (
    ren "%%a" "voice_1_%%a"
   ) else (
     echo skip %%b
   )

   
 )
  cd..
  
  cd
  rem leave the directory
  popd
)

pause