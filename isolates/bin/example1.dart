import 'dart:isolate';

void main(List<String> args) async {
  await for (final msg in getMessges().take(10)) {
    print(msg);
  }
}

Stream<String> getMessges() {
  final rp = ReceivePort();
  return Isolate.spawn(_getMessges, rp.sendPort)
      .asStream()
      .asyncExpand((_) => rp)
      .takeWhile((element) => element is String)
      .cast();
}

void _getMessges(SendPort sp) async {
  await for (final now in Stream.periodic(
    Duration(milliseconds: 200),
    (_) => DateTime.now().toIso8601String(),
  )) {
    sp.send(now);
  }
}
