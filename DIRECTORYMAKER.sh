#In this script dirname is used to take the name of directory from the user.

echo "Enter the directory name to check and create if it is not exist:$dirname"
read dirname

#if user do not give any name than it show "please enter the directory name".

if [ -z "$dirname" ]
    then
        echo "please enter the directory name" 
        read dirname
fi

#When user give any name of directory if the following name is not exists in the system the "mdir" creates the new directory. 

if [ ! -d "$dirname" ]
   then
       mkdir "$dirname"
    
#Here $dirpath is used for taking the path form user where he wants to create the directory.

echo "Enter the path where you want to make directory:$dirpath"
read dirpath

#if directory path is not given by user than it again ask to input the directory name.

if [ -z "$dirpath" ]
    then
        echo "please enter the path" 
        read dirpath
fi
 
#According to above code the following directory is creatd in the "home" by defult, than move command "mv" is used to move the following directory to the user given path.  

    mv /home/foradian/$dirname $dirpath/$dirname

#if input of the directory name by the user is already exists in the system , it gives the message"directory already exists".

    else
    echo "directory already exists"
fi
