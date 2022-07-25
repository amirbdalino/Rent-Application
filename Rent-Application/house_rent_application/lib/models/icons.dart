class Icons {
  
  String imageUrl;

  Icons( this.imageUrl);

  static List<Icons> generateTop() {
    return [
     
      Icons( 'assets/kitchen.png'),
      Icons( 'assets/parking.png'),
      Icons( 'assets/bedroom.png'),
      Icons( 'assets/bathroom.png')
    ];
  }
}
