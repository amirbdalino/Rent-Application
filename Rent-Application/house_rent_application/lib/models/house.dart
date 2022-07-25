class House {
  String name;
  String address;
  String imageUrl;

  House(this.name, this.address, this.imageUrl);

  static List<House> generateTop() {
    return [
      House('The Moon House', 'P455,Khartoum,Jeref', 'assets/house01.jpg'),
      House('The Special House', 'P455,Khartoum,Jeref', 'assets/house02.jpg'),
      House('The wood House', 'P455,Khartoum,Jeref', 'assets/house03.jpg'),
    ];
  }
}
