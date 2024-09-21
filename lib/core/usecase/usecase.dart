import 'package:fpdart/fpdart.dart';

import '../erorr/faliure.dart';

abstract interface class UseCase<SuccessState, Params> {
  Future<Either<Faliure, SuccessState>> call(Params params);
}

class NoParams {}
