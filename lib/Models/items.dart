// ignore_for_file: camel_case_types

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Product 1",
      desc: "Description of the product 1",
      price: 999,
      color: "#33505a",
      image:
          "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.liveabout.com%2Fthmb%2FFXWM_j40D1uIIXmMvdwSoj7pkpQ%3D%2F1500x0%2Ffilters%3Ano_upscale()%3Amax_bytes(150000)%3Astrip_icc()%2FGettyImages-595414924-5c59b167c9e77c000132ac9b.jpeg&tbnid=P8jQ8x0IE__gzM&vet=12ahUKEwj0pPfkm8yAAxWlm2MGHUwKCycQMygqegUIARDJAg..i&imgrefurl=https%3A%2F%2Fwww.liveabout.com%2Fthe-best-travel-clothes-for-women-4586623&docid=mZyZ4N8hhyZZeM&w=1500&h=988&q=clothes&ved=2ahUKEwj0pPfkm8yAAxWlm2MGHUwKCycQMygqegUIARDJAg",
    )
  ];
}
