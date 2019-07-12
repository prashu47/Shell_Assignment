#In this script arg is taking the argument from the user. 

echo "Enter the argument:$arg"
read arg

#if user input as "fedora" than get the output "Centos".

if [[ $arg == 'fedora' ]]
then
   echo "CentOS"

#if user give input as "redhat" than get the output "RHEL".

elif [[ $arg == 'redhat' ]]
then
   echo "RHEL"

#Else user donot give any input or give input rather than "fedora" or "redhat" it gives output as "need one  argument{redhat|fedora}"

else
   echo "need one  argument{redhat|fedora}"
fi
