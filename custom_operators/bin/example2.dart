void main(List<String> args) {
  const names = ['Seth', 'Kathy', 'Ethan', 'Megan'];
  print(names * 1);
  // print(names + 1);
}

extension Multiply<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}


// extension Add<T> on Iterable<T>{
//   Iterable<T> operator +(int num) {
//     final thisShadow = this;
    
//     for (var i = 0 i < num; i++){
//       thisShadow = thisShadow + this;
      
//     }
//     return thisShadow;
//   }
// }