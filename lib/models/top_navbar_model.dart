class TopNavbarModel {

  String name;
  String id;

  TopNavbarModel({required this.name, required this.id});




   static List<TopNavbarModel> navItems = [
     TopNavbarModel(
        name: 'Dashboard',
        id: '1',),
     TopNavbarModel(
        name: 'Jobs',
        id: '2'),
     TopNavbarModel(
        name: 'Blog',
        id: '3',),
     TopNavbarModel(
        name: 'Subscription',
        id: '4',)
  ];





}