import 'dart:io';

void main (List <String> arguments) {
print("Enter student name: ");
String name = stdin.readLineSync()!;

print("Enter student age: ");
int age = int.parse(stdin.readLineSync()!);

print("Enter student grade: ");
double grade = double.parse(stdin.readLineSync()!);

print("Enter student ID number: ");
num id = num.parse(stdin.readLineSync()!);

print("Student Program: ");
dynamic program = stdin.readLineSync()!;

print("Is student enrolled? ");
bool enrolled = bool.parse(stdin.readLineSync()!);
}