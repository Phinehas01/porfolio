import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/customTextfield.dart';
import 'package:my_portfolio/widgets/drawerMobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, Constraints) {
        return Scaffold(
          key: ScaffoldKey,
          backgroundColor: CustomColor.ScaffoldBg,
          endDrawer: Constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              // if (Constraints.maxWidth >= kMinDesktopWidth)
              //   const HeaderDesktop()
              // else
              //   HeaderMobile(
              //     onLogoTap: () {},
              //     onMenuTap: () {
              //       ScaffoldKey.currentState?.openEndDrawer();
              //     },
              //   ),
              // if (Constraints.maxWidth >= kMinDesktopWidth)
              //   const MainDesktop()
              // else
              //   const MainMobile(),

              // //SKILLS
              // Container(
              //   width: screenWidth,
              //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              //   color: CustomColor.bgLight1,
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       Text(
              //         "My Skills",
              //         style: TextStyle(
              //           fontSize: 24,
              //           fontWeight: FontWeight.bold,
              //           color: CustomColor.whitePrimary,
              //         ),
              //       ),
              //       const SizedBox(height: 50),
              //       //skill widgets here
              //       if (Constraints.maxWidth >= kMedDesktopWidth)
              //         const SkillsDesktop()
              //       else
              //         const SkillsMobile(),
              //     ],
              //   ),
              // ),
              // //PROJECTS
              // const Projectdesktop(),
              const SizedBox(height: 30),
              //CONTACT
              Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  children: [
                    Text(
                      "Get in touch",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    SizedBox(height: 50),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 700),
                      child: Row(
                        children: [
                          Flexible(
                            child: CustomTextfield(hintText: "Your name"),
                          ),
                          SizedBox(width: 20),
                          Flexible(
                            child: CustomTextfield(hintText: "Your email"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 700),
                      child: CustomTextfield(
                        hintText: "Type your message here",

                        maxLine: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 700,
                      ),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColor.yellowSecondary,
                          ),
                          child: Text(
                            "Get in touch",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                   ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 300,
                      ),
                      child: const Divider()),
                      const SizedBox(height: 15,),
                      //Socials icon buttons

                  ],
                ),
              ),
              //FOOTER
              SizedBox(height: 500, width: double.infinity),
            ],
          ),
        );
      },
    );
  }
}
