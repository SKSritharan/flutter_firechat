import 'package:firechat/helpers/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:firechat/helpers/theme/app_theme.dart';
import 'package:firechat/helpers/utils/generator.dart';
import 'package:firechat/helpers/widgets/my_container.dart';
import 'package:firechat/helpers/widgets/my_spacing.dart';
import 'package:firechat/helpers/widgets/my_text.dart';
import 'package:firechat/helpers/widgets/my_text_style.dart';
import 'package:firechat/widgets/full_image_screen.dart';
import 'package:provider/provider.dart';

import '../helpers/theme/app_notifier.dart';
import '../helpers/theme/theme_type.dart';
import './chat_contact_screen.dart';
import './chat_create_group_screen.dart';
import './chat_profile_screen.dart';
import './chat_screen.dart';

class ChatHomeScreen extends StatefulWidget {
  const ChatHomeScreen({super.key});

  @override
  State<ChatHomeScreen> createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen> {
  late ThemeData theme;
  late CustomTheme customTheme;
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  bool isDark = false;
  TextDirection textDirection = TextDirection.ltr;

  void changeDirection() {
    if (AppTheme.textDirection == TextDirection.ltr) {
      Provider.of<AppNotifier>(context, listen: false)
          .changeDirectionality(TextDirection.rtl);
    } else {
      Provider.of<AppNotifier>(context, listen: false)
          .changeDirectionality(TextDirection.ltr);
    }
    setState(() {});
  }

  void changeTheme() {
    if (AppTheme.themeType == ThemeType.light) {
      Provider.of<AppNotifier>(context, listen: false)
          .updateTheme(ThemeType.dark);
    } else {
      Provider.of<AppNotifier>(context, listen: false)
          .updateTheme(ThemeType.light);
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    customTheme = AppTheme.customTheme;
    theme = AppTheme.theme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
            drawer: _buildDrawer(),
        body: ListView(
      padding: MySpacing.zero,
      children: <Widget>[
        Container(
          color: theme.colorScheme.primary,
          padding: MySpacing.fromLTRB(0, 42, 0, 32),
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: <Widget>[
              Container(
                margin: MySpacing.left(32),
                child: MyText.headlineSmall("Chats",
                    color: theme.colorScheme.onPrimary, fontWeight: 700),
              ),
              Container(
                margin: MySpacing.top(16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: MySpacing.left(20),
                        child: singleOption(
                            title: "New Chat",
                            navigation: ChatContactScreen(),
                            icon: LucideIcons.plus),
                      ),
                      Container(
                        margin: MySpacing.left(20),
                        child: singleOption(
                            title: "Groups",
                            navigation: ChatCreateGroupScreen(),
                            icon: LucideIcons.users),
                      ),
                      Container(
                        margin: MySpacing.horizontal(20),
                        child: singleOption(
                            title: "Account",
                            navigation: ChatProfileScreen(),
                            icon: LucideIcons.user),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: theme.colorScheme.primary,
          child: Container(
            decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            padding: MySpacing.all(20),
            child: Column(
              children: <Widget>[
                MyContainer(
                  borderRadiusAll: 4,
                  padding: MySpacing.all(8),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 16),
                          child: TextFormField(
                            style: MyTextStyle.bodyMedium(
                                letterSpacing: 0,
                                color: theme.colorScheme.onBackground,
                                fontWeight: 500),
                            decoration: InputDecoration(
                              hintText: "Search messages",
                              hintStyle: MyTextStyle.bodyMedium(
                                  letterSpacing: 0,
                                  color: theme.colorScheme.onBackground,
                                  fontWeight: 500),
                              border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  borderSide: BorderSide.none),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  borderSide: BorderSide.none),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  borderSide: BorderSide.none),
                              isDense: true,
                              contentPadding: const EdgeInsets.all(0),
                            ),
                            textInputAction: TextInputAction.search,
                            textCapitalization: TextCapitalization.sentences,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                        child: Icon(
                          LucideIcons.search,
                          color: theme.colorScheme.onPrimary,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: MySpacing.top(20),
                  child: singleChat(
                      image: './assets/images/profile/avatar_1.jpg',
                      time: "12:34 AM",
                      badgeNumber: "2",
                      message: Generator.getDummyText(5),
                      isNew: true,
                      name: "Alice Henry",
                      isActive: true),
                ),
                Container(
                    margin: MySpacing.vertical(16),
                    child: const Divider(
                      height: 0,
                    )),
                singleChat(
                    image: './assets/images/profile/avatar_4.jpg',
                    time: "8:12 PM",
                    message: Generator.getDummyText(5),
                    isNew: true,
                    badgeNumber: "4",
                    name: "Jevon Shah"),
                Container(
                    margin: MySpacing.vertical(16),
                    child: const Divider(
                      height: 0,
                    )),
                singleChat(
                    image: './assets/images/profile/avatar_3.jpg',
                    isNew: false,
                    time: "5:30 AM",
                    message: Generator.getDummyText(5),
                    name: "Susie Salter"),
                Container(
                    margin: MySpacing.vertical(16),
                    child: const Divider(
                      height: 0,
                    )),
                singleChat(
                    image: './assets/images/profile/avatar_2.jpg',
                    isNew: false,
                    time: "1:20 PM",
                    message: Generator.getDummyText(5),
                    name: "Kaylen Lamb",
                    isActive: true),
                Container(
                    margin: MySpacing.vertical(16),
                    child: const Divider(
                      height: 0,
                    )),
                singleChat(
                    image: './assets/images/profile/avatar_5.jpg',
                    isNew: false,
                    time: "7:10 AM",
                    message: Generator.getDummyText(5),
                    name: "Joey Callaghan",
                    isActive: true),
                Container(
                    margin: MySpacing.vertical(16),
                    child: const Divider(
                      height: 0,
                    )),
                singleChat(
                    image: './assets/images/profile/avatar.jpg',
                    isNew: false,
                    time: "7:10 AM",
                    message: Generator.getDummyText(5),
                    name: "Joel Holman"),
              ],
            ),
          ),
        )
      ],
    ));
  }

  void _showFullImage(String imagePath, String imageTag) {
    Navigator.of(context).push(PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) => FullImageScreen(
              imagePath: imagePath,
              imageTag: imageTag,
              backgroundOpacity: 200,
            )));
  }

  Widget singleChat(
      {required String image,
      required String name,
      required String message,
      required String time,
      String? badgeNumber,
      bool isNew = false,
      bool isActive = false}) {
    String tag = image + name;

    Widget badgeWidget = badgeNumber == null
        ? Container()
        : Container(
            padding: MySpacing.all(6),
            decoration: BoxDecoration(
                color: theme.colorScheme.primary, shape: BoxShape.circle),
            child: MyText.bodySmall(badgeNumber,
                fontSize: 12, color: theme.colorScheme.onPrimary),
          );

    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatScreen()));
      },
      child: Row(
        children: <Widget>[
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(26)),
                child: InkWell(
                  onTap: () {
                    _showFullImage(image, tag);
                  },
                  child: Hero(
                    tag: tag,
                    transitionOnUserGestures: true,
                    child: Image(
                      image: AssetImage(image),
                      height: 52,
                      width: 52,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              isActive
                  ? Positioned(
                      bottom: 2,
                      right: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: customTheme.card, width: 2),
                            shape: BoxShape.circle),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: customTheme.colorSuccess,
                              shape: BoxShape.circle),
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
          Expanded(
            child: Container(
              margin: MySpacing.left(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MyText.bodyLarge(name,
                      color: theme.colorScheme.onBackground,
                      fontWeight: isNew ? 600 : 500),
                  MyText.bodyMedium(message,
                      color: theme.colorScheme.onBackground,
                      fontWeight: isNew ? 600 : 500,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          ),
          Container(
            margin: MySpacing.left(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                MyText.bodySmall(time,
                    color: theme.colorScheme.onBackground,
                    letterSpacing: -0.2,
                    fontWeight: isNew ? 600 : 500),
                badgeWidget
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget singleOption(
      {IconData? icon, required String title, Widget? navigation}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigation!));
      },
      child: Container(
        width: 120,
        decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withAlpha(90),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        padding: MySpacing.fromLTRB(16, 16, 0, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  color: theme.colorScheme.onPrimary),
              padding: MySpacing.all(2),
              child: Icon(
                icon,
                size: 18,
                color: theme.colorScheme.primary,
              ),
            ),
            Container(
              margin: MySpacing.top(8),
              child:
                  MyText.titleSmall(title, color: theme.colorScheme.onPrimary),
            )
          ],
        ),
      ),
    );
  }


  Widget _buildDrawer() {
    return MyContainer.none(
      margin:
          MySpacing.fromLTRB(16, MySpacing.safeAreaTop(context) + 16, 16, 16),
      borderRadiusAll: 4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: theme.scaffoldBackgroundColor,
      child: Drawer(
          child: Container(
        color: theme.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: MySpacing.only(left: 20, bottom: 0, top: 24, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  MyContainer(
                    padding: MySpacing.fromLTRB(12, 4, 12, 4),
                    borderRadiusAll: 4,
                    color: theme.colorScheme.primary.withAlpha(40),
                    child: MyText.bodyLarge("v15",
                        color: theme.colorScheme.primary,
                        fontWeight: 700,
                        letterSpacing: 0.2),
                  ),
                  MySpacing.height(16),
                  MyText.bodyMedium("Flutter 3.13 (Latest)",
                      fontWeight: 600, letterSpacing: 0.2),
                ],
              ),
            ),
            MySpacing.height(32),
            Container(
              margin: MySpacing.x(20),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      changeTheme();
                    },
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Row(
                      children: [
                        MyContainer(
                          paddingAll: 12,
                          borderRadiusAll: 4,
                          color: CustomTheme.occur.withAlpha(20),
                          child: Icon(
                            !isDark ? Icons.dark_mode : Icons.light_mode,
                            size: 20,
                            color: CustomTheme.occur,
                          ),
                        ),
                        MySpacing.width(16),
                        Expanded(
                          child: MyText.bodyLarge(
                            !isDark ? 'dark_mode'.tr() : 'light_mode'.tr(),
                          ),
                        ),
                        MySpacing.width(16),
                        Icon(
                          LucideIcons.chevronRight,
                          size: 18,
                          color: theme.colorScheme.onBackground,
                        ).autoDirection(),
                      ],
                    ),
                  ),
                  MySpacing.height(20),
                  InkWell(
                    onTap: () {
                      changeDirection();
                    },
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Row(
                      children: [
                        MyContainer(
                          paddingAll: 12,
                          borderRadiusAll: 4,
                          color: CustomTheme.skyBlue.withAlpha(20),
                          child: Icon(
                            AppTheme.textDirection == TextDirection.ltr
                                ? Icons.format_textdirection_r_to_l
                                : Icons.format_textdirection_l_to_r,
                            size: 20,
                            color: CustomTheme.skyBlue,
                          ),
                        ),
                        MySpacing.width(16),
                        Expanded(
                          child: MyText.bodyLarge(
                            AppTheme.textDirection == TextDirection.ltr
                                ? "${'right_to_left'.tr()} (RTL)"
                                : "${'left_to_right'.tr()} (LTR)",
                          ),
                        ),
                        MySpacing.width(16),
                        Icon(
                          LucideIcons.chevronRight,
                          size: 18,
                          color: theme.colorScheme.onBackground,
                        ).autoDirection(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MySpacing.height(20),
            const Divider(
              thickness: 1,
            ),
            ],
        ),
      )),
    );
  }

}
