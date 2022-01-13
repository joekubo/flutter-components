class User {
  String firstName;
  String lastName;

  User({required this.firstName, required this.lastName});

  static List<User> getUsers() {
    return <User>[
      User(firstName: "Joseph", lastName: "Tolah"),
      User(firstName: "Flavious", lastName: "Mideva"),
      User(firstName: "Clinton", lastName: "Opiyo"),
      User(firstName: "Anna", lastName: "Katumbe"),
      User(firstName: "Susan", lastName: "Nazi"),
    ];
  }
}
