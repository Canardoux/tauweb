library tau_web;

import 'package:etau/etau.dart' show TauInterface;
import 'src/tauweb_implementation.dart' show TauwebImplementation;
import 'src/tauweb_implementation.dart' show TauwebJS;

TauInterface tau() => TauwebImplementation();
TauwebJS tauwebJS() => TauwebJS();
