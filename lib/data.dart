class ImageData {
  int id;
  String url;
  String title;
  ImageData(this.id, this.url, this.title);
}

List<ImageData> images = [
  ImageData(
      1,
      "https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2017/08/facebook-cover.jpg",
      "first image"),
  ImageData(
      2,
      "https://assets.hongkiat.com/uploads/100-absolutely-beautiful-nature-wallpapers-for-your-desktop/blue-sea-sunset.jpg",
      "second image"),
  ImageData(
      3,
      "https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2017/08/facebook-cover.jpg",
      "third image"),
];
