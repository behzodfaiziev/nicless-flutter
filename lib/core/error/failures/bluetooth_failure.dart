import 'failure.dart';

class BluetoothFailure extends Failure {
  const BluetoothFailure({
    super.message,
    super.statusCode,
    super.errorCode,
  });

  BluetoothFailure.fromException(Exception exception)
      : this(
          message: [exception.toString()],
          statusCode: 500,
        );
}
