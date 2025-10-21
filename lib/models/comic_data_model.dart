class ComicDataModel {
  final String name;
  final String link_image;
  final String link_pdf;
  final String description;

  final int part;
  ComicDataModel({
    required this.name,
    required this.link_image,
    required this.link_pdf,
    required this.part,
    required this.description
  });

  factory ComicDataModel.fromJson(json) {
    return ComicDataModel(
      name: json['name'],
      link_image: json['link_image'],
      link_pdf: json['link_pdf'],
      part: json['part'],
      description: json['description']
    );
  }
}
