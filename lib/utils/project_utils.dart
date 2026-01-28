class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

//App Projects List

List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: "assets/Shopapp.PNG",
    title: "Crypto Onboarding App",
    subtitle: "A simple weather forecasting app using OpenWeatherMap API.",
    androidLink:
        "https://www.behance.net/gallery/242907959/Desktop-view-of-crypto-onboarding-screen-app",
    iosLink:
        "https://www.behance.net/gallery/242907959/Desktop-view-of-crypto-onboarding-screen-app",
  ),
  ProjectUtils(
    image: "assets/images/project2.png",
    title: "Task Manager",
    subtitle: "An app to manage daily tasks with reminders and notifications.",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.example.taskmanagerhttps://www.behance.net/gallery/242908265/E-commerce-Web-View-app-in-Flutter",
    iosLink:
        "https://www.behance.net/gallery/242908265/E-commerce-Web-View-app-in-Flutter",
  ),
  ProjectUtils(
    image: "assets/images/project3.png",
    title: "Fitness Tracker",
    subtitle: "Track your workouts and monitor your progress over time.",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.example.fitnesstracker",
    iosLink: "https://apps.apple.com/app/id1122334455",
  ),
];
