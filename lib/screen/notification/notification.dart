import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: Text(
          'Notification Preference',
          style: AppStyles.homeAppBarTextStyle
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff062B2E),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                //crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.notifications_outlined,
                    color: AppStyles.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Not receiving any push Notification?',
                    style: AppStyles.whiteTextStyle
                        .copyWith(color: Colors.white, fontSize: 13),
                  ),
                  const Spacer(),
                  Switch.adaptive(
                    activeColor: AppStyles.primary,
                    value: _switchValue,
                    onChanged: (newValue) {
                      setState(() {
                        _switchValue = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
