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


@JS()
library;

import 'dart:js_interop';
import 'dart:html';
import 'dart:js';
import 'dart:js_util';
import 'dart:web_audio';
import 'package:web/web.dart';
import 'package:tau/tau.dart' as t;

//import 'package:js/js.dart';
//import 'dart:dom';
//import 'dart:dom.dart';
//import 'dart:hr_time.dart';
//import 'dart:html';
//import 'mediacapture_streams.dart';

typedef DecodeErrorCallback = JSFunction;
typedef DecodeSuccessCallback = JSFunction;
typedef AudioWorkletProcessorConstructor = JSFunction;
typedef AudioContextState = String;
typedef AudioContextRenderSizeCategory = String;
typedef AudioContextLatencyCategory = String;
typedef AudioSinkType = String;
typedef ChannelCountMode = String;
typedef ChannelInterpretation = String;
typedef AutomationRate = String;
typedef BiquadFilterType = String;
typedef OscillatorType = String;
typedef PanningModelType = String;
typedef DistanceModelType = String;
typedef OverSampleType = String;




// ------------------------------------------------------------------------------------------------------------------





extension type BaseAudioContext._(JSObject _) implements  JSObject {
  external AnalyserNode createAnalyser();
  external BiquadFilterNode createBiquadFilter();
  external AudioBuffer createBuffer(
    int numberOfChannels,
    int length,
    num sampleRate,
  );

  external AudioBufferSourceNode createBufferSource();
  external ChannelMergerNode createChannelMerger([int? numberOfInputs]);
  external ChannelSplitterNode createChannelSplitter([int? numberOfOutputs]);
  external ConstantSourceNode createConstantSource();
  external ConvolverNode createConvolver();
  external DelayNode createDelay([num? maxDelayTime]);
  external DynamicsCompressorNode createDynamicsCompressor();
  external GainNode createGain();
  external IIRFilterNode createIIRFilter(
    JSArray<JSNumber> feedforward,
    JSArray<JSNumber> feedback,
  );
  external OscillatorNode createOscillator();
  external PannerNode createPanner();
  external PeriodicWave createPeriodicWave(
    JSArray<JSNumber> real,
    JSArray<JSNumber> imag, [
    PeriodicWaveConstraints? constraints,
  ]);
  external ScriptProcessorNode createScriptProcessor([
    int? bufferSize,
    int? numberOfInputChannels,
    int? numberOfOutputChannels,
  ]);
  external StereoPannerNode createStereoPanner();
  external WaveShaperNode createWaveShaper();
  external JSPromise<AudioBuffer> decodeAudioData(
    JSArrayBuffer audioData, [
    DecodeSuccessCallback? successCallback,
    DecodeErrorCallback? errorCallback,
  ]);
  external AudioDestinationNode get destination;
  external double get sampleRate;
  external double get currentTime;
  external AudioListener get listener;
  external AudioContextState get state;
  external AudioWorklet get audioWorklet;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioContext._(JSObject _)
    implements BaseAudioContext, JSObject {
  external factory AudioContext([AudioContextOptions? contextOptions]);
  external AudioTimestamp getOutputTimestamp();
  external JSPromise<JSAny?> resume();
  external JSPromise<JSAny?> suspend();
  external JSPromise<JSAny?> close();
  external MediaElementAudioSourceNode createMediaElementSource(
      HTMLMediaElement mediaElement);
  external MediaStreamAudioSourceNode createMediaStreamSource(
      MediaStream mediaStream);
  external MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(
      MediaStreamTrack mediaStreamTrack);
  external MediaStreamAudioDestinationNode createMediaStreamDestination();
  external double get baseLatency;
  external double get outputLatency;
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioContextOptions._(JSObject _) implements JSObject {
  external factory AudioContextOptions({
    JSAny? latencyHint,
    JSNumber? sampleRate,
    JSAny? sinkId,
    JSAny? renderSizeHint,
  });

  external JSAny get latencyHint;
  external set latencyHint(JSAny value);
  external double get sampleRate;
  external set sampleRate(num value);
  external JSAny get sinkId;
  external set sinkId(JSAny value);
  external JSAny get renderSizeHint;
  external set renderSizeHint(JSAny value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioSinkOptions._(JSObject _) implements JSObject {
  external factory AudioSinkOptions({required AudioSinkType type});

  external AudioSinkType get type;
  external set type(AudioSinkType value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioTimestamp._(JSObject _) implements JSObject {
  external factory AudioTimestamp({
    num? contextTime,
    DOMHighResTimeStamp? performanceTime,
  });

  external double get contextTime;
  external set contextTime(num value);
  external double get performanceTime;
  external set performanceTime(DOMHighResTimeStamp value);
}





// ------------------------------------------------------------------------------------------------------------------





extension type OfflineAudioContext._(JSObject _)
    implements BaseAudioContext, JSObject {
  external factory OfflineAudioContext(
    JSAny contextOptionsOrNumberOfChannels, [
    int? length,
    num? sampleRate,
  ]);
  external JSPromise<AudioBuffer> startRendering();
  external JSPromise<JSAny?> resume();
  external JSPromise<JSAny?> suspend(num suspendTime);
  external int get length;
  external EventHandler get oncomplete;
  external set oncomplete(EventHandler value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type OfflineAudioContextOptions._(JSObject _) implements JSObject {
  external factory OfflineAudioContextOptions({
    int? numberOfChannels,
    required int length,
    required num sampleRate,
    JSAny? renderSizeHint,
  });

  external int get numberOfChannels;
  external set numberOfChannels(int value);
  external int get length;
  external set length(int value);
  external double get sampleRate;
  external set sampleRate(num value);
  external JSAny get renderSizeHint;
  external set renderSizeHint(JSAny value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type OfflineAudioCompletionEvent._(JSObject _)
    implements Event, JSObject {
  external factory OfflineAudioCompletionEvent(
    String type,
    OfflineAudioCompletionEventInit eventInitDict,
  );
  external AudioBuffer get renderedBuffer;
}




// ------------------------------------------------------------------------------------------------------------------





extension type OfflineAudioCompletionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory OfflineAudioCompletionEventInit({
    bool? bubbles,
    bool? cancelable,
    bool? composed,
    required AudioBuffer renderedBuffer,
  });

  external AudioBuffer get renderedBuffer;
  external set renderedBuffer(AudioBuffer value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioBuffer._(JSObject _) implements JSObject {
  external factory AudioBuffer(AudioBufferOptions options);
  external JSFloat32Array getChannelData(int channel);
  external void copyFromChannel(
    JSFloat32Array destination,
    int? channelNumber, [
    int? bufferOffset,
  ]);
  external void copyToChannel(
    JSFloat32Array source,
    int channelNumber, [
    int bufferOffset,
  ]);
  external double get sampleRate;
  external int get length;
  external double get duration;
  external int get numberOfChannels;
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioBufferOptions._(JSObject _) implements JSObject {
  external factory AudioBufferOptions({
    int? numberOfChannels,
    required int length,
    required num sampleRate,
  });

  external int get numberOfChannels;
  external set numberOfChannels(int value);
  external int get length;
  external set length(int value);
  external double get sampleRate;
  external set sampleRate(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioNode._(JSObject _) implements EventTarget, JSObject {
  external AudioNode? connect(
    AudioNode destinationNodeOrDestinationParam, [
    int? output,
    int? input,
  ]);
  external void disconnect([
    AudioNode? destinationNodeOrDestinationParamOrOutput,
    int? output,
    int? input,
  ]);
  external BaseAudioContext get context;
  external int get numberOfInputs;
  external int get numberOfOutputs;
  external int get channelCount;
  external set channelCount(int value);
  external ChannelCountMode get channelCountMode;
  external set channelCountMode(ChannelCountMode value);
  external ChannelInterpretation get channelInterpretation;
  external set channelInterpretation(ChannelInterpretation value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioNodeOptions._(JSObject _) implements JSObject {
  external factory AudioNodeOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
  });

  external int get channelCount;
  external set channelCount(int value);
  external ChannelCountMode get channelCountMode;
  external set channelCountMode(ChannelCountMode value);
  external ChannelInterpretation get channelInterpretation;
  external set channelInterpretation(ChannelInterpretation value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioParam._(JSObject _) implements JSObject {
  external AudioParam setValueAtTime(
    num value,
    num startTime,
  );
  external AudioParam linearRampToValueAtTime(
    num value,
    num endTime,
  );
  external AudioParam exponentialRampToValueAtTime(
    num value,
    num endTime,
  );
  external AudioParam setTargetAtTime(
    num target,
    num startTime,
    num timeConstant,
  );
  external AudioParam setValueCurveAtTime(
    JSArray<JSNumber> values,
    num startTime,
    num duration,
  );
  external AudioParam cancelScheduledValues(num cancelTime);
  external AudioParam cancelAndHoldAtTime(num cancelTime);
  external double get value;
  external set value(num value);
  external AutomationRate get automationRate;
  external set automationRate(AutomationRate value);
  external double get defaultValue;
  external double get minValue;
  external double get maxValue;
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioScheduledSourceNode._(JSObject _)
    implements AudioNode, JSObject {
  external void start([num? when]);
  external void stop([num? when]);
  external EventHandler get onended;
  external set onended(EventHandler value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AnalyserNode._(JSObject _) implements AudioNode, JSObject {
  external factory AnalyserNode(
    BaseAudioContext context, [
    AnalyserOptions options,
  ]);

  external void getFloatFrequencyData(JSFloat32Array array);
  external void getByteFrequencyData(JSUint8Array array);
  external void getFloatTimeDomainData(JSFloat32Array array);
  external void getByteTimeDomainData(JSUint8Array array);
  external int get fftSize;
  external set fftSize(int value);
  external int get frequencyBinCount;
  external double get minDecibels;
  external set minDecibels(num value);
  external double get maxDecibels;
  external set maxDecibels(num value);
  external double get smoothingTimeConstant;
  external set smoothingTimeConstant(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AnalyserOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory AnalyserOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    int? fftSize,
    num? maxDecibels,
    num? minDecibels,
    num? smoothingTimeConstant,
  });

  external int get fftSize;
  external set fftSize(int value);
  external double get maxDecibels;
  external set maxDecibels(num value);
  external double get minDecibels;
  external set minDecibels(num value);
  external double get smoothingTimeConstant;
  external set smoothingTimeConstant(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioBufferSourceNode._(JSObject _)
    implements AudioScheduledSourceNode, JSObject {
  external factory AudioBufferSourceNode(
    BaseAudioContext context, [
    AudioBufferSourceOptions options,
  ]);
  external void start([
    num? when,
    num? offset,
    num? duration,
  ]);
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? value);
  external AudioParam get playbackRate;
  external AudioParam get detune;
  external bool get loop;
  external set loop(bool value);
  external double get loopStart;
  external set loopStart(num value);
  external double get loopEnd;
  external set loopEnd(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioBufferSourceOptions._(JSObject _) implements JSObject {
  external factory AudioBufferSourceOptions({
    AudioBuffer? buffer,
    num? detune,
    bool? loop,
    num? loopEnd,
    num? loopStart,
    num? playbackRate,
  });

  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? value);
  external double get detune;
  external set detune(num value);
  external bool get loop;
  external set loop(bool value);
  external double get loopEnd;
  external set loopEnd(num value);
  external double get loopStart;
  external set loopStart(num value);
  external double get playbackRate;
  external set playbackRate(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioDestinationNode._(JSObject _)
    implements AudioNode, JSObject {
  external int get maxChannelCount;
}





// ------------------------------------------------------------------------------------------------------------------





extension type AudioListener._(JSObject _) implements JSObject {
  external void setPosition(
    num x,
    num y,
    num z,
  );

  external void setOrientation(
    num x,
    num y,
    num z,
    num xUp,
    num yUp,
    num zUp,
  );
  external AudioParam get positionX;
  external AudioParam get positionY;
  external AudioParam get positionZ;
  external AudioParam get forwardX;
  external AudioParam get forwardY;
  external AudioParam get forwardZ;
  external AudioParam get upX;
  external AudioParam get upY;
  external AudioParam get upZ;
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioProcessingEvent._(JSObject _) implements Event, JSObject {
  external factory AudioProcessingEvent(
    String type,
    AudioProcessingEventInit eventInitDict,
  );

  external double get playbackTime;
  external AudioBuffer get inputBuffer;
  external AudioBuffer get outputBuffer;
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioProcessingEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory AudioProcessingEventInit({
    bool? bubbles,
    bool? cancelable,
    bool? composed,
    required num playbackTime,
    required AudioBuffer inputBuffer,
    required AudioBuffer outputBuffer,
  });

  external double get playbackTime;
  external set playbackTime(num value);
  external AudioBuffer get inputBuffer;
  external set inputBuffer(AudioBuffer value);
  external AudioBuffer get outputBuffer;
  external set outputBuffer(AudioBuffer value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type BiquadFilterNode._(JSObject _) implements AudioNode, JSObject {
  external factory BiquadFilterNode(
    BaseAudioContext context, [
    BiquadFilterOptions options,
  ]);
  external void getFrequencyResponse(
    JSFloat32Array frequencyHz,
    JSFloat32Array magResponse,
    JSFloat32Array phaseResponse,
  );
  external BiquadFilterType get type;
  external set type(BiquadFilterType value);
  external AudioParam get frequency;
  external AudioParam get detune;
  external AudioParam get Q;
  external AudioParam get gain;
}




// ------------------------------------------------------------------------------------------------------------------





extension type BiquadFilterOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory BiquadFilterOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    BiquadFilterType? type,
    num? Q,
    num? detune,
    num? frequency,
    num? gain,
  });

  external BiquadFilterType get type;
  external set type(BiquadFilterType value);
  external double get Q;
  external set Q(num value);
  external double get detune;
  external set detune(num value);
  external double get frequency;
  external set frequency(num value);
  external double get gain;
  external set gain(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type ChannelMergerNode._(JSObject _) implements AudioNode, JSObject {
  external factory ChannelMergerNode(
    BaseAudioContext context, [
    ChannelMergerOptions options,
  ]);
}




// ------------------------------------------------------------------------------------------------------------------





extension type ChannelMergerOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory ChannelMergerOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    int? numberOfInputs,
  });

  external int get numberOfInputs;
  external set numberOfInputs(int value);
}




// ------------------------------------------------------------------------------------------------------------------






extension type ChannelSplitterNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory ChannelSplitterNode(
    BaseAudioContext context, [
    ChannelSplitterOptions options,
  ]);
}




// ------------------------------------------------------------------------------------------------------------------





extension type ChannelSplitterOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory ChannelSplitterOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    int? numberOfOutputs,
  });

  external int get numberOfOutputs;
  external set numberOfOutputs(int value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type ConstantSourceNode._(JSObject _)
    implements AudioScheduledSourceNode, JSObject {
  external factory ConstantSourceNode(
    BaseAudioContext context, [
    ConstantSourceOptions options,
  ]);
  external AudioParam get offset;
}




// ------------------------------------------------------------------------------------------------------------------





extension type ConstantSourceOptions._(JSObject _) implements AudioNodeOptions,JSObject { // LARPOUX
  external factory ConstantSourceOptions({num? offset});

  external double get offset;
  external set offset(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type ConvolverNode._(JSObject _) implements AudioNode, JSObject {
  external factory ConvolverNode(
    BaseAudioContext context, [
    ConvolverOptions options,
  ]);

  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? value);
  external bool get normalize;
  external set normalize(bool value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type ConvolverOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory ConvolverOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    AudioBuffer? buffer,
    bool? disableNormalization,
  });

  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? value);
  external bool get disableNormalization;
  external set disableNormalization(bool value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type DelayNode._(JSObject _) implements AudioNode, JSObject {
  external factory DelayNode(
    BaseAudioContext context, [
    DelayOptions options,
  ]);

  external AudioParam get delayTime;
}




// ------------------------------------------------------------------------------------------------------------------





extension type DelayOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory DelayOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    num? maxDelayTime,
    num? delayTime,
  });

  external double get maxDelayTime;
  external set maxDelayTime(num value);
  external double get delayTime;
  external set delayTime(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type DynamicsCompressorNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory DynamicsCompressorNode(
    BaseAudioContext context, [
    DynamicsCompressorOptions options,
  ]);

  external AudioParam get threshold;
  external AudioParam get knee;
  external AudioParam get ratio;
  external double get reduction;
  external AudioParam get attack;
  external AudioParam get release;
}




// ------------------------------------------------------------------------------------------------------------------





extension type DynamicsCompressorOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory DynamicsCompressorOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    num? attack,
    num? knee,
    num? ratio,
    num? release,
    num? threshold,
  });

  external double get attack;
  external set attack(num value);
  external double get knee;
  external set knee(num value);
  external double get ratio;
  external set ratio(num value);
  external double get release;
  external set release(num value);
  external double get threshold;
  external set threshold(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type GainNode._(JSObject _) implements AudioNode, JSObject {
  external factory GainNode(
    BaseAudioContext context, [
    GainOptions options,
  ]);
  external AudioParam get gain;
}




// ------------------------------------------------------------------------------------------------------------------





extension type GainOptions._(JSObject _) implements AudioNodeOptions, JSObject {
  external factory GainOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    num? gain,
  });

  external double get gain;
  external set gain(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type IIRFilterNode._(JSObject _) implements AudioNode, JSObject {
  external factory IIRFilterNode(
    BaseAudioContext context,
    IIRFilterOptions options,
  );

  external void getFrequencyResponse(
    JSFloat32Array frequencyHz,
    JSFloat32Array magResponse,
    JSFloat32Array phaseResponse,
  );
}




// ------------------------------------------------------------------------------------------------------------------





extension type IIRFilterOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory IIRFilterOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    required JSArray<JSNumber> feedforward,
    required JSArray<JSNumber> feedback,
  });

  external JSArray<JSNumber> get feedforward;
  external set feedforward(JSArray<JSNumber> value);
  external JSArray<JSNumber> get feedback;
  external set feedback(JSArray<JSNumber> value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type MediaElementAudioSourceNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory MediaElementAudioSourceNode(
    AudioContext context,
    MediaElementAudioSourceOptions options,
  );

  external HTMLMediaElement get mediaElement;
}




// ------------------------------------------------------------------------------------------------------------------





extension type MediaElementAudioSourceOptions._(JSObject _)
    implements JSObject {
  external factory MediaElementAudioSourceOptions(
      {required HTMLMediaElement mediaElement});

  external HTMLMediaElement get mediaElement;
  external set mediaElement(HTMLMediaElement value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type MediaStreamAudioDestinationNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory MediaStreamAudioDestinationNode(
    AudioContext context, [
    AudioNodeOptions options,
  ]);
  external MediaStream get stream;
}




// ------------------------------------------------------------------------------------------------------------------





extension type MediaStreamAudioSourceNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory MediaStreamAudioSourceNode(
    AudioContext context,
    MediaStreamAudioSourceOptions options,
  );

  external MediaStream get mediaStream;
}




// ------------------------------------------------------------------------------------------------------------------





extension type MediaStreamAudioSourceOptions._(JSObject _) implements JSObject {
  external factory MediaStreamAudioSourceOptions(
      {required MediaStream mediaStream});

  external MediaStream get mediaStream;
  external set mediaStream(MediaStream value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type MediaStreamTrackAudioSourceNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory MediaStreamTrackAudioSourceNode(
    AudioContext context,
    MediaStreamTrackAudioSourceOptions options,
  );
}




// ------------------------------------------------------------------------------------------------------------------





extension type MediaStreamTrackAudioSourceOptions._(JSObject _)
    implements JSObject {
  external factory MediaStreamTrackAudioSourceOptions(
      {required MediaStreamTrack mediaStreamTrack});

  external MediaStreamTrack get mediaStreamTrack;
  external set mediaStreamTrack(MediaStreamTrack value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type OscillatorNode._(JSObject _)
    implements AudioScheduledSourceNode, JSObject {
  external factory OscillatorNode(
    BaseAudioContext context, [
    OscillatorOptions options,
  ]);
  external void setPeriodicWave(PeriodicWave periodicWave);
  external OscillatorType get type;
  external set type(OscillatorType value);
  external AudioParam get frequency;
  external AudioParam get detune;
}




// ------------------------------------------------------------------------------------------------------------------





extension type OscillatorOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory OscillatorOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    OscillatorType? type,
    num? frequency,
    num? detune,
    PeriodicWave? periodicWave,
  });

  external OscillatorType get type;
  external set type(OscillatorType value);
  external double get frequency;
  external set frequency(num value);
  external double get detune;
  external set detune(num value);
  external PeriodicWave get periodicWave;
  external set periodicWave(PeriodicWave value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type PannerNode._(JSObject _) implements AudioNode, JSObject {
  external factory PannerNode(
    BaseAudioContext context, [
    PannerOptions options,
  ]);
  external void setPosition(
    num x,
    num y,
    num z,
  );
  external void setOrientation(
    num x,
    num y,
    num z,
  );
  external PanningModelType get panningModel;
  external set panningModel(PanningModelType value);
  external AudioParam get positionX;
  external AudioParam get positionY;
  external AudioParam get positionZ;
  external AudioParam get orientationX;
  external AudioParam get orientationY;
  external AudioParam get orientationZ;
  external DistanceModelType get distanceModel;
  external set distanceModel(DistanceModelType value);
  external double get refDistance;
  external set refDistance(num value);
  external double get maxDistance;
  external set maxDistance(num value);
  external double get rolloffFactor;
  external set rolloffFactor(num value);
  external double get coneInnerAngle;
  external set coneInnerAngle(num value);
  external double get coneOuterAngle;
  external set coneOuterAngle(num value);
  external double get coneOuterGain;
  external set coneOuterGain(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type PannerOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory PannerOptions({
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
  });

  external PanningModelType get panningModel;
  external set panningModel(PanningModelType value);
  external DistanceModelType get distanceModel;
  external set distanceModel(DistanceModelType value);
  external double get positionX;
  external set positionX(num value);
  external double get positionY;
  external set positionY(num value);
  external double get positionZ;
  external set positionZ(num value);
  external double get orientationX;
  external set orientationX(num value);
  external double get orientationY;
  external set orientationY(num value);
  external double get orientationZ;
  external set orientationZ(num value);
  external double get refDistance;
  external set refDistance(num value);
  external double get maxDistance;
  external set maxDistance(num value);
  external double get rolloffFactor;
  external set rolloffFactor(num value);
  external double get coneInnerAngle;
  external set coneInnerAngle(num value);
  external double get coneOuterAngle;
  external set coneOuterAngle(num value);
  external double get coneOuterGain;
  external set coneOuterGain(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type PeriodicWave._(JSObject _) implements JSObject {
  external factory PeriodicWave(
    BaseAudioContext context, [
    PeriodicWaveOptions options,
  ]);
}




// ------------------------------------------------------------------------------------------------------------------





extension type PeriodicWaveConstraints._(JSObject _) implements JSObject {
  external factory PeriodicWaveConstraints({bool? disableNormalization});

  external bool get disableNormalization;
  external set disableNormalization(bool value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type PeriodicWaveOptions._(JSObject _)
    implements PeriodicWaveConstraints, JSObject {
  external factory PeriodicWaveOptions({
    bool? disableNormalization,
    JSArray<JSNumber>? real,
    JSArray<JSNumber>? imag,
  });

  external JSArray<JSNumber> get real;
  external set real(JSArray<JSNumber> value);
  external JSArray<JSNumber> get imag;
  external set imag(JSArray<JSNumber> value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type ScriptProcessorNode._(JSObject _)
    implements AudioNode, JSObject {
  external EventHandler get onaudioprocess;
  external set onaudioprocess(EventHandler value);
  external int get bufferSize;
}




// ------------------------------------------------------------------------------------------------------------------





extension type StereoPannerNode._(JSObject _) implements AudioNode, JSObject {
  external factory StereoPannerNode(
    BaseAudioContext context, [
    StereoPannerOptions options,
  ]);
  external AudioParam get pan;
}




// ------------------------------------------------------------------------------------------------------------------





extension type StereoPannerOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory StereoPannerOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    num? pan,
  });

  external double get pan;
  external set pan(num value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type WaveShaperNode._(JSObject _) implements AudioNode, JSObject {
  external factory WaveShaperNode(
    BaseAudioContext context, [
    WaveShaperOptions options,
  ]);
  external JSFloat32Array? get curve;
  external set curve(JSFloat32Array? value);
  external OverSampleType get oversample;
  external set oversample(OverSampleType value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type WaveShaperOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory WaveShaperOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    JSArray<JSNumber>? curve,
    OverSampleType? oversample,
  });

  external JSArray<JSNumber> get curve;
  external set curve(JSArray<JSNumber> value);
  external OverSampleType get oversample;
  external set oversample(OverSampleType value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioWorklet._(JSObject _) implements Worklet, JSObject {}
extension type AudioWorkletGlobalScope._(JSObject _)
    implements WorkletGlobalScope, JSObject {
  external void registerProcessor(
    String name,
    AudioWorkletProcessorConstructor processorCtor,
  );
  external int get currentFrame;
  external double get currentTime;
  external double get sampleRate;
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioParamMap._(JSObject _) implements JSObject {}
extension type AudioWorkletNode._(JSObject _) implements AudioNode, JSObject {
  external factory AudioWorkletNode(
    BaseAudioContext context,
    String name, [
    AudioWorkletNodeOptions options,
  ]);
  external AudioParamMap get parameters;
  external MessagePort get port;
  external EventHandler get onprocessorerror;
  external set onprocessorerror(EventHandler value);
}




// ------------------------------------------------------------------------------------------------------------------





extension type AudioWorkletNodeOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory AudioWorkletNodeOptions({
    int? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
    int? numberOfInputs,
    int? numberOfOutputs,
    JSArray<JSNumber>? outputChannelCount,
    JSObject? parameterData,
    JSObject? processorOptions,
  });

  external int get numberOfInputs;
  external set numberOfInputs(int value);
  external int get numberOfOutputs;
  external set numberOfOutputs(int value);
  external JSArray<JSNumber> get outputChannelCount;
  external set outputChannelCount(JSArray<JSNumber> value);
  external JSObject get parameterData;
  external set parameterData(JSObject value);
  external JSObject get processorOptions;
  external set processorOptions(JSObject value);
}




// ------------------------------------------------------------------------------------------------------------------






extension type AudioWorkletProcessor._(JSObject _) implements JSObject {
  external factory AudioWorkletProcessor();
  external MessagePort get port;
}




// ------------------------------------------------------------------------------------------------------------------
