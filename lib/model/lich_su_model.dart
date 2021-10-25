class ModelLichSu {
  String ngay;
  List<itemModelLichsu> lan;

  ModelLichSu({required this.lan, required this.ngay});
}

class itemModelLichsu {
  String title;
  String gio;
  List images;

  itemModelLichsu(
      {required this.images, required this.title, required this.gio});
}
