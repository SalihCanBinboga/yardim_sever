// ignore_for_file: non_constant_identifier_names
class ImageConstants {
  static ImageConstants _instance;
  static ImageConstants get instance =>  _instance ??= ImageConstants._init();
  ImageConstants._init();

  String get icGetHelp => toPng('get_help.png');
  String get icHelp => toPng('help.png');
  String get icAccount => toPng('account.png');

  String toPng(String name) => 'assets/images/$name';
}
