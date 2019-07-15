#$source_path is used to take a path for which user have take the file to compress.

echo "folder path:$source_path"
read source_path

   if [ -z "$source_path" ]
  then
echo "please enter the source path"
read source_path
  fi    
 
# $ext is used to choose the extension name for which user want to compress.

echo "Give the extension of File:$ext"
read ext

   if [ -z "$ext" ]
  then
echo "please give the Extension"
read ext
   fi
   
# $Destination_path is used to take the  the to where user want placed the compress file.

echo "Provide Backup folder path:$Destination_path"
read Destination_path

  if [ -z "$Destination_path" ]
 then
echo "please enter the Destination path"
read Denstination_path
  fi

     date_format="`date +%F`"
     file_name="$ext$date_format.tar.gz"
echo "+++++++++++++++++++++++++ $source_path/$file_name"
tar -czvf $source_path/$file_name *.$ext
mv $source_path/$file_name $Destination_path/$file_name
