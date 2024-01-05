import 'package:my_portfolio/core/themes/app_images.dart';

class Project {
  final String? title, description, img,url;

  Project({this.title, this.description, this.img, this.url});
}

List<Project> demoProjects = [
  Project(
    img: AppImages.imgCaptureMeClient,
    url: "https://play.google.com/store/apps/details?id=com.samuraidev.captureme",
    title: "CaptureMe (client app) you can hire photographer",
    description:
        """You can find and hire photographers closest to your location with this app. 
The app has features like chat, push notification, map and more.""",
  ),
  Project(
    img: AppImages.imgCaptureMePhotgraper,
    url: "https://play.google.com/store/apps/details?id=uz.samuraidev.capturemecreator",
    title: "CaptureMe (photographer app) you can work as photographer",
    description:
        """You can build a photography business and earn money on this app. 
The application has features such as chat, map, push notification and more.""",
  ),
  Project(
    img: AppImages.imgBlinq,
    url: "https://apps.apple.com/uz/app/blinq-app/id6446248161",
    title: "BLINQ app - for an international company",
    description:
        """The app is integrated with the BLINQ bluetooth device. Through the application, the user collects information about the accident that happened to him and can call an ambulance.
It has the following functions: 
emergency call, can mark the damaged parts of the car, upload data through sound, image and text and spare parts can be ordered, etc.""",
  ),
  Project(
    img:  AppImages.imgSpa,
    title: "Luxe Spa admin - for Luxe spa website admin",
    description:
        "It has the ability to open a chat, profile and update it, register using a specially given login and password, and use its features.",
  ),
  Project(
    img:  AppImages.imgMyJudogi,
    url: "https://samurainet.tilda.ws/myjudogi",
    title: "My judogi app - for International Judo Federation",
    description:
        """This mobile application can be used by kimono manager and athlete. 
Kimono Manager in the app: Can use NFC, get information about competitions and athletes registered in them, and check athlete using NFC.
Athlete: Can use NFC, He can add kimonos, register for competitions, get information about competitions and receive notifications.""",
  ),
  Project(
    img:  AppImages.imgUzbEsp,
    url:  "https://play.google.com/store/apps/details?id=com.miraziz.uzbesp",

    title: "UZ-ESP translater",
    description:
        """In this program, you can use the Spanish language independently and, importantly, without the Internet, in a design that is convenient for you.""",
  ),
  Project(
    img:  AppImages.clientUnihostel,
    url:  "https://tma.uz/2023/07/31/unihostel-platformasiga-shaxsiy-ma-lumotlarni-o-zgartirish-bo-limi-qo-shildi-ushbu-bo-limda-siz-telefon-raqam-yashash-manzili-guruh-kurs-va-boshqa-o-zgarishlarni-amalga-oshirishingiz-mumkin-ma/",
    title: "Uni hostel Website - for TMA",
    description:
        """I worked on the problems and updates that arose in this project.
More than 4,000 students of the Tashkent Medical Academy are using this platform to book accommodation and make payments.""",
  ),
  Project(
    img:  AppImages.imgAdminUnhostel,
    title: "Admin Uni hostel Website - for TMA",
    description:
        """More than 20 employees are using the admin website to track requests. Admin website for monitoring of the online registration platform for students of the Tashkent Medical Academy to live in the dormitory of the academy. I am still working to provide technical support for future changes and issues.""",
  ),
];
