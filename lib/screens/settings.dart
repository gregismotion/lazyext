import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:gscreen/gscreen.dart';
import 'package:lazyext/app/background.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  final NotificationAction? action;
  const SettingsScreen({super.key, this.action});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    NotificationAction? action = widget.action;
    if (action != null) {
      context
          .push("/settings/${action.action}")
          .then((_) => SystemNavigator.pop());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GScreen(
      title: "Settings",
      child: ListView(
        children: [
          Consumer<ThemeProvider>(
            builder: (context, theme, _) {
              return FutureBuilder<bool>(
                future: theme.followSystem,
                builder: (context, systemSnapshot) {
                  return FutureBuilder<bool>(
                    future: theme.dark,
                    builder: (context, darkSnapshot) {
                      return Column(
                        children: [
                          SwitchListTile(
                            secondary:
                                const Icon(Icons.settings_brightness_rounded),
                            title: const Text("Follow system theme"),
                            value: systemSnapshot.data ?? true,
                            onChanged: (bool value) {
                              theme.setFollowSystem(value);
                            },
                          ),
                          SwitchListTile(
                            secondary: const Icon(Icons.dark_mode_rounded),
                            title: const Text("Dark theme"),
                            value: darkSnapshot.data ?? true,
                            onChanged: (systemSnapshot.data ?? true)
                                ? null
                                : (bool value) {
                                    theme.setDark(value);
                                  },
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.storage_rounded),
            title: const Text("Storage root"),
            onTap: () async {
              context.push("/settings/storageroot");
            },
          ),
          ListTile(
            leading: const Icon(Icons.download_rounded),
            title: const Text("Courses to fetch in background"),
            onTap: () {
              context.push("/settings/monitor");
            },
          ),
        ],
      ),
    );
  }
}
