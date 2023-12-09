


import '../model/medicine_model.dart';

abstract class MedicineState{}
class Initial extends MedicineState{}
class MedicineLoaded extends MedicineState{
  List<Model>medicines;

  MedicineLoaded(this.medicines);
}

