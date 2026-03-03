import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kcal/core/theme/icon/app_icon.dart';
import 'package:kcal/core/theme/image/app_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Profile'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(radius: 80, backgroundImage: AppImage.umar),
            ),
            SizedBox(height: 10),
            Text(
              'Umar Khabibullayev',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Signika-VariableFont',
              ),
            ),
            SizedBox(height: 10),
            ProfileMenuItem(
              iconData: AppIcon.profileSetting,
              title: 'Edit Profile',
              onTab: () {}
            ),
            SizedBox(height: 5,),
            ProfileMenuItem(
              iconData: AppIcon.setting,
              title: 'Settings',
              onTab: () {}
            ),
            SizedBox(height: 5,),
            ProfileMenuItem(
              iconData: AppIcon.star,
              title: 'Rate Us',
              onTab: () {}
            ),
            SizedBox(height: 5,),
            ProfileMenuItem(
              iconData: AppIcon.text,
              title: 'Terms & Conditions',
              onTab: () {}
            ),
            SizedBox(height: 5,),
            ProfileMenuItem(
              iconData: AppIcon.logout,
              title: 'Logout',
              onTab: () {}
            ),


          ],
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final Widget iconData;
  final String title;
  final Function() onTab;

  const ProfileMenuItem({
    super.key,
    required this.iconData,
    required this.title,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12)),
      leading: SizedBox(
        width: 24,
        height: 24,
        child: Center(child: iconData,),
      ),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTab,
    );
  }
}
