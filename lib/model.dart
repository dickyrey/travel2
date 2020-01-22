class Travel {
  final String name;
  final String urlimage;
  final String country;
  Travel({this.name, this.urlimage, this.country});
}

List<Travel> travelData = [
  Travel(
    name: "London",
    country: "England",
    urlimage: "images/london.jpg",
  ),
  Travel(
    name: "Manhattan",
    country: "USA",
    urlimage: "images/manhattan.jpg",
  ),
  Travel(
      name: "Pontianak",
      country: "Indonesia",
      urlimage: "images/pontianak.png"),
  Travel(
      name: "Merlin", country: "Singapore", urlimage: "images/singapore.jpg"),
  Travel(
    name: "Tokyo",
    country: "Japan",
    urlimage: "images/tokyo.jpg",
  ),
];
