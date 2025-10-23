class ComicDataModel {
  final String name;
  final String link_image;
  final String link_pdf;
  final String description;
  final String name_folder_data;
  final int id;
  final int part;
  final int viewed;

  ComicDataModel({
    required this.id,
    required this.name_folder_data,
    required this.name,
    required this.link_image,
    required this.link_pdf,
    required this.part,
    required this.description,
    required this.viewed,
  });

  factory ComicDataModel.fromJson(json) {
    return ComicDataModel(
      name_folder_data: json['name_folder_data'],
      viewed: json['viewed'],
      id: json['id'],
      name: json['name'],
      link_image: json['link_image'],
      link_pdf: json['link_pdf'],
      part: json['part'],
      description: json['description'],
    );
  }
}
