import 'package:dartz/dartz.dart';

import '../error/failures/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef Result<T> = Either<Failure, T>;

typedef ResultVoid = Future<Either<Failure, void>>;

typedef DataMap = Map<String, dynamic>;
