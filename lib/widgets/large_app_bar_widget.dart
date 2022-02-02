import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resume/constants/app_constants.dart';
import 'package:resume/providers/project_provider.dart';
import 'package:url_launcher/url_launcher.dart';

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
            ProjectProvider.selectProject(-1);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/me.jpg',
                    height: 40,
                  ),
                ),
              ),
              Text(
                'AbdullahI Addow',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black, fontSize: 18),
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
                  valueListenable: ProjectProvider.selectedIndexNotifier,
                  builder: (context, int selectedIndex, _) {
                    return InkWell(
                      onTap: () {
                        ProjectProvider.selectProject(-1);
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
              InkWell(
                onTap: () {
                  launch(AppConstants.githubProfile);
                },
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/images/github.svg',
                    color: Colors.blue,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  launch(AppConstants.linkedInProfile);
                },
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset('assets/images/linkedin.svg'),
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  launch(AppConstants.twitterProfile);
                },
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/images/twitter.svg',
                    height: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
