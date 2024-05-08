
#resume_app_daily_task

- # List of Map
# 1. What is List and Map?
- ## List :  The list is an ordered collection of objects and the List can contain duplicate values.

- ## Predefined functions of list :
- add() addAll() insert() insertAll(),\
  remove() removeAt() removeLast() removeRange()

- ## Map :  A Map is an object that maps keys to values or is a collection of attribute-value pairs.

- ## Predefined functions of map :
- addAll() remove() forEach() update()

## Example of List :
 ```base

void main() {
 
  List<int> numbers = [1, 2, 3, 4, 5];

  numbers[0] = 10;
  numbers[3] = 40;

  print('Updated list: $numbers'); 

  numbers.add(6);
  print('List after adding an element: $numbers');


  numbers.removeAt(2);
  print('removing element is : $numbers');

  print('Iterating through the list:');

  for (int number in numbers)
  {
    print(number);
  }

}

```

## Example of Map :
 ```base

void main() {

  Map<String, int> studentAges = {
    'Manav': 20,
    'Divyesh': 22,
    'Prem': 21,
  };

  print('Alice\'s age: ${studentAges['Alice']}'); 
  print('Bob\'s age: ${studentAges['Bob']}');

  studentAges['Alice'] = 21;
  print('Updated map: $studentAges'); 

  studentAges['David'] = 19;
  print('Map after adding : $studentAges'); 

  studentAges.remove('Charlie');
  print('Map after removing : $studentAges');

}

```
- ## Generics
  
- Generics are denoted by using angle brackets < > and a type parameter. The type parameter represents a placeholder for a specific type that will be provided when using the generic code.
