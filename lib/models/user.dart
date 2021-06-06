class User {
  int _id;
  String _name;
  String _email;
  String _pass;
  String _age;
  String _phone;
  User(this._email, this._pass);
  User.reg(this._email, this._name, this._pass, this._age, this._phone);
  User.withID(
      this._id, this._name, this._email, this._pass, this._age, this._phone);

  int get id => _id;
  String get name => _name;
  String get email => _email;
  String get pass => _pass;
  String get age => _age;
  String get phone => _phone;

  set name(String name) {
    this._name = name;
  }

  set email(String email) {
    this._email = email;
  }

  set pass(String pass) {
    this._pass = pass;
  }

  set age(String age) {
    this._age = age;
  }

  set phone(String phone) {
    this._phone = phone;
  }

  Map toMap() {
    Map map;
    if (this._id != null) {
      map['id'] = this._id;
    }
    map['name'] = this._name;
    map['email'] = this._email;
    map['pass'] = this._pass;
    map['age'] = this._age;
    map['phone'] = this._phone;
    return map;
  }

  User.fromMap(Map map) {
    this._id = map['id'];
    this._email = map['email'];
    this._name = map['name'];
    this._pass = map['pass'];
    this._age = map['age'];
    this._phone = map['phone'];
  }
}
