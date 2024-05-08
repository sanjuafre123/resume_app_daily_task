import 'dart:io';

void main()
{
  Map PersonDetail = {

    'Id'  :  Null,
    'Name' : Null,
    'Addres' : Null,
    'Email' : Null,
    'Contact' :Null,
    'occupation' : Null,
    'gender' : Null,
    'city' : Null,
    'State' :Null,
    'Pincode' : Null,
  };


  for(String key in PersonDetail.keys)
  {
    stdout.write('Enter $key  :  ');
    PersonDetail[key] = stdin.readLineSync();
  }

  print(PersonDetail);
}