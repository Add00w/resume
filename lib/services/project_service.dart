import 'package:resume/models/project.dart';

class ProjectService {
  static List<Project> projects() {
    final projects = [
      Project(
        name: 'Carenal',
        logo: 'assets/images/Logo.svg',
        description:
            'Carenal is salon app which help salon owners to reach more customers in their area by allowing the customers to see and filter their nearest salons.We used Tap for payment, Sentry for error tracking, Google  map for showing salons to users and show path to them, firebase notification and integrated apple pay for iphones.',
        playStoreUrl:
            'https://play.google.com/store/apps/details?id=com.carenal.app',
        appStoreUrl: '',
      ),
      Project(
        name: 'Car details',
        logo: 'assets/images/car_details_logo.svg',
        description: 'Car details is an advertising app for vehicles',
        playStoreUrl:
            'https://play.google.com/store/apps/details?id=com.sa.bootfi.cardetails.android',
        appStoreUrl: '',
      ),
      Project(
        name: 'Jawhara Abaya Store',
        logo: 'assets/images/johrh_logo.jpeg',
        description:
            'Jawhara Abaya Store is the first application specialized in Abayas and Jalabiyas from the best types of Abaya cloth in the world.',
        playStoreUrl: '',
        appStoreUrl: '',
      ),
      Project(
        name: 'Dot Less',
        logo: 'assets/images/dotless.png',
        description:
            'This is a simple app which removes dots from arabic words, it keeps your history and allows you to copy too.',
        playStoreUrl:
            'https://play.google.com/store/apps/details?id=com.bootfi.dot_less',
        appStoreUrl: '',
      ),
    ];

    return projects;
  }
}
