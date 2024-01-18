import 'package:fpdart/fpdart.dart';
import 'package:twita_kulone/core/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef FutureEitherVoid = FutureEither<void>;
