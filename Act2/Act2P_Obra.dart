void main() {
  // 1
    int age = 18;
    double cmHeight = 1.56;
    int collegeYear = 2;
    String firstName = "Hanna Loren";
    String lastName = "Obra";
    bool hasPet = true;

  // 2
    print(age);
    print("Height: $cmHeight");
    print("Year Level: $collegeYear");
    print("First Name: $firstName");
    print("Last Name: $lastName");
    print("Has Pet: $hasPet");

  // 3.1 List
    List<int> listNumbers = [0, 2, 4, 6, 8];
    print(listNumbers);

  // 3.2 Set
    Set<int> setNumbers = {0, 3, 3, 3, 4};
    print(setNumbers);

  // 3.3 Map
    Map<String, String> student = {
        "name": "Hanna",
        "course": "BSCS",
        "year": "1st Year"
  };

    print("Map: $student");
    print("Student Name: ${student["name"]}");
}
