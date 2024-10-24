library tau_web;

import 'package:etau/etau.dart' show TauInterface;
import 'src/tauweb_implementation.dart' show TauwebImplementation;

//export 'src/tauweb_implementation.dart';
TauInterface Tau() => TauwebImplementation();
