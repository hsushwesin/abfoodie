class Tag{
  String name,image;
  Tag({required this.name, required this.image});

  factory Tag.fromJson(dynamic data){
    return Tag(
      name:data['name'],
      image:data['image']
    );
  }
}
