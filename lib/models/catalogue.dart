class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "Dazzle001",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 146999,
      color: "#33505a",
      image:
          "https://www.91-img.com/gallery_images_uploads/e/d/ed5c062684de8f5ff3e0a83dc3faaf808698865b.JPG?tr=h-550,w-0,c-at_max")
];
