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
    title: "An E-commerce app",
    subtitle:
        "An E-commerce app that you can order your goods directly. This is developed with Flutter.",
    androidLink:
        "https://www.behance.net/gallery/242908265/E-commerce-Web-View-app-in-Flutter/modules/1401148295",
    iosLink:
        "https://www.behance.net/gallery/242908265/E-commerce-Web-View-app-in-Flutter/modules/1401148295",
    webLink:
        "https://www.behance.net/gallery/242908265/E-commerce-Web-View-app-in-Flutter/modules/1401148295",
  ),
  ProjectUtils(
    image: "assets/crytoui.PNG",
    title: "Crypto Wallet Landing page",
    subtitle:
        "This a Crypto wallet landing page developed with Flutter. it's giving that Web3 vibes",
    androidLink:
        "https://play.google.com/store/apps/details?id=com.example.taskmanagerhttps://www.behance.net/gallery/242908265/E-commerce-Web-View-app-in-Flutter",
    iosLink:
        "https://www.behance.net/gallery/242908265/E-commerce-Web-View-app-in-Flutter",
    webLink:
        "https://www.behance.net/gallery/242908265/E-commerce-Web-View-app-in-Flutter/modules/1401148295",
  ),
];
List<ProjectUtils> graphicsProjectUtils = [
  ProjectUtils(
    image: "assets/portfolio.png",
    title: "Portfolio Landing page",
    subtitle:
        "A portfolio landing page for Phinex Digitals services. This was design with Figma.",
    webLink:
        "https://www.behance.net/gallery/243149039/Portfolio/modules/1402731681",
  ),
  ProjectUtils(
    image: "assets/Choppings.png",
    title: "Food Ordering Website",
    subtitle:
        "A restaurant food ordering website landing page that list available dishes so as ustomers can place order.",
    webLink:
        "https://www.behance.net/gallery/222204289/Food-Hero-Section/modules/1268180319",
  ),
  ProjectUtils(
    image: "assets/Mobile.png",
    title: "Music Streaming App",
    subtitle:
        "Music streaming apps with different screens for music streaming app design with Figma.",
    webLink:
        "https://www.behance.net/gallery/220440445/Music-Streaming-App-UI/modules/1257175431",
  ),
  ProjectUtils(
    image: "assets/house.png",
    title: "House Website",
    subtitle:
        "A house booking and rental website landing page design with Figma.",
    webLink:
        "https://www.behance.net/gallery/243143063/House-shortlet-and-rent-design/modules/1402693379",
  ),
  ProjectUtils(
    image: "assets/socials.png",
    title: "Social Followings",
    subtitle:
        "A social media following name fliers for advertisement design with Canva.",
    webLink:
        "https://www.behance.net/gallery/243142559/Social-Media-Design/modules/1402689773",
  ),
  ProjectUtils(
    image: "assets/flyer.png",
    title: "Graduation Flier",
    subtitle:
        "A Graduation cover flier for a final year student design with Canva.",
    webLink:
        "https://www.behance.net/gallery/243142773/Flyer-design/modules/1402691067",
  ),
];
