import 'package:account_example/screens/edit_screen.dart';
import 'package:account_example/widgets/forward_button.dart';
import 'package:account_example/widgets/setting_item.dart';
import 'package:account_example/widgets/setting_switch.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1D1D),
        leading: IconButton(
          color: const Color(0xffffffff),
          onPressed: () {},
          icon: const Icon(Ionicons.chevron_back_outline),
        ),
        leadingWidth: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                "Account",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFC107),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Image.asset("assets/avatar.png", width: 70, height: 70),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chamodh Vimukthi",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "thilina&gmail.com",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF434343),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Spacer(),
                        ForwardButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditAccountScreen(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Settings",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFDEDBDB),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SettingItem(
                    title: "Language",
                    icon: Ionicons.earth,
                    bgColor: const Color(0xFFDEDBDB),
                    iconColor: const Color(0xFF000000),
                    value: "English",
                    onTap: () {},
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFDEDBDB),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SettingItem(
                    title: "Notifications",
                    icon: Ionicons.notifications,
                    bgColor: const Color(0xFFDEDBDB),
                    iconColor: const Color(0xFF000000),
                    onTap: () {},
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 70,
                decoration: const BoxDecoration(
                    color: Color(0xFFDEDBDB),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SettingSwitch(
                    title: "Dark Mode",
                    icon: Ionicons.earth,
                    bgColor: const Color(0xFFDEDBDB),
                    iconColor: const Color(0xFF000000),
                    value: isDarkMode,
                    onTap: (value) {
                      setState(() {
                        isDarkMode = value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFDEDBDB),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SettingItem(
                    title: "Help",
                    icon: Ionicons.nuclear,
                    bgColor: const Color(0xFFDEDBDB),
                    iconColor: const Color(0xFF000000),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
