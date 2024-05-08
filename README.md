
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


