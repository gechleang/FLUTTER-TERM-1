enum Skill { FLUTTER, DART, OTHER }

class Address {
  final String street;
  final String city;
  final String zipCode;
  Address({required this.street, required this.city, required this.zipCode});

  @override
  String toString() {
    return "street: ${street} city:${city} zipCode:${zipCode}";
  }
}

class Employee {
  final String? _name;
  double _baseSalary = 40000;
  List<Skill>? _skills;
  Address? _address;
  int? _yearsOfExperience;

  Employee(this._name, this._skills, this._address, this._yearsOfExperience);

  Employee.mobileDeveloper(
      this._name, this._address, this._yearsOfExperience, this._skills);

  String get name {
    return _name!;
  }

  double get salary {
    return this._baseSalary;
  }

  List<Skill> get skills {
    return this._skills!;
  }

  Address get address => this._address!;
  
  int get yearOfExperience => this._yearsOfExperience!;


  void yearExperience() {
    this._baseSalary = _baseSalary + (_yearsOfExperience! * 2000);
  }

  void bonus() {
    for (var skill in _skills!) {
      if (skill == Skill.FLUTTER) {
        this._baseSalary = _baseSalary + 5000;
      } else if (skill == Skill.DART) {
        this._baseSalary = _baseSalary + 3000;
      } else {
        this._baseSalary = _baseSalary + 1000;
      }
    }
  }

  void printDetails() {
    print('Employee: $_name, Base Salary: \$${_baseSalary}');
    print('Year experience: ${_yearsOfExperience} year');
    print('Skill :$_skills');
    print("Address :$_address");
  }
}

void main() {
  Address address = Address(street: '61', city: 'PhnomPenh', zipCode: '');
  var emp1 = Employee("Gechleang", [Skill.DART], address, 1);
  emp1.yearExperience();
  emp1.bonus();
  emp1.printDetails();
  print("\n");
  
  var emp2 = Employee.mobileDeveloper("Liya", address, 2, [Skill.FLUTTER]);
  emp2.yearExperience();
  emp2.bonus();
  emp2.printDetails();
}
