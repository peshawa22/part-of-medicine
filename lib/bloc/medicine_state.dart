


import '../model/medicine_model.dart';

abstract class MedicineState{}
class Initial extends MedicineState{}
class MedicineLoaded extends MedicineState{
  List<MedicineModel>medicines;

  MedicineLoaded(this.medicines);
}

