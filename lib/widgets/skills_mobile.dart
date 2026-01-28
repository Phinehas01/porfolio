import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// DEV TYPES CARD
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: CustomColor.bgLight2,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: const [
                _SkillRow(
                  icon: Icons.android,
                  title: "Android Dev",
                ),
                _SkillRow(
                  icon: Icons.apple,
                  title: "iOS Dev",
                ),
                _SkillRow(
                  icon: Icons.language,
                  title: "Web Dev",
                ),
                _SkillRow(
                  icon: Icons.desktop_windows_outlined,
                  title: "Desktop Dev",
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          /// SKILL CHIPS
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              for (final skill in skillItems)
                Chip(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  backgroundColor: CustomColor.bgLight2,
                  avatar: Image.asset(
                    skill["img"],
                    width: 20,
                    height: 20,
                  ),
                  label: Text(
                    skill["title"],
                    style: TextStyle(
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SkillRow extends StatelessWidget {
  final IconData icon;
  final String title;

  const _SkillRow({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: CustomColor.whitePrimary),
          const SizedBox(width: 12),
          Text(
            title,
            style: TextStyle(
              color: CustomColor.whitePrimary,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
