import 'package:mammoth/app/Utils/icon_path.dart';

class RecentFile {
  final String? icon, name, email, status, resume;

  RecentFile({this.icon, this.name, this.email, this.status, this.resume});


}

List demoRecentFiles = [
  RecentFile(
    icon: IconPath.profileConstLogo,
    name: "John Doe",
    email: "Johndoe1@gmail.com",
    status: "Pending",
    resume: "3.5mb",
  ),
  RecentFile(
    icon: IconPath.profileConstLogo,
    name: "John Doe",
    email: "Johndoe1@gmail.com",
    status: "Hired",
    resume: "19.0mb",
  ),
  RecentFile(
    icon:  IconPath.profileConstLogo,
    name: "John Doe",
    email: "Johndoe1@gmail.com",
    status: "Under Review",
    resume: "32.5mb",
  ),
  RecentFile(
    icon:  IconPath.profileConstLogo,
    name: "John Doe",
    email: "Johndoe1@gmail.com",
    status: "Pending",
    resume: "3.5mb",
  ),
  RecentFile(
    icon:  IconPath.profileConstLogo,
    name: "John Doe",
    email: "Johndoe1@gmail.com",
    status: "Hired",
    resume: "2.5gb",
  ),
  RecentFile(
    icon:  IconPath.profileConstLogo,
    name: "John Doe",
    email: "Johndoe1@gmail.com",
    status: "Under Review",
    resume: "3.5mb",
  ),
  RecentFile(
    icon:  IconPath.profileConstLogo,
    name: "John Doe",
    email: "Johndoe1@gmail.com",
    status: "Pending",
    resume: "34.5mb",
  ),
];
