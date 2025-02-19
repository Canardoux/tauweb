
For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# Tauweb

`Tauweb` is an [Etau](https://pub.dev/packages/etau) implementation for Flutter Web.

[Etau](https://pub.dev/packages/etau) is the interface and this is what see the App.
So, there are not many things to say about `Tauweb` because this is just an implementation.
The only verb used by the App is `tau()`, which gives the implementation.

You can see all the [Etau project documentation](https://tau.canardoux.xyz/etau-README.html) here.

Example
```dart
import 'package:etau/etau.dart';
import 'package:tau_web/tau_web.dart';

  @override
  void initState() 
  {
        super.initState();
        tau().init().then 
        ((e){
                audioCtx = tau().newAudioContext();
        });
  }

  ...
        // Then all the code depends only on the interface (`etau`)
        dest = audioCtx.destination;
        source = audioCtx.createBufferSource();
        source!.buffer = audioBuffer;
        pannerNode = audioCtx.createStereoPanner();
        pannerNode!.pan.value = pannerValue;
        source!.connect(pannerNode!).connect(dest!);

```

if your App needs to support at the same time Fliutter Web And Flutter on mobiles:
```dart
import 'package:etau/etau.dart';
import 'package:etau/dummy.dart'
  if (dart.library.js_interop) 'package:tau_web/tau_web.dart'
  if (dart.library.io) 'package:tau_war/tau_war.dart';

  @override
  void initState() 
  {
        super.initState();
        tau().init().then 
        ((e){
                audioCtx = tau().newAudioContext();
        });
  }
```
