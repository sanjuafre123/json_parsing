class PostModal {
  late int total, skip, limit;
  late List<Post> posts;

  PostModal(
      {required this.total,
        required this.skip,
        required this.limit,
        required this.posts});

  factory PostModal.fromJson(Map m1) {
    return PostModal(
        total: m1['total'],
        skip: m1['skip'],
        limit: m1['limit'],
        posts: (m1['posts'] as List)
            .map(
              (e) => Post.fromJson(e),
        )
            .toList());
  }
}

class Post {
  late int id, views, userId;
  late String title, body;
  late List tags;
  late Reaction reaction;

  Post(
      {required this.id,
        required this.views,
        required this.userId,
        required this.title,
        required this.body,
        required this.tags,
        required this.reaction});

  factory Post.fromJson(Map m1) {
    return Post(
        id: m1['id'],
        views: m1['views'],
        userId: m1['userId'],
        title: m1['title'],
        body: m1['body'],
        tags: m1['tags'],
        reaction: Reaction.fromJson(m1['reactions']));
  }
}

class Reaction {
  late int likes, dislikes;

  Reaction({required this.likes, required this.dislikes});

  factory Reaction.fromJson(Map m1) {
    return Reaction(likes: m1['likes'], dislikes: m1['dislikes']);
  }
}