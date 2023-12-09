class Model {
  String number;
  String name;
  String code;
  String availability;
  String manufacturer;

  Model(
      {required this.number,
      required this.name,
      required this.code,
      required this.availability,
      required this.manufacturer});
}

class MockDataProvider {
 static List<Model> createFakeMedicine() {
    return List.generate(
        4,
        (index) => Model(
            number: '1',
            name: 'Insulin',
            code: '#2441789',
            availability: 'Hospital',
            manufacturer: 'Biotie'));
  }
}
