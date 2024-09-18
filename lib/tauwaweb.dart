library tauwaweb;

import 'package:tauwa/tauwa.dart' show TauwaInterface;
import 'src/tauwaweb_implementation.dart' show TauwaImplementation;

export 'src/tauwaweb_implementation.dart';
TauwaInterface tauwaImp() => TauwaImplementation();
