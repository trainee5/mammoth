class SampleModel {

  String name;
  String image;
  String id;
  String title;

  SampleModel({required this.name, required this.image, required this.id,required this.title});




   static List<SampleModel> cateItem = [
    SampleModel(
        name: 'Doctors',
        image:
        'null',
        id: '1',
      title: 'More than 100 jobs',
    ),
    SampleModel(
        name: 'Assistant',
        image:
        'null',
        id: '2',
      title: 'More than 40 jobs'),
    SampleModel(
        name: 'Design',
        image:
        'null',
        id: '3',
      title: 'More than 20 jobs'),
    SampleModel(
        name: 'Care',
        image:
        'null',
        id: '4',
      title: 'More than 250 jobs')
  ];





}