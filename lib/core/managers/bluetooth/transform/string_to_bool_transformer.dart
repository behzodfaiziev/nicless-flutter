import 'dart:async';

class StringToBoolTransformer extends StreamTransformerBase<String, bool> {
  @override
  Stream<bool> bind(Stream<String> stream) {
    final controller = StreamController<bool>();

    String currentData = '';

    stream.listen(
      (String data) {
        if (data == currentData) return;
        currentData = data;

        if (data == '0') {
          controller.add(false);
        } else if (data == '1') {
          controller.add(true);
        }
      },
      onDone: controller.close,
      onError: controller.addError,
      cancelOnError: false,
    );

    return controller.stream;
  }
}
