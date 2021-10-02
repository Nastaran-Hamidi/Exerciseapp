class Category{
  final String title;
  final String image;
  final String description;
  Category({this.description,this.title, this.image});
}

List<Category> categoryCards=[
  Category(
    title: "رژیم غذایی",
    image: "assets/icons/Hamburger.svg",
    description: descriptionText
  ),
  Category(
    title: "ورزش",
    image: "assets/icons/Excrecises.svg",
    description: descriptionText
  ),
  Category(
      title: "مدیتیشن",
      image: "assets/icons/Meditation.svg",
      description: descriptionText
  ),
  Category(
    title: "یوگا",
    image: "assets/icons/yoga.svg",
    description: descriptionText
  ),
];

String descriptionText =
    "ما کنارت هستیم تا شاد و سالم زندگی کنی، "
    "پس ورزش و رژیم رو تو برنامه روزانه ات قرار بده :)";