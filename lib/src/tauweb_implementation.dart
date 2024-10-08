/*
 * Copyright 2024 Canardoux.
 *
 * This file is part of the τ project.
 *
 * τ is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 (GPL3), as published by
 * the Free Software Foundation.
 *
 * τ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with τ.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'dart:async';
import 'package:tau/tau.dart';
import 'tauweb_class.dart' as c;
import 'package:web/web.dart' as w;
import 'dart:js_interop';
import 'package:tau/tau.dart' as i show MediaDevices;

extension type TauwebJS._(JSObject _) implements JSObject {
        external factory TauwebJS();

        //external static int papa();
}



class TauwebImplementation implements TauInterface
{
  static final TauwebImplementation _singleton = TauwebImplementation._internal();
  factory TauwebImplementation() => _singleton;


  //static int papa() => TauwebJS.papa();

  TauwebImplementation._internal() {
  }

  @override MediaDevices getDevices() => c.MediaDevices();

  @override
  Future<void> init() async {
    await importModule("./js/tauweb.js".toJS,).toDart;
    /***************** 
    var nav = w.window.navigator;
    //var nav2 = h.window.navigator;
    w.MediaDevices dev = nav.mediaDevices;
    //var dev2 = nav2.mediaDevices;

    //final mediaConstraints = <String, dynamic>{
      //'audio': true,
      //'video': true,
    //};

    //var x = nav!.enumerateDevices();
    //var x2 = nav2!.enumeratedDevices();

    var y =  await dev!.enumerateDevices().toDart;
    var yyy = y.toDart;

    for (final toto in yyy)
    {
      print(toto.deviceId);
      print(toto.groupId);
      print(toto.kind);
      print(toto.label);
      print('');
    }

    //var y2 =  await dev2!.enumerateDevices();

    //var z =  nav!.getUserMedia( // !!!!!!!!!!
    //  audio: true,
     //  video: true,
    //);
    
    var yy =  await dev!.getUserMedia(w.MediaStreamConstraints(  audio: true.toJS)).toDart; // !!!!!!!!!!!!!!!!
    //StreamController<dynamic> streamController = StreamController<dynamic>();
    //var mediaStream = w.MediaStream(3.toJS);
    /*var yy2 =  await dev2!.getUserMedia(mediaConstraints);*/
    var p1 = yy.id;
    var p2 = yy.active;
    var p3 = yy.onaddtrack;
    var p4 = yy.getAudioTracks().toDart;
    var p5 = yy.getTracks().toDart;
    var q1 = p4[0].id;
    var q2 = p4[0].kind;
    var q3 = p4[0].onended;
    var q4 = p4[0].enabled;

    var q5 = p4[0].getSettings().deviceId;
    var q6 = p4[0].getSettings().groupId;
    var q7 = p4[0].getSettings().sampleRate;
    var q8 = p4[0].getSettings().channelCount;
    var q9 = p4[0].getSettings().echoCancellation;



    var x =  await dev!.enumerateDevices().toDart;
    var xxx = x.toDart;
    //var x2 =  await dev2!.enumerateDevices();

    var a =  await dev!.enumerateDevices().toDart;
    var aaa = a.toDart;
    //var a2 =  await dev2!.enumerateDevices();
    for (final toto in aaa)
      {
        print(toto.deviceId);
        print(toto.groupId);
        print(toto.kind);
        print(toto.label);
        print('');
      }
*****************/
  }




  AudioContext newAudioContext([AudioContextOptions? contextOptions]) => c.AudioContext(contextOptions);




  AudioContextOptions newAudioContextOptions({
    TauAny? latencyHint,
    TauSampleRate? sampleRate,
    TauAny? sinkId,
    TauAny? renderSizeHint,
  }) => c.AudioContextOptions(latencyHint: latencyHint, sampleRate: sampleRate, sinkId: sinkId, renderSizeHint: renderSizeHint);



  AudioSinkOptions newAudioSinkOptions({required AudioSinkType type}) => c.AudioSinkOptions(type: type);



  AudioTimestamp newAudioTimestamp({
    num? contextTime,
    TauHighResTimeStamp? performanceTime,
  }) => c.AudioTimestamp(contextTime: contextTime, performanceTime: performanceTime);



  OfflineAudioContext newOfflineAudioContext(
    TauAny contextOptionsOrNumberOfChannels, [
    int? length,
    TauSampleRate? sampleRate,
  ]) => c.OfflineAudioContext(contextOptionsOrNumberOfChannels, length, sampleRate);





  OfflineAudioContextOptions newOfflineAudioContextOptions({
    int? numberOfChannels,
    required int length,
    required TauSampleRate sampleRate,
    TauAny? renderSizeHint,
  }) => c.OfflineAudioContextOptions(
    numberOfChannels: numberOfChannels,
    length: length,
    sampleRate: sampleRate,
    renderSizeHint: renderSizeHint,
  );



  OfflineAudioCompletionEvent newOfflineAudioCompletionEvent(
    String type,
    OfflineAudioCompletionEventInit eventInitDict,
  ) => c.OfflineAudioCompletionEvent(type, eventInitDict);




  OfflineAudioCompletionEventInit newOfflineAudioCompletionEventInit({
    bool? bubbles,
    bool? cancelable,
    bool? composed,
    required AudioBuffer renderedBuffer,
  }) => c.OfflineAudioCompletionEventInit(bubbles: bubbles, cancelable: cancelable, composed: composed, renderedBuffer: renderedBuffer);



  AudioBuffer newAudioBuffer(AudioBufferOptions options) => c.AudioBuffer(options);




  AudioBufferOptions newAudioBufferOptions({
    int? numberOfChannels,
    required int length,
    required TauSampleRate sampleRate,
  }) => c.AudioBufferOptions(numberOfChannels: numberOfChannels, length: length, sampleRate: sampleRate);



  AudioNodeOptions newAudioNodeOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
  }) => c.AudioNodeOptionsImp(channelCount: channelCount, channelCountMode: channelCountMode, channelInterpretation: channelInterpretation);



  AnalyserNode newAnalyserNode(
    BaseAudioContext context, [
    AnalyserOptions? options,
  ]) => c.AnalyserNode(context, options);



  AnalyserOptions newAnalyserOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    int? fftSize,
    num? maxDecibels,
    num? minDecibels,
    num? smoothingTimeConstant,
  }) => c.AnalyserOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    fftSize: fftSize,
    maxDecibels: maxDecibels,
    minDecibels: minDecibels,
    smoothingTimeConstant: smoothingTimeConstant,
  );



  AudioBufferSourceNode newAudioBufferSourceNode(
    BaseAudioContext context, [
    AudioBufferSourceOptions? options,
  ]) => c.AudioBufferSourceNode(context, options);




  AudioBufferSourceOptions newAudioBufferSourceOptions({
    AudioBuffer? buffer,
    num? detune,
    bool? loop,
    num? loopEnd,
    num? loopStart,
    num? playbackRate,
  }) => c.AudioBufferSourceOptions(
    buffer: buffer,
    detune: detune,
    loop: loop,
    loopEnd: loopEnd,
    loopStart: loopStart,
    playbackRate: playbackRate,
  );



  AudioProcessingEvent newAudioProcessingEvent(
    String type,
    AudioProcessingEventInit eventInitDict,
  ) => c.AudioProcessingEvent(type, eventInitDict);



  AudioProcessingEventInit newAudioProcessingEventInit({
    bool? bubbles,
    bool? cancelable,
    bool? composed,
    required num playbackTime,
    required AudioBuffer inputBuffer,
    required AudioBuffer outputBuffer,
  }) => c.AudioProcessingEventInit(
    bubbles: bubbles,
    cancelable: cancelable,
    composed: composed,
    playbackTime: playbackTime,
    inputBuffer: inputBuffer,
    outputBuffer: outputBuffer,
  );




  BiquadFilterNode newBiquadFilterNode(
    BaseAudioContext context, [
    BiquadFilterOptions? options,
  ]) => c.BiquadFilterNode(
    context, options
  );



  BiquadFilterOptions newBiquadFilterOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    BiquadFilterType? type,
    num? Q,
    num? detune,
    num? frequency,
    num? gain,
  }) => c.BiquadFilterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    type: type,
    Q: Q,
    detune: detune,
    frequency: frequency,
    gain: gain,
  );



  ChannelMergerNode newChannelMergerNode(
    BaseAudioContext context, [
    ChannelMergerOptions? options,
  ]) => c.ChannelMergerNode(
    context,
    options,
  );



 ChannelMergerOptions newChannelMergerOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    int? numberOfInputs,
  }) => c.ChannelMergerOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfInputs: numberOfInputs,
  );



  ChannelSplitterNode newChannelSplitterNode(
    BaseAudioContext context, [
    ChannelSplitterOptions? options,
  ]) => c.ChannelSplitterNode(
    context,
    options,
  );



  ChannelSplitterOptions newChannelSplitterOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    int? numberOfOutputs,
  }) => c.ChannelSplitterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfOutputs: numberOfOutputs,
  );



  ConstantSourceNode newConstantSourceNode(
    BaseAudioContext context, [
    ConstantSourceOptions? options,
  ]) => c.ConstantSourceNode(
    context,
    options,
  );



  ConstantSourceOptions newConstantSourceOptions({num? offset}) =>c.ConstantSourceOptions(offset: offset);




  ConvolverNode newConvolverNode(
    BaseAudioContext context, [
    ConvolverOptions? options,
  ]) => c.ConvolverNode(
    context,
    options,
  );



  ConvolverOptions newConvolverOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    AudioBuffer? buffer,
    bool? disableNormalization,
  }) => c.ConvolverOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    buffer: buffer,
    disableNormalization: disableNormalization,
  );



  DelayNode newDelayNode(
    BaseAudioContext context, [
    DelayOptions? options,
  ]) => c.DelayNode(
    context,
    options,
  );



  DelayOptions newDelayOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    num? maxDelayTime,
    num? delayTime,
  }) => c.DelayOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    maxDelayTime: maxDelayTime,
    delayTime: delayTime,
  );



  DynamicsCompressorNode newDynamicsCompressorNode(
    BaseAudioContext context, [
    DynamicsCompressorOptions? options,
  ]) => c.DynamicsCompressorNode(
    context,
    options,
  );



  DynamicsCompressorOptions newDynamicsCompressorOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    num? attack,
    num? knee,
    num? ratio,
    num? release,
    num? threshold,
  }) => c.DynamicsCompressorOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    attack: attack,
    knee: knee,
    ratio: ratio,
    release: release,
    threshold: threshold,
  );



  GainNode newGainNode(
    BaseAudioContext context, [
    GainOptions? options,
  ]) => c.GainNode(
    context,
    options,
  );



  GainOptions newGainOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    num? gain,
  }) => c.GainOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    gain: gain,
  );



  IIRFilterNode newIIRFilterNode(
    BaseAudioContext context,
    IIRFilterOptions options,
  ) => c.IIRFilterNode(
    context,
    options,
  );



  IIRFilterOptions newIIRFilterOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    required TauArray<TauNumber> feedforward,
    required TauArray<TauNumber> feedback,
  }) => c.IIRFilterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    feedforward: feedforward,
    feedback: feedback
  );



  MediaElementAudioSourceNode newMediaElementAudioSourceNode(
    AudioContext context,
    MediaElementAudioSourceOptions options,
  ) => c.MediaElementAudioSourceNode(
    context,
    options,
  );



  MediaElementAudioSourceOptions newMediaElementAudioSourceOptions(
      {required MediaElement mediaElement}) => c.MediaElementAudioSourceOptions(
        mediaElement: mediaElement,
      );




  MediaStreamAudioDestinationNode newMediaStreamAudioDestinationNode(
    AudioContext context, [
    AudioNodeOptions? options,
  ]) => c.MediaStreamAudioDestinationNode(
    context,
    options,
  );



  MediaStreamAudioSourceNode newMediaStreamAudioSourceNode(
    AudioContext context,
    MediaStreamAudioSourceOptions options,
  ) => c.MediaStreamAudioSourceNode(
    context,
    options,
  );



  MediaStreamAudioSourceOptions newMediaStreamAudioSourceOptions(
      {required MediaStream mediaStream}) => c.MediaStreamAudioSourceOptions(
        mediaStream: mediaStream,
      );




  MediaStreamTrackAudioSourceNode newMediaStreamTrackAudioSourceNode(
    AudioContext context,
    MediaStreamTrackAudioSourceOptions options,
  ) => c.MediaStreamTrackAudioSourceNode(
    context,
    options,
  );



  MediaStreamTrackAudioSourceOptions newMediaStreamTrackAudioSourceOptions(
      {required MediaStreamTrack mediaStreamTrack}) => c.MediaStreamTrackAudioSourceOptions(
        mediaStreamTrack: mediaStreamTrack,
      );




  OscillatorNode newOscillatorNode(
    BaseAudioContext context, [
    OscillatorOptions? options,
  ]) => c.OscillatorNode(
    context,
    options,
  );



  OscillatorOptions newOscillatorOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    OscillatorType? type,
    num? frequency,
    num? detune,
    PeriodicWave? periodicWave,
  }) => c.OscillatorOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    type: type,
    frequency: frequency,
    detune: detune,
    periodicWave: periodicWave,
  );



  PannerNode newPannerNode(
    BaseAudioContext context, [
    PannerOptions? options,
  ]) => c.PannerNode(
    context,
    options,
  );




  PannerOptions newPannerOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    PanningModelType? panningModel,
    DistanceModelType? distanceModel,
    num? positionX,
    num? positionY,
    num? positionZ,
    num? orientationX,
    num? orientationY,
    num? orientationZ,
    num? refDistance,
    num? maxDistance,
    num? rolloffFactor,
    num? coneInnerAngle,
    num? coneOuterAngle,
    num? coneOuterGain,
  }) => c.PannerOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    panningModel: panningModel,
    distanceModel: distanceModel,
    positionX: positionX,
    positionY: positionY,
    positionZ: positionZ,
    orientationX: orientationX,
    orientationY: orientationY,
    orientationZ: orientationZ,
    refDistance: refDistance,
    maxDistance: maxDistance,
    rolloffFactor: rolloffFactor,
    coneInnerAngle: coneInnerAngle,
    coneOuterAngle: coneOuterAngle,
    coneOuterGain: coneOuterGain,
  );



  PeriodicWave newPeriodicWave(
    BaseAudioContext context, [
    PeriodicWaveOptions? options,
  ]) => c.PeriodicWave(
    context,
    options,
  );



  PeriodicWaveConstraints newPeriodicWaveConstraints({bool? disableNormalization}) => c.PeriodicWaveConstraintsImpl(disableNormalization: disableNormalization);





  PeriodicWaveOptions newPeriodicWaveOptions({
    bool? disableNormalization,
    TauArray<TauNumber>? real,
    TauArray<TauNumber>? imag,
  }) => c.PeriodicWaveOptions(
    disableNormalization: disableNormalization,
    real: real,
    imag: imag,
  );




  StereoPannerNode newStereoPannerNode(
    BaseAudioContext context, [
    StereoPannerOptions? options,
  ]) => c.StereoPannerNode(
    context,
    options,
  );



  StereoPannerOptions newStereoPannerOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    num? pan,
  }) => c.StereoPannerOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    pan: pan,
  );



  WaveShaperNode newWaveShaperNode(
    BaseAudioContext context, [
    WaveShaperOptions? options,
  ]) => c.WaveShaperNode(
    context,
    options,
  );



  WaveShaperOptions newWaveShaperOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    TauArray<TauNumber>? curve,
    OverSampleType? oversample,
  }) => c.WaveShaperOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    curve: curve,
    oversample: oversample,
  );



 AudioWorkletNode newAudioWorkletNode(
    BaseAudioContext context,
    String name, [
    AudioWorkletNodeOptions? options,
  ]) => c.AudioWorkletNode(
    context,
    name,
    options,
  );




  AudioWorkletNodeOptions newAudioWorkletNodeOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    int? numberOfInputs,
    int? numberOfOutputs,
    TauArray<TauNumber>? outputChannelCount,
    ParameterData? parameterData,
    ProcessorOptions? processorOptions,
  }) => c.AudioWorkletNodeOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfInputs: numberOfInputs,
    numberOfOutputs: numberOfOutputs,
    outputChannelCount: outputChannelCount,
    parameterData: parameterData,
    processorOptions: processorOptions,
  );



  AudioWorkletProcessor newAudioWorkletProcessor() => c.AudioWorkletProcessor();




// =================================================================================================
//                          Added because of Tau_web
// =================================================================================================


  MediaStream newMediaStream() => c.MediaStream();

  // MediaStreamTrack newMediaStreamTrack() => c.MediaStreamTrack();

 // Worklet newWorklet() => c.newWorklet();

 // WorkletGlobalScope newWorkletGlobalScope() => c.WorkletGlobalScope();

 // MessagePort newMessagePort() => c.MessagePort();

  MediaElement newMediaElement({required String src, }) => c.MediaElement(src: src, );

}
