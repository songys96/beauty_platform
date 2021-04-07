class Magazine {
  String key;
  String content;
  String imgSrc;
  String created;
  String updated;
  String author;
  String reviewSetKey;

  Magazine(this.key, this.content, this.imgSrc, this.created, this.updated, this.author, this.reviewSetKey);

  Magazine.fromJson(Map map)
  : key = map['key'],
        content = map['content'],
        imgSrc = map['imgSrc'],
        created = map['created'],
        updated = map['updated'],
        author = map['author'],
        reviewSetKey = map['reviewSetKey'];
}