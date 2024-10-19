enum Skill { FLUTTER, DART, OTHER }

class Address {
  final String street;
  final String city;
  final String zipCode;

  Address(this.street, this.city, this.zipCode);
}

class Employee {
  final String name;
  final double baseSalary;
  final List<Skill> skills;
  final Address address;
  final int yearsOfExperience;

  Employee({
    required this.name,
    required this.baseSalary,
    required this.skills,
    required this.address,
    required this.yearsOfExperience,
  });

  double calculateSalary() {
    double totalSalary = baseSalary + (yearsOfExperience * 12600);
    for (var skill in skills) {
      switch (skill) {
        case Skill.FLUTTER:
          totalSalary += 55000;
          break;
        case Skill.OTHER:
          totalSalary += 1000;
          break;
        case Skill.DART:
          
      }
    }
    return totalSalary;
  }

  void printDetails() {
    print(
        'Employee: $name, Base Salary: \$${baseSalary}, Skills: ${skills.join(', ')}, Address: ${address.street}, ${address.city}, ${address.zipCode}, Years of Experience: $yearsOfExperience, Total Salary: \$${calculateSalary()}');
  }

  factory Employee.mobileDeveloper(String name, double baseSalary, int yearsOfExperience) {
    return Employee(
        name: name,
        baseSalary: baseSalary,
        skills: [Skill.FLUTTER, Skill.DART],
        address: Address("", "", ""), // Replace with actual address details
        yearsOfExperience: yearsOfExperience);
  }
}

void main() {
  var emp1 = Employee(
      name: 'Gechleang',
      baseSalary: 40000,
      skills: [Skill.DART, Skill.OTHER],
      address: Address("61", "Phnom Penh", "Cambodia"),
      yearsOfExperience: 1);
  emp1.printDetails();

  var emp2 = Employee.mobileDeveloper('Liya', 45000, 2);
  emp2.printDetails();
}
