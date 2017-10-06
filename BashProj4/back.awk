#!/usr/bin/env bash
BEGIN{FS = ","
email=""; name=""; title=""; balance="";
}
{
email=$1; name=$2; title=$3; balance=$5-$4;
print email
command1 = ("sed 's/<EMAIL>/<"email">/g' template.txt > "email"")
print | command1;
command2 = ("sed -i 's/FULLNAME/"name"/g' "email"")
print | command2;
command3 = ("sed -i 's/TITLE/"title"/g' "email"")
print | command3;
command4 = ("sed -i 's/NAME/"name"/g' "email"")
print | command4;
command5 = ("sed -i 's/AMOUNT/"balance"/g' "email"")
print | command5;
command6 = ("mv "email" Emails")
print | command6;
email=""; name=""; title=""; balance="";
}
END{}