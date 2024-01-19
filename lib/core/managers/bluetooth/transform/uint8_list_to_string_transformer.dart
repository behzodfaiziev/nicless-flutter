import 'dart:async';
import 'dart:typed_data';

class UInt8ListToStringTransformer
    extends StreamTransformerBase<Uint8List, String> {
  @override
  Stream<String> bind(Stream<Uint8List> stream) {
    final controller = StreamController<String>();

    stream.listen(
      (Uint8List data) {
        // Allocate buffer for parsed data
        int backspacesCounter = 0;
        for (final int byte in data) {
          if (byte == 8 || byte == 127) {
            backspacesCounter++;
          }
        }
        final Uint8List buffer = Uint8List(data.length - backspacesCounter);
        int bufferIndex = buffer.length;

        // Apply backspace control character
        backspacesCounter = 0;
        for (int i = data.length - 1; i >= 0; i--) {
          if (data[i] == 8 || data[i] == 127) {
            backspacesCounter++;
          } else {
            if (backspacesCounter > 0) {
              backspacesCounter--;
            } else {
              buffer[--bufferIndex] = data[i];
            }
          }
        }

        // Create message if there is a newline character
        final String result = String.fromCharCodes(buffer);
        controller.add(result);
      },
      onDone: controller.close,
      onError: controller.addError,
      cancelOnError: false,
    );

    return controller.stream;
  }
}
