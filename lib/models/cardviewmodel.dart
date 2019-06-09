final List<CardViewModel> demoCards = [
  new CardViewModel(
      backdropAssetPath: 'assets/carousel-3.jpg',
      titleText: 'SUMMER',
      prominentText: "3:30 - 8",
      subText: "Saturday & Sunday",
      buttonText: "Obtain Perspective"),
  new CardViewModel(
      backdropAssetPath: 'assets/product.png',
      titleText: 'DIGITAL L.P',
      prominentText:
          "Imagine a vinyl record that has 30% more capacity, 30% greater volume, and double the audio fidelity of a typical LP sold today.",
      subText: "ON SALE NOW",
      buttonText: "Buy Now",
      productSku: "ABC123"),
  new CardViewModel(
      backdropAssetPath: 'assets/carousel-1.jpg',
      titleText: 'SMOKEY BLUE',
      prominentText: "8:30 - 10",
      subText: "Tuesday & Thursday",
      buttonText: "Experience It"),
  new CardViewModel(
      backdropAssetPath: 'assets/carousel-2.jpg',
      titleText: 'DJ VIBE',
      prominentText: "10:30 - 12",
      subText: "Friday Night",
      buttonText: "Plan your Party"),
];

class CardViewModel {
  final String backdropAssetPath;
  final String titleText;
  final String prominentText;
  final String subText;
  final String buttonText;
  final String productSku;

  CardViewModel(
      {this.backdropAssetPath,
      this.titleText,
      this.prominentText,
      this.subText,
      this.buttonText,
      this.productSku});
}
