import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/setting_pages/my_account_pages/my_account_page.dart';
import 'package:tambalin_app/setting_pages/separated_index.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: tambalinPrimary,
            onPressed: () => Navigator.pop(context),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 2.w,
              ),
              const Text(
                'Pengaturan',
                style: TextStyle(
                  color: tambalinBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
            ],
          ),
        ),
        body: SettingsList(
          lightTheme: const SettingsThemeData(
              tileDescriptionTextColor: Colors.grey,
              dividerColor: Colors.black,
              settingsSectionBackground: Colors.white,
              settingsListBackground: Color(0xFFF7F8FA)),
          sections: [
            SettingsSection(title: const SizedBox(height: 0), tiles: [
              SettingsTile(
                title: Text(
                  'Uchiha Randa',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                ),
                description: const Text('Gold Member'),
                leading: Container(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                  child: const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.black26,
                    child: Icon(
                      Icons.person,
                      size: 45,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: (BuildContext context) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyAccount();
                  }));
                },
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ]),
            SettingsSection(
              title: const SizedBox(height: 0),
              tiles: settingItems.take(3).map((item) {
                return SettingsTile(
                  leading: Container(
                    width: 10.w,
                    height: 4.5.h,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: item.color,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Icon(
                      item.icon,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  title: Text(
                    item.title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.grey,
                  ),
                  onPressed: (BuildContext context) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return item.location;
                    }));
                  },
                );
              }).toList(),
            ),
            SettingsSection(
              tiles: settingItems.sublist(3, 6).map((item) {
                return SettingsTile(
                  leading: Container(
                    width: 10.w,
                    height: 4.5.h,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: item.color,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Icon(
                      item.icon,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  title: Text(
                    item.title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.grey,
                  ),
                  onPressed: (BuildContext context) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return item.location;
                    }));
                  },
                );
              }).toList(),
            ),
          ],
        ),
      );
    });
  }
}
