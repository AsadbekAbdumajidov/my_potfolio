class EducationsModel {
  final String? name, source, text;

  EducationsModel({this.name, this.source, this.text});
}

final List<EducationsModel> demoEducationsModels = [
  EducationsModel(
    name: "Najot Ta'lim - Foundation",
    source: "June 2021 - October 2021",
    text:
        "In this course I learned c and phyton programming languages. \nActivities and societies: Leetcode problems, algorithms and real projects.",
  ),
  EducationsModel(
    name: "Najot Ta'lim - flutter Bootcamp",
    source: "November 2021 - April 2022",
    text:
        "I learned programming and mobile programming from scratch and less backend programming. I participated in a real project with Flutter and got experience with clean code and high technology.",
  ),
];
