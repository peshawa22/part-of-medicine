import 'package:faker/faker.dart';

import '../model/medicine_model.dart';

class MockDataProvider {
  Faker faker = Faker();
  List<MedicineModel> createFakeMedicine() {
    return List.generate(
        4,
            (index) => MedicineModel(
            number: faker.randomGenerator.integer(5),
            name: 'Insulin',
            code: '#2441789',
            availability: 'Hospital',
            manufacturer: 'Biotie'));
  }
}