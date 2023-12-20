sealed class Vehicle {}

// class Car extends Vehicle {
//   final String aa;
//   final String bb;
//   Car(this.aa, this.bb);
// }

// class Truck extends Vehicle {
//   final String cc;
//   Truck(this.cc);
// }

// class Motorcycle extends Vehicle {
//   final String dd;
//   final String ee;
//   Motorcycle(this.dd, this.ee);
// }

// class Bicycle extends Vehicle {}

// void main() {
//   var vehicle = Car('aaa11', 'bbb11');
//   // var vehicle = Car(aa: 'aa', bb: 'bb');
//   // var vehicle = Truck('cc');
//   // var vehicle = Bicycle();
//   test(vehicle);
// }

// void test(Vehicle vehicle) {
//   var aa = switch (vehicle) {
//     Car(aa: var aa, bb: var bb) => '111 : $aa, $bb',
//     Truck(cc: var ccc) => ccc,
//     _ => '333',
//   };
//   log(aa);
// }
