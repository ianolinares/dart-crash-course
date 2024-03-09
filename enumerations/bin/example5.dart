void main(List<String> args) {
  final vehicle = VehicleType.car;

  switch (vehicle) {
    case VehicleType.motorcycle:
    case VehicleType.bicycle:
    case VehicleType.car:
      print('Most common personal vehicles');
      break;
    case VehicleType.truck:
      print('Usually used for work');
      break;
    default:
      // this will never be executed because all cases are handled
      print('Hello');
  }
}

//fallthrough

enum VehicleType {
  motorcycle,
  bicycle,
  car,
  truck,
}
