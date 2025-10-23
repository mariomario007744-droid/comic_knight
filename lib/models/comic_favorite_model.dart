class ComicFavoriteModel {
  final String user;
  final int id_comic;


  ComicFavoriteModel({
    required this.user,
    required this.id_comic,
  });

  factory ComicFavoriteModel.fromJson(json) {
    return ComicFavoriteModel(
      user: json['user'],
      id_comic: json['id_comic'],
    );
  }
}
