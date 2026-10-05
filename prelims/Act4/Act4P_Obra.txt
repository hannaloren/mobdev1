void main() {
String firstName = "Hanna Loren";
String lastName = "Obra";
String fullName = firstName + " " + lastName;
print("$firstName $lastName");


String language = "Dart";
print(language.length);

String text1 = "welcome to Dart!!";
print(text1.toUpperCase());

String text2 = "WELCOME TO DART!";
print(text2.toLowerCase());

String text3 = " Welcome   to   Dart! ";
print(text3.trim());

String text4 = "skibidi";
print(text4.contains("ibi"));
print(text4.startsWith("ski"));
print(text4.endsWith("idi"));


String text5 = "I use Java";
String result1 = text5.replaceAll("Java", "Dart");
print(result1);

String text6 = "Hello World";
print(text6.substring(0, 5));


String fruits = "Apple,Banana,Orange";
List<String> result2 = fruits.split(",");
print(result2);
}