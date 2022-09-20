class Event {
  final String image;
  final String date;
  final String name;
  final String people;

  Event({
    this.image = '',
    this.date = '',
    this.name = '',
    this.people = '',
  });
}

List eventData = [
  Event(
    image: "assets/images/image2.png",
    date: "20 May, 2022",
    name: "Event Name Here",
    people: "1.5K People attend",
  ),
  Event(
    image: "assets/images/image2.png",
    date: "12 May, 2022",
    name: "Event Name Here",
    people: "3.5K People attend",
  ),
  Event(
    image: "assets/images/image2.png",
    date: "11 May, 2022",
    name: "Event Name Here",
    people: "2.5K People attend",
  ),
  Event(
    image: "assets/images/image2.png",
    date: "30 May, 2022",
    name: "Event Name Here",
    people: "4.5K People attend",
  ),
];
