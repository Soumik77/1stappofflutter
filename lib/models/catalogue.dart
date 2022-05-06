class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 146999,
        color: "#33505a",
        image:
            "https://www.91-img.com/gallery_images_uploads/e/d/ed5c062684de8f5ff3e0a83dc3faaf808698865b.JPG?tr=h-550,w-0,c-at_max"),
     Item(
            id: 2,
            name: "Google Pixel 5a",
            desc: "Google Pixel phone 5th generation",
            price: 45000,
            color: "00ac51",
            image: "https://m.media-amazon.com/images/I/51E7J1JKKXL._SX679_.jpg",
     ),


     


        Item(
            id: 3,
            name: "Galaxy S21",
            desc: "Samsung Galaxy S21 2021 edition",
            price: 139000,
            color: "#7c95eb",
            image: "https://www.zdnet.com/a/img/resize/cba3fe87ab351fa4bb9f8d899f7cf4df352c14df/2022/01/13/2d81372e-36cf-43ce-a2fb-52ab2a1b980c/samsung-galaxy-s21-fe-7.jpg?auto=webp&width=1092"
        ),
        Item(
            id: 4,
            name: "M1 Macbook Air",
            desc: "Apple Macbook Air with Apple Silicon",
            price: 125000,
            color: "#33505a",
            image: "https://www.startech.com.bd/image/cache/catalog/laptop/apple/macbook-air/MGN73/macbook-mgn73Zp-a-500x500.jpg"
        ),
        Item(
            id: 5,
            name: "Play Station 5",
            desc: "Sony Playstation 5th generation",
            price: 80000,
            color: "#FFFFFF",
            image: "https://www.startech.com.bd/image/cache/catalog/gaming-console/playstation/playstation-5/playstation-5-02-500x500.jpg"


        ),
        Item(
            id: 6,
            name: "Google Pixel 6",
            desc: "Google Pixel phone 5th generation",
            price: 62500,
            color: "00ac51",
            image: "https://fdn2.gsmarena.com/vv/pics/google/google-pixel-6-1.jpg"

        ),

        Item(
            id: 7,
            name: "iPad Pro",
            desc: "Apple iPad Air 5th Gen 10.9 inch",
            price: 68000,
            color: "#f73984",
            image: "https://www.startech.com.bd/image/cache/catalog/tablet/apple/ipad-air-5th-gen/ipad-air-space-gray-01-228x228.jpg"
        ),
        Item(
            id: 8,
            name: "Asus Zenbook Pro",
            desc: "Asus 10th Gen 13 inch",
            price: 316000,
            color: "00ac51",
            image: "https://mcsolution.com.bd/wp-content/uploads/2021/05/Asus-ZenBook-Pro-Duo-15-OLED-UX58.jpg"
        )

  ];
}

class Item {
  final int id;
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
      required this.image, int });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['price'],
      image: map['image'],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
