library tau_web;

import 'package:tau/tau.dart' show TauInterface;
import 'src/tauweb_implementation.dart' show TauwebImplementation;

//export 'src/tauweb_implementation.dart';
TauInterface Tau() => TauwebImplementation();
