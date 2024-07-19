class PhotoModel {
  late int albumId, id;
  late String title, url, thumbnailUrl;

  PhotoModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory PhotoModel.fromMap(Map m1) {
    return PhotoModel(
      albumId: m1['albumId'],
      id: m1['id'],
      title: m1['title'],
      url: m1['url'],
      thumbnailUrl: m1['thumbnailUrl'],
    );
  }
}
