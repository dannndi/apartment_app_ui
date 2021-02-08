class Apartment {
  final String id;
  final String buildingName;
  final String location;
  final int price;
  final int bedroom;
  final int bathroom;
  final List<String> images;
  final String about;

  Apartment({
    this.id,
    this.buildingName,
    this.location,
    this.price,
    this.bedroom,
    this.bathroom,
    this.images,
    this.about,
  });
}

List<Apartment> apartments = [
  Apartment(
    id: "0",
    buildingName: "Park Towers South",
    location: "315 W 57th St, New York, NY 10019",
    price: 5663,
    bedroom: 3,
    bathroom: 3,
    images: [
      "assets/images/park-towers.jpg",
      "assets/images/park-towers-living-room.jpg",
      "assets/images/park-towers-building.jpg",
      "assets/images/park-towers-bedroom.jpg",
    ],
    about:
        "Park Towers South upper west side apartments illustrate beautifully-modern details with quality service, located perfectly in the center of the city. Our buildings exhibit a well-maintained interior with welcoming doormen who remain onsite 24 hours a day. Enjoy gorgeous apartments supplied with top appliances and modern designer finishes. Select apartments include spacious wraparound terraces with views of the city and immense sunlight. Park Towers South provides convenience to all parts of the city and is the perfect place to call your new home.",
  ),
  Apartment(
    id: "1",
    buildingName: "110 Wall Street",
    location: "110 Wall St, New York, NY 10005",
    price: 10000,
    bedroom: 4,
    bathroom: 3,
    images: [
      "assets/images/110-wall-street.jpg",
      "assets/images/110-wall-street-1.jpg",
      "assets/images/110-wall-street-bedroom.jpg",
      "assets/images/110-wall-street-living-room.jpg",
    ],
    about:
        "Each of our carefully curated private units are equipped with a dedicated living area, kitchen, and bathroom. Combine this with expansive common grounds throughout the WeLive community, and you’ve got unrivaled room to call home. Live on top for less Members save an average of \$500/month compared to traditional apartment living. Lease anywhere between 1 mo-1 year. Fully Furnished, including linens, towels, sundries, glassware and silverware. Cleaning including in your membership. Daily events included.",
  ),
  Apartment(
    id: "2",
    buildingName: "Waterline Square Luxury Rentals",
    location: "675 W 59th St, New York, NY 10069",
    price: 35625,
    bedroom: 4,
    bathroom: 3,
    images: [
      "assets/images/waterline-square-luxury-rentals.jpg",
      "assets/images/waterline-square-luxury-rentals-1.jpg",
      "assets/images/waterline-square-luxury-rentals-2.jpg",
    ],
    about:
        "Spanning nearly five acres and built around a new 2.6-acre landscaped park, Waterline Square Luxury Rentals is the culmination of a thriving riverfront neighborhood 25 years in the making, where Midtown meets the Upper West Side.",
  ),
];
