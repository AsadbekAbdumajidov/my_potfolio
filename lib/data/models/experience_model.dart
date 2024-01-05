import 'package:my_portfolio/core/themes/app_images.dart';

class ExperienceModel {
  final String? name, source, text, img;

  ExperienceModel({this.name, this.source, this.text, this.img});
}

final List<ExperienceModel> demoExperienceModels = [
  ExperienceModel(
    img: AppImages.imgSamuraiLogo,
    name: "Samurai Dev · Full-time",
    source: "April 2022 - November 2023 · 1 year 9 month",
    text: """• Iwrote international projects ni the Fluter programming language for Android and OiS devices and released themot hte Ap Store and Play market.
• Completed some of hte projects written by foreign programmers, updating them with clean and high-quality code.
• Ibecame the team leader of the mobile team. I have provided solutions for bugs
and updates that may occur in a team environment.""",
  ),
  ExperienceModel(
    img: AppImages.imgQCleyLogo,
    name: "QClay Design - UI/UX Design Agency · Part-time",
    source: "February 2023 - April 2023 · 3 month",
    text:
        """I developed several mobile applications of this company.
Translate designs and wireframes into high quality codes.
I wrote with splash animations and clean architecture shown in Figma.""",
  ),
  ExperienceModel(
    img: AppImages.imgTashkentMedicalAcademyLogo,
    name: "Tashkent Medical Academy · Part-time",
    source: "July 2023 - Present",
    text:
        """• I wrote 2 high-quality and responsive websites with flutter code. An online registration platform for students of the Tashkent Medical Academy to live in the dormitory of the academy and an Admin site for monitoring.
• I worked on the problems and updates that arose in this project.
More than 4,000 students of the Tashkent Medical Academy are using this platform to book accommodation and make payments.
• More than 20 employees are using the admin website to track requests. I am still working to provide technical support for future changes and issues.""",
  ),
  ExperienceModel(
    img: AppImages.imgDynamicuzLogo,
    name: "DYNAMIC SOFT (DYNC) · Full-time",
    source: "October 2023 - Present",
    text:
        """• I started working as a team leader in the company's mobile group. 
• I provided team management and high-tech solutions. 
• I worked on the development of the company's mobile team.""",
  ),
];
