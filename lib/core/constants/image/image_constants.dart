// ignore_for_file: non_constant_identifier_names
class ImageConstants {
  static ImageConstants _instance;
  static ImageConstants get instance =>  _instance ??= ImageConstants._init();
  ImageConstants._init();

  //String get image => toPng('image.png');

  String toPng(String name) => 'assets/images/$name';
}
