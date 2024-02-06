class Item{
  int count = 1;
  String name,image,id;
  Item({required this.name, required this.image,required this.id});

  factory Item.fromJson(dynamic data){
    return Item(
      name:data['name'],
      image:data['image'],
      id:data['id']
    );
  }
}
