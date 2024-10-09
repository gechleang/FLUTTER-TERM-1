void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  // You code
  List<int> passedStudents = scores.where((score) => score >= 50).toList();

  // Printing the list of passed students and the number of students who passed
  print(passedStudents);
  print('${passedStudents.length} students passed');
}

}