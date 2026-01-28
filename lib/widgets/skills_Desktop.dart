import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 450),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: CustomColor.bgLight2,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      title: Text(
                        "Android Dev",
                        style: TextStyle(color: CustomColor.whitePrimary),
                      ),
                      leading: Icon(
                        Icons.android,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      title: Text(
                        "IOS Dev",
                        style: TextStyle(color: CustomColor.whitePrimary),
                      ),
                      leading: Icon(
                        Icons.apple,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      title: Text(
                        "Web Dev",
                        style: TextStyle(color: CustomColor.whitePrimary),
                      ),
                      leading: Icon(
                        Icons.language,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      title: Text(
                        "Desktop Dev",
                        style: TextStyle(color: CustomColor.whitePrimary),
                      ),
                      leading: Icon(
                        Icons.desktop_windows_outlined,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 50),
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 450),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    for (int i = 0; i < skillItems.length; i++)
                      Chip(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        backgroundColor: CustomColor.bgLight2,
                        label: Text(skillItems[i]["title"]),
                        avatar: Image.asset(skillItems[i]["img"]),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
