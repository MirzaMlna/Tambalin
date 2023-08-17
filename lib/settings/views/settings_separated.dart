import 'package:flutter/material.dart';

import 'package:tambalin_app/settings/views/setiings_view.dart';
import 'package:tambalin_app/utlis/tambalin_icons.dart';

class Settings {
  Color? color;
  IconData icon;
  String title;
  Widget location;

  Settings(
    this.color,
    this.icon,
    this.title,
    this.location,
  );
}

List settingItems = [
  Settings(Colors.greenAccent, Tambalin.id_contact, 'Atur Dokumen',
      const SettingsPage()),
  Settings(Colors.yellow[700], Tambalin.favorites, 'Penilaian',
      const SettingsPage()),
  Settings(Colors.blueAccent, Tambalin.place, 'Bahasa', const SettingsPage()),
  Settings(Colors.lightBlueAccent, Tambalin.notification, 'Notifikasi',
      const SettingsPage()),
  Settings(
      Colors.grey, Tambalin.vip_center, 'Syarat & Ketentuan', const SettingsPage()),
  Settings(Colors.pinkAccent, Icons.help, 'Hubungi Kami', const SettingsPage()),
];
