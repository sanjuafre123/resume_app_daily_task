
# resume_app_daily_task

# 1. What is List and Map?
- ### List :  The list is an ordered collection of objects and the List can contain duplicate values.

- ## Predefined functions of list :
- 
- add() addAll() insert() insertAll(),\
  remove() removeAt() removeLast() removeRange()

## Example of List :
 ```base

   List name = ["Sanju", "S", "a", "n" , "j" , "u"];

```
## Length of list :

```

void main() {
 
    List name = ["Sanju", "S", "a", "n" , "j" , "u"];
  
    print(name.length);
 
}

```
## To add List :

```
void main() {

    List name = ["Sanju", "S", "a", "n" , "j" , "u"];
  
    print(name[0]);
  
    name.add(50);
  
    print(name);
}

```
## To addAll of list :

```
void main() {

    List name = ["Sanju", "S", "a", "n" , "j" , "u"];
  
    print(name[0]);
  
    name.addAll(['Akhil', 4, 5]);
  
    print(name);
}

```

## To Insert :

```
void main() {

    List name = ["Sanju", "S", "a", "n" , "j" , "u"];

    print(name[0]);

    name.insert(2, 50);

    print(name);
}

```

## To remove :

```
void main() {
    List name = ["Sanju", "S", "a", "n" , "j" , "u"];
  
    print(name[0]);
  
    name.remove("B");
  
    print(name);
}

```
## To RemoveAll

```
void main() {
    List name = ["Sanju", "S", "a", "n" , "j" , "u"];
  
    print(name[0]);
  
    name.removeAt(3);
  
    print(name);
}

```
## To Reverse :

```
void main() {
    List name = ["Sanju", "S", "a", "n" , "j" , "u"];
  
    print(name[0]);
  
    print(name.reversed.toList());
}

```

- ### Map :  A Map is an object that maps keys to values or is a collection of attribute-value pairs.

- ## Predefined functions of map :
- addAll() remove() forEach() update()

## Example of Map :

 ```base

void main() {

  Map StudentDetails = {
      'name': "Sanju",
      'age': 18,
      'per': 89.23,
    };
    
    StudentDetails.forEach((key, value) {

      print("${key} : ${value}");

    });
}

```base

void main() {
 
  List StudentData = [
    {
      'name': "Sanju",
      'age': 20,
      'per': 99.23,
      
    },
    {
      'name': "Ankit",
      'age': 25,
      'per': 92.23,
     
    },
    {
      'name': "Hiren",
      'age': 21,
      'per': 97.23,
    }
  ];

```
  

```base

# Generics
  
- Generics are denoted by using angle brackets < > and a type parameter.
  The type parameter represents a placeholder for a specific type that 
  will be provided when using the generic code.

```

- # Status Bar

```
  class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.green,
      ),
    );

```

- # Device Orientation :

```
SystemChrome.setPreferredOrientations([

      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ],);

```
- # AppBar :

```
  appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.black26,
        backgroundColor: Color(0xffFFEAE3),
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Color(0xFF121481)),
      ),

```

<h3 align="center"> ✨ Gmail ✨ </h3>

<h1 align="left"></h1>
<div align ="center">

  <img src = "https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/528795ad-8a6a-4fef-bb98-bed0ded5c0ed" height ="550">
  
</div>

<h3 align="center"> ✨ Login Page UI ✨ </h3>

<h1 align="left"></h1>
<div align ="center">

  <img src = "https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/2f79e899-4f29-4c2c-901e-62fba3f3caec" height ="550">
  <img src = "https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/5edfdd6c-817c-4f53-b4ff-329fff979d5b" height ="550">
  
</div>

<h3 align="center"> Login video </h3>

<div align="center">
 <video src="https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/ef48522c-25f6-42ac-89b1-be7395f1882b" type="video/mp4">
</video>
</div>

<h3 align="center"> ✨ LoginEmail Page  ✨ </h3>

<h1 align="left"></h1>
<div align ="center">

  <img src = "https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/c9b7f06c-f8c0-4369-be39-0ae0551e3485" height ="550">
  <a href ="https://github.com/sanjuafre123/resume_app_daily_task/blob/master/lib/home/Components/Screen/Google_Login_Page_With_Validation/Emailscreen.dart">  Click here Link </a>
  
</div>

<h3 align="center"> ✨  Password Page ✨ </h3>

<h1 align="left"></h1>
<div align ="center">

  <img src = "https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/f8ea2e1d-13cd-4145-8a62-cb4d52f35c5a" height ="550">
  <a href ="https://github.com/sanjuafre123/resume_app_daily_task/blob/master/lib/home/Components/Screen/Google_Login_Page_With_Validation/PasswordScreen.dart">  Click here Link </a>
  
</div>

<h3 align="center"> ✨  Succeessful Page ✨ </h3>

<h1 align="center"></h1>
<div align ="center">

  <img src = "https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/55924158-7814-4e6f-ab28-3415e6526f7d" height ="550">
  
</div>

<h3 align="center"> ✨  Snaker Page ✨ </h3>

<h1 align="center"></h1>
<div align ="center">

  <img src = "https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/543454ce-ecd3-4e8b-a829-6a748ca80601" height ="550">
  <a href ="https://github.com/sanjuafre123/resume_app_daily_task/blob/master/lib/home/Components/Screen/Google_Login_Page_With_Validation/PasswordScreen.dart">  Click here Link </a>
  
</div>

<h3 align="center"> Google login video </h3>

<div align="center">
 <video src="https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/5bcfdfc6-ff70-4145-b633-2fad2a150baf"type="video/mp4">
</video>
</div>



<h3 align="center"> ✨  Snaker Page2 ✨ </h3>

<h1 align="center"></h1>
<div align ="center">

  <img src = "https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/379fc6c4-deae-4734-b124-ee3cd2a7f866" height ="550"><br>
  <a href ="https://github.com/sanjuafre123/resume_app_daily_task/blob/master/lib/home/Components/Screen/SnackBar%20%26%20TextFormField/snaker.dart">  Click here Link </a>
  
</div>

<h3 align="center"> Google login video </h3>

<div align="center">
 <video src="https://github.com/sanjuafre123/resume_app_daily_task/assets/148860124/4409b27f-9e52-4a59-b4e2-75c9efe8ab4b"type="video/mp4">
</video>
</div>








