import 'package:flutter/material.dart';

import './footer_social_media_widget.dart';
import '../constants/app_constants.dart';
import '../providers/project_provider.dart';

class LargeAppBarWidget extends StatelessWidget {
  const LargeAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0.0,
      centerTitle: false,
      title: Container(
        width: MediaQuery.of(context).size.width / 6,
        padding: const EdgeInsets.only(right: 15),
        child: InkWell(
          onTap: () {
            selectedIndexNotifier.value = -1;
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    AppConstants.me,
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Text(
                  'Abdullahi Addow',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Row(
            children: [
              ValueListenableBuilder(
                  valueListenable: selectedIndexNotifier,
                  builder: (context, int selectedIndex, _) {
                    return InkWell(
                      onTap: () {
                        selectedIndexNotifier.value = -1;
                      },
                      child: Text(
                        'About',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: selectedIndex < 0
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                      ),
                    );
                  }),
              const SizedBox(width: 20),
              const FooterSocialMediaWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
