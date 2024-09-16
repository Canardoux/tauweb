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
 
// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

library;

import 'dart:typed_data';
import 'package:tauwa/tauwa.dart' as t;




// ------------------------------------------------------------------------------------------------------------------





abstract class BaseAudioContext implements t.BaseAudioContext {
  AnalyserNode createAnalyser();
  BiquadFilterNode createBiquadFilter();
  AudioBuffer createBuffer(
    int numberOfChannels,
    int length,
    num sampleRate,
  );

  AudioBufferSourceNode createBufferSource();
  ChannelMergerNode createChannelMerger([int numberOfInputs]);
  ChannelSplitterNode createChannelSplitter([int numberOfOutputs]);
  ConstantSourceNode createConstantSource();
  ConvolverNode createConvolver();
  DelayNode createDelay([num maxDelayTime]);
  DynamicsCompressorNode createDynamicsCompressor();
  GainNode createGain();
  IIRFilterNode createIIRFilter(
    TauArray<TauNumber> feedforward,
    TauArray<TauNumber> feedback,
  );
  OscillatorNode createOscillator();
  PannerNode createPanner();
  PeriodicWave createPeriodicWave(
    TauArray<TauNumber> real,
    TauArray<TauNumber> imag, [
    PeriodicWaveConstraints constraints,
  ]);
  ScriptProcessorNode createScriptProcessor([
    int bufferSize,
    int numberOfInputChannels,
    int numberOfOutputChannels,
  ]);
  StereoPannerNode createStereoPanner();
  WaveShaperNode createWaveShaper();
  TauPromise<AudioBuffer> decodeAudioData(
    TauArrayBuffer audioData, [
    DecodeSuccessCallback? successCallback,
    DecodeErrorCallback? errorCallback,
  ]);
  AudioDestinationNode get destination;
  double get sampleRate;
  double get currentTime;
  AudioListener get listener;
  AudioContextState get state;
  AudioWorklet get audioWorklet;
  EventHandler get onstatechange;
  set onstatechange(EventHandler value);
}




// ------------------------------------------------------------------------------------------------------------------





class AudioContext extends BaseAudioContext implements t.AudioContext {

  AudioContext newAudioContext([AudioContextOptions contextOptions]) => BaseAudioContext(contextOptions);

  AudioTimestamp getOutputTimestamp();
  TauPromise<TauAny?> resume();
  TauPromise<TauAny?> suspend();
  TauPromise<TauAny?> close();
  MediaElementAudioSourceNode createMediaElementSource(
      HTMLMediaElement mediaElement);
  MediaStreamAudioSourceNode createMediaStreamSource(
      MediaStream mediaStream);
  MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(
      MediaStreamTrack mediaStreamTrack);
  MediaStreamAudioDestinationNode createMediaStreamDestination();
  double get baseLatency;
  double get outputLatency;
}




// ------------------------------------------------------------------------------------------------------------------




class AudioContextOptions implements t.AudioContextOptions {

  AudioContextOptions newAudioContextOptions({
    TauAny latencyHint,
    num sampleRate,
    TauAny sinkId,
    TauAny renderSizeHint,
  }) => AudioContextOptions(latencyHint: latencyHint, sampleRate: sampleRate, sinkId: sinkId, renderSizeHint: renderSizeHint);

  TauAny get latencyHint;
  set latencyHint(TauAny value);
  double get sampleRate;
  set sampleRate(num value);
  TauAny get sinkId;
  set sinkId(TauAny value);
  TauAny get renderSizeHint;
  set renderSizeHint(TauAny value);
}




// ------------------------------------------------------------------------------------------------------------------




class AudioSinkOptions implements t.AudioSinkOptions {

 AudioSinkOptions newAudioSinkOptions({required AudioSinkType type}) => AudioSinkOptions(type: type);

  AudioSinkType get type;
  set type(AudioSinkType value);
}




// ------------------------------------------------------------------------------------------------------------------






class AudioTimestamp implements t.AudioTimestamp{

  AudioTimestamp newAudioTimestamp({
    num contextTime,
    DOMHighResTimeStamp performanceTime,
  }) => AudioTimestamp(contextTime: contextTime, performanceTime: performanceTime);

  double get contextTime;
  set contextTime(num value);
  double get performanceTime;
  set performanceTime(TauHighResTimeStamp value);
}




// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioContext extends BaseAudioContext implements t.OfflineAudioContext {

    OfflineAudioContext newOfflineAudioContext(
    TauAny contextOptionsOrNumberOfChannels, [
    int length,
    num sampleRate,
  ]) => OfflineAudioContext(contextOptionsOrNumberOfChannels, length, sampleRate);

  TauPromise<AudioBuffer> startRendering();
  TauPromise<TauAny?> resume();
  TauPromise<TauAny?> suspend(num suspendTime);
  int get length;
  EventHandler get oncomplete;
  set oncomplete(EventHandler value);
}




// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioContextOptions implements t.OfflineAudioContextOptions {

    OfflineAudioContextOptions newOfflineAudioContextOptions({
    int numberOfChannels,
    required int length,
    required num sampleRate,
    TauAny renderSizeHint,
  }) => OfflineAudioContextOptions(
    numberOfChannels: numberOfChannels,
    length: length,
    sampleRate: sampleRate,
    renderSizeHint: renderSizeHint,
  );

  int get numberOfChannels;
  set numberOfChannels(int value);
  int get length;
  set length(int value);
  double get sampleRate;
  set sampleRate(num value);
  TauAny get renderSizeHint;
  set renderSizeHint(TauAny value);
}



// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioCompletionEvent implements t.OfflineAudioCompletionEvent {

   OfflineAudioCompletionEvent newOfflineAudioCompletionEvent(
    String type,
    OfflineAudioCompletionEventInit eventInitDict,
  ) => OfflineAudioCompletionEvent(type, eventInitDict);


  AudioBuffer get renderedBuffer;
}





// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioCompletionEventInit implements t.OfflineAudioCompletionEventInit {

    OfflineAudioCompletionEventInit newOfflineAudioCompletionEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required AudioBuffer renderedBuffer,
  }) => OfflineAudioCompletionEventInit(bubbles: bubbles, cancelable: cancelable, composed: composed);

  AudioBuffer get renderedBuffer;
  set renderedBuffer(AudioBuffer value);
}




// ------------------------------------------------------------------------------------------------------------------





class AudioBuffer implements t.AudioBuffer {

  AudioBuffer newAudioBuffer(AudioBufferOptions options) => AudioBuffer(options);

  TauFloat32Array getChannelData(int channel);
  void copyFromChannel(
    TauFloat32Array destination,
    int channelNumber, [
    int bufferOffset,
  ]);
  void copyToChannel(
    TauFloat32Array source,
    int channelNumber, [
    int bufferOffset,
  ]);
  double get sampleRate;
  int get length;
  double get duration;
  int get numberOfChannels;
}




// ------------------------------------------------------------------------------------------------------------------




class AudioBufferOptions implements t.AudioBufferOptions {

  AudioBufferOptions newAudioBufferOptions({
    int numberOfChannels,
    required int length,
    required num sampleRate,
  }) => AudioBufferOptions(numberOfChannels: numberOfChannels, length: length, sampleRate: sampleRate);

  int get numberOfChannels;
  set numberOfChannels(int value);
  int get length;
  set length(int value);
  double get sampleRate;
  set sampleRate(num value);
}



// ------------------------------------------------------------------------------------------------------------------





abstract class AudioNode implements t.AudioNode {
  AudioNode? connect(
    TauObject destinationNodeOrDestinationParam, [
    int output,
    int input,
  ]);
  void disconnect([
    TauAny destinationNodeOrDestinationParamOrOutput,
    int output,
    int input,
  ]);
  BaseAudioContext get context;
  int get numberOfInputs;
  int get numberOfOutputs;
  int get channelCount;
  set channelCount(int value);
  ChannelCountMode get channelCountMode;
  set channelCountMode(ChannelCountMode value);
  ChannelInterpretation get channelInterpretation;
  set channelInterpretation(ChannelInterpretation value);
}





// ------------------------------------------------------------------------------------------------------------------




class AudioNodeOptions implements t.AudioNodeOptions {

  AudioNodeOptions newAudioNodeOptions({
    int channelCount,
    ChannelCountMode newchannelCountMode,
    ChannelInterpretation channelInterpretation,
  }) => AudioNodeOptions(channelCount: channelCount, channelCountMode: channelCountMode, channelInterpretation: channelInterpretation);

  int get channelCount;
  set channelCount(int value);
  ChannelCountMode get channelCountMode;
  set channelCountMode(ChannelCountMode value);
  ChannelInterpretation get channelInterpretation;
  set channelInterpretation(ChannelInterpretation value);
}





// ------------------------------------------------------------------------------------------------------------------





abstract class AudioParam t.AudioParam {
  AudioParam setValueAtTime(
    num value,
    num startTime,
  );
  AudioParam linearRampToValueAtTime(
    num value,
    num endTime,
  );
  AudioParam exponentialRampToValueAtTime(
    num value,
    num endTime,
  );

  AudioParam setTargetAtTime(
    num target,
    num startTime,
    num timeConstant,
  );
  AudioParam setValueCurveAtTime(
    TauArray<TauNumber> values,
    num startTime,
    num duration,
  );
  AudioParam cancelScheduledValues(num cancelTime);
  AudioParam cancelAndHoldAtTime(num cancelTime);
  double get value;
  set value(num value);
  AutomationRate get automationRate;
  set automationRate(AutomationRate value);
  double get defaultValue;
  double get minValue;
  double get maxValue;
}





// ------------------------------------------------------------------------------------------------------------------





abstract class AudioScheduledSourceNode extends AudioNode implements t.AudioScheduledSourceNode {
  void start([num when]);
  void stop([num when]);
  EventHandler get onended;
  set onended(EventHandler value);
}




// ------------------------------------------------------------------------------------------------------------------





class AnalyserNode extends AudioNode implements t.AnalyserNode {

    AnalyserNode newAnalyserNode(
    BaseAudioContext context, [
    AnalyserOptions options,
  ]) => AnalyserNode(context, options);

  void getFloatFrequencyData(TauFloat32Array array);
  void getByteFrequencyData(TauUint8Array array);
  void getFloatTimeDomainData(TauFloat32Array array);
  void getByteTimeDomainData(TauUint8Array array);
  int get fftSize;
  set fftSize(int value);
  int get frequencyBinCount;
  double get minDecibels;
  set minDecibels(num value);
  double get maxDecibels;
  set maxDecibels(num value);
  double get smoothingTimeConstant;
  set smoothingTimeConstant(num value);
}



// ------------------------------------------------------------------------------------------------------------------





class AnalyserOptions extends AudioNodeOptions implements t.AnalyserOptions {

    AnalyserOptions newAnalyserOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    int fftSize,
    num maxDecibels,
    num minDecibels,
    num smoothingTimeConstant,
  }) => AnalyserOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    fftSize: fftSize,
    maxDecibels: maxDecibels,
    minDecibels: minDecibels,
    smoothingTimeConstant: smoothingTimeConstant,
  );

  int get fftSize;
  set fftSize(int value);
  double get maxDecibels;
  set maxDecibels(num value);
  double get minDecibels;
  set minDecibels(num value);
  double get smoothingTimeConstant;
  set smoothingTimeConstant(num value);
}




// ------------------------------------------------------------------------------------------------------------------





class AudioBufferSourceNode extends AudioScheduledSourceNode implements t.AudioBufferSourceNode {

    AudioBufferSourceNode newAudioBufferSourceNode(
    BaseAudioContext context, [
    AudioBufferSourceOptions options,
  ]) => AudioBufferSourceNode(context, options);

  void start([
    num when,
    num offset,
    num duration,
  ]);

  AudioBuffer? get buffer;
  set buffer(AudioBuffer? value);
  AudioParam get playbackRate;
  AudioParam get detune;
  bool get loop;
  set loop(bool value);
  double get loopStart;
  set loopStart(num value);
  double get loopEnd;
  set loopEnd(num value);
}




// ------------------------------------------------------------------------------------------------------------------





class AudioBufferSourceOptions implements t.AudioBufferSourceOptions {

  AudioBufferSourceOptions newAudioBufferSourceOptions({
    AudioBuffer? buffer,
    num detune,
    bool loop,
    num loopEnd,
    num loopStart,
    num playbackRate,
  }) => (
    buffer: buffer,
    detune: detune,
    loop: loop,
    loopEnd: loopEnd,
    loopStart: loopStart,
    playbackRate: playbackRate,
  );

  AudioBuffer? get buffer;
  set buffer(AudioBuffer? value);
  double get detune;
  set detune(num value);
  bool get loop;
  set loop(bool value);
  double get loopEnd;
  set loopEnd(num value);
  double get loopStart;
  set loopStart(num value);
  double get playbackRate;
  set playbackRate(num value);
}




// ------------------------------------------------------------------------------------------------------------------




abstract class AudioDestinationNode extends AudioNode implements t.AudioDestinationNode {
  int get maxChannelCount;
}





// ------------------------------------------------------------------------------------------------------------------





class AudioListener implements t.AudioListener {
  void setPosition(
    num x,
    num y,
    num z,
  );
  void setOrientation(
    num x,
    num y,
    num z,
    num xUp,
    num yUp,
    num zUp,
  );
  AudioParam get positionX;
  AudioParam get positionY;
  AudioParam get positionZ;
  AudioParam get forwardX;
  AudioParam get forwardY;
  AudioParam get forwardZ;
  AudioParam get upX;
  AudioParam get upY;
  AudioParam get upZ;
}





// ------------------------------------------------------------------------------------------------------------------






class AudioProcessingEvent implements t.AudioProcessingEvent {

  AudioProcessingEvent newAudioProcessingEvent(
    String type,
    AudioProcessingEventInit eventInitDict,
  ) => AudioProcessingEvent(type, eventInitDict);

  double get playbackTime;
  AudioBuffer get inputBuffer;
  AudioBuffer get outputBuffer;
}






// ------------------------------------------------------------------------------------------------------------------





class AudioProcessingEventInit implements t.AudioProcessingEventInit {

 AudioProcessingEventInit newAudioProcessingEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required num playbackTime,
    required AudioBuffer inputBuffer,
    required AudioBuffer outputBuffer,
  }) => AudioProcessingEventInit(
    bubbles: bubbles,
    cancelable: cancelable,
    composed: composed,
    playbackTime: playbackTime,
    inputBuffer: inputBuffer,
    outputBuffer: outputBuffer,
  );

  double get playbackTime;
  set playbackTime(num value);
  AudioBuffer get inputBuffer;
  set inputBuffer(AudioBuffer value);
  AudioBuffer get outputBuffer;
  set outputBuffer(AudioBuffer value);
}




// ------------------------------------------------------------------------------------------------------------------





class BiquadFilterNode extends AudioNode implements t.BiquadFilterNode {

   BiquadFilterNode newBiquadFilterNode(
    BaseAudioContext context, [
    BiquadFilterOptions options,
  ]) => BiquadFilterNode(
    context, options
 
  void getFrequencyResponse(
    TauFloat32Array frequencyHz,
    TauFloat32Array magResponse,
    TauFloat32Array phaseResponse,
  );
  BiquadFilterType get type;
  set type(BiquadFilterType value);
  AudioParam get frequency;
  AudioParam get detune;
  AudioParam get Q;
  AudioParam get gain;
}




// ------------------------------------------------------------------------------------------------------------------




class BiquadFilterOptions extends AudioNodeOptions implements t.BiquadFilterOptions {

BiquadFilterOptions newBiquadFilterOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    BiquadFilterType type,
    num Q,
    num detune,
    num frequency,
    num gain,
  }) => BiquadFilterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    type: type,
    Q: Q,
    detune: detune,
    frequency: frequency,
    gain: gain,
  );

  BiquadFilterType get type;
  set type(BiquadFilterType value);
  double get Q;
  set Q(num value);
  double get detune;
  set detune(num value);
  double get frequency;
  set frequency(num value);
  double get gain;
  set gain(num value);
}




// ------------------------------------------------------------------------------------------------------------------





class ChannelMergerNode extends AudioNodeOptions implements t.ChannelMergerNode {

   ChannelMergerNode newChannelMergerNode(
    BaseAudioContext context, [
    ChannelMergerOptions options,
  ]) => ChannelMergerNode(
    context,
    options,
  );

}





// ------------------------------------------------------------------------------------------------------------------





class ChannelMergerOptions extends AudioNodeOptions implements t.ChannelMergerOptions {
 
  ChannelMergerOptions newChannelMergerOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    int numberOfInputs,
  }) => ChannelMergerOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfInputs: numberOfInputs,
  );

  int get numberOfInputs;
  set numberOfInputs(int value);
}




// ------------------------------------------------------------------------------------------------------------------





class ChannelSplitterNode extends AudioNode implements t.ChannelSplitterNode {
    ChannelSplitterNode newChannelSplitterNode(
    BaseAudioContext context, [
    ChannelSplitterOptions options,
  ]) => ChannelSplitterNode(
    context,
    options,
  );


}




// ------------------------------------------------------------------------------------------------------------------






class ChannelSplitterOptions extends AudioNodeOptions implements t.ChannelSplitterOptions {

 ChannelSplitterOptions newChannelSplitterOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    int numberOfOutputs,
  }) => ChannelSplitterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfOutputs: numberOfOutputs,
  );

  int get numberOfOutputs;
  set numberOfOutputs(int value);
}




// ------------------------------------------------------------------------------------------------------------------






class ConstantSourceNode AudioScheduledSourceNode implements t.ConstantSourceNode {

  ConstantSourceNode newConstantSourceNode(
    BaseAudioContext context, [
    ConstantSourceOptions options,
  ]) => ConstantSourceNode(
    context,
    options,
  );

  AudioParam get offset;
}





// ------------------------------------------------------------------------------------------------------------------





class ConstantSourceOptions extends implements t.ConstantSourceOptions {
 
  ConstantSourceOption newConstantSourceOptions({num offset}) => ConstantSourceOption(offset: offset);

  double get offset;
  set offset(num value);
}





// ------------------------------------------------------------------------------------------------------------------





class ConvolverNode extends AudioNode implements t.ConvolverNode {

   ConvolverNode newConvolverNode(
    BaseAudioContext context, [
    ConvolverOptions options,
  ]) => ConstantSourceOption(
    context,
    options,
  );

  AudioBuffer? get buffer;
  set buffer(AudioBuffer? value);
  bool get normalize;
  set normalize(bool value);
}





// ------------------------------------------------------------------------------------------------------------------




class ConvolverOptions extends AudioNodeOptions implements t.ConvolverOptions {

  ConvolverOptions newConvolverOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    AudioBuffer? buffer,
    bool disableNormalization,
  }) => ConvolverOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    buffer: buffer,
    disableNormalization: disableNormalization,
  );

  AudioBuffer? get buffer;
  set buffer(AudioBuffer? value);
  bool get disableNormalization;
  set disableNormalization(bool value);
}




// ------------------------------------------------------------------------------------------------------------------






class DelayNode extends AudioNode implements t.DelayNode {

    DelayNode newDelayNode(
    BaseAudioContext context, [
    DelayOptions options,
  ]) => DelayNode(
    context,
    options,
  );

  AudioParam get delayTime;
}




// ------------------------------------------------------------------------------------------------------------------






class DelayOptions extends AudioNodeOptions implements t.DelayOptions {

  DelayOptions newDelayOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    num maxDelayTime,
    num delayTime,
  }) => DelayOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    maxDelayTime: maxDelayTime,
    delayTime: delayTime,
  );

  double get maxDelayTime;
  set maxDelayTime(num value);
  double get delayTime;
  set delayTime(num value);
}




// ------------------------------------------------------------------------------------------------------------------




class DynamicsCompressorNode extends AudioNode implements t.DynamicsCompressorNode {

    DynamicsCompressorNode newDynamicsCompressorNode(
    BaseAudioContext context, [
    DynamicsCompressorOptions options,
  ]) => DynamicsCompressorNode(
    context,
    options,
  );

  AudioParam get threshold;
  AudioParam get knee;
  AudioParam get ratio;
  double get reduction;
  AudioParam get attack;
  AudioParam get release;
}




// ------------------------------------------------------------------------------------------------------------------





class DynamicsCompressorOptions extends AudioNodeOptions implements t.DynamicsCompressorOptions {

  DynamicsCompressorOptions newDynamicsCompressorOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    num attack,
    num knee,
    num ratio,
    num release,
    num threshold,
  }) => DynamicsCompressorOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    attack: attack,
    knee: knee,
    ratio: ratio,
    release: release,
    threshold: threshold,
  );

  double get attack;
  set attack(num value);
  double get knee;
  set knee(num value);
  double get ratio;
  set ratio(num value);
  double get release;
  set release(num value);
  double get threshold;
  set threshold(num value);
}




// ------------------------------------------------------------------------------------------------------------------







class GainNode extends AudioNode implements t.GainNode{

    GainNode newGainNode(
    BaseAudioContext context, [
    GainOptions options,
  ]) => GainNode(
    context,
    options,
  );

  AudioParam get gain;
}






// ------------------------------------------------------------------------------------------------------------------





class GainOptions extends AudioNodeOptions implements t.GainOptions {

    GainOptions newGainOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    num gain,
  }) => GainOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    gain: gain,
  );

  double get gain;
  set gain(num value);
}





// ------------------------------------------------------------------------------------------------------------------





class IIRFilterNode extends AudioNode implements t.IIRFilterNode {

    IIRFilterNode newIIRFilterNode(
    BaseAudioContext context,
    IIRFilterOptions options,
  ) => IIRFilterNode(
    context,
    options,
  );

  void getFrequencyResponse(
    TauFloat32Array frequencyHz,
    TauFloat32Array magResponse,
    TauFloat32Array phaseResponse,
  );
}





// ------------------------------------------------------------------------------------------------------------------







class IIRFilterOptions extends AudioNodeOptions implements t.IIRFilterNode {

    IIRFilterOptions newIIRFilterOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    required JSArray<JSNumber> feedforward,
    required JSArray<JSNumber> feedback,
  }) => IIRFilterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    feedforward: feedforward,
    feedback: feedback
  );

  TauArray<TauNumber> get feedforward;
  set feedforward(TauArray<TauNumber> value);
  TauArray<TauNumber> get feedback;
  set feedback(TauArray<TauNumber> value);
}





// ------------------------------------------------------------------------------------------------------------------







class MediaElementAudioSourceNode extends AudioNode implements t.MediaElementAudioSourceNode {

    MediaElementAudioSourceNode newMediaElementAudioSourceNode(
    AudioContext context,
    MediaElementAudioSourceOptions options,
  ) => MediaElementAudioSourceNode(
    context,
    options,
  );

  HTMLMediaElement get mediaElement;
}





// ------------------------------------------------------------------------------------------------------------------






class MediaElementAudioSourceOptions implements t.MediaElementAudioSourceOptions {

    MediaElementAudioSourceOptions newMediaElementAudioSourceOptions(
      {required HTMLMediaElement mediaElement}) => MediaElementAudioSourceOptions(
        mediaElement: mediaElement,
      );

  HTMLMediaElement get mediaElement;
  set mediaElement(HTMLMediaElement value);
}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamAudioDestinationNode extends AudioNode implements t.MediaStreamAudioDestinationNode {

    MediaStreamAudioDestinationNode newMediaStreamAudioDestinationNode(
    AudioContext context, [
    AudioNodeOptions options,
  ]) => MediaStreamAudioDestinationNode(
    context,
    options,
  );

  MediaStream get stream;
}




// ------------------------------------------------------------------------------------------------------------------






class MediaStreamAudioSourceNode extends AudioNode implements t.MediaStreamAudioSourceNode {

    MediaStreamAudioSourceNode newMediaStreamAudioSourceNode(
    AudioContext context,
    MediaStreamAudioSourceOptions options,
  ) => MediaStreamAudioSourceNode(
    context,
    options,
  );

  MediaStream get mediaStream;
}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamAudioSourceOptions implements t.MediaStreamAudioSourceOptions {

    MediaStreamAudioSourceOptions newMediaStreamAudioSourceOptions(
      {required MediaStream mediaStream}) => MediaStreamAudioSourceOptions(
        mediaStream: mediaStream,
      );

  MediaStream get mediaStream;
  set mediaStream(MediaStream value);
}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamTrackAudioSourceNode extends AudioNode implements t.MediaStreamTrackAudioSourceNode {

    MediaStreamTrackAudioSourceNode newMediaStreamTrackAudioSourceNode(
    AudioContext context,
    MediaStreamTrackAudioSourceOptions options,
  ) => MediaStreamTrackAudioSourceNode(
    context,
    options,
  );

}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamTrackAudioSourceOptions implements t.MediaStreamTrackAudioSourceNode {

    MediaStreamTrackAudioSourceOptions newMediaStreamTrackAudioSourceOptions(
      {required MediaStreamTrack mediaStreamTrack}) => MediaStreamTrackAudioSourceOptions(
        mediaStreamTrack: mediaStreamTrack,
      );

  MediaStreamTrack get mediaStreamTrack;
  set mediaStreamTrack(MediaStreamTrack value);
}




// ------------------------------------------------------------------------------------------------------------------






class OscillatorNode extends AudioScheduledSourceNode implements t.OscillatorNode {

    OscillatorNode newOscillatorNode(
    BaseAudioContext context, [
    OscillatorOptions options,
  ]) => OscillatorNode(
    context,
    options,
  );

  void setPeriodicWave(PeriodicWave periodicWave);
  OscillatorType get type;
  set type(OscillatorType value);
  AudioParam get frequency;
  AudioParam get detune;
}




// ------------------------------------------------------------------------------------------------------------------









class OscillatorOptions extends AudioNodeOptions implements t.OscillatorOptions {

  OscillatorOptions newOscillatorOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    OscillatorType type,
    num frequency,
    num detune,
    PeriodicWave periodicWave,
  }) => OscillatorOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    type: type,
    frequency: frequency,
    detune: detune,
    periodicWave: periodicWave,
  );

  OscillatorType get type;
  set type(OscillatorType value);
  double get frequency;
  set frequency(num value);
  double get detune;
  set detune(num value);
  PeriodicWave get periodicWave;
  set periodicWave(PeriodicWave value);
}




// ------------------------------------------------------------------------------------------------------------------







class PannerNode extends AudioNode implements t.PannerNode {

    PannerNode newPannerNode(
    BaseAudioContext context, [
    PannerOptions options,
  ]) => PannerNode(
    context,
    options,
  );

   void setPosition(
    num x,
    num y,
    num z,
  );

  void setOrientation(
    num x,
    num y,
    num z,
  );
  PanningModelType get panningModel;
  set panningModel(PanningModelType value);
  AudioParam get positionX;
  AudioParam get positionY;
  AudioParam get positionZ;
  AudioParam get orientationX;
  AudioParam get orientationY;
  AudioParam get orientationZ;
  DistanceModelType get distanceModel;
  set distanceModel(DistanceModelType value);
  double get refDistance;
  set refDistance(num value);
  double get maxDistance;
  set maxDistance(num value);
  double get rolloffFactor;
  set rolloffFactor(num value);
  double get coneInnerAngle;
  set coneInnerAngle(num value);
  double get coneOuterAngle;
  set coneOuterAngle(num value);
  double get coneOuterGain;
  set coneOuterGain(num value);
}





// ------------------------------------------------------------------------------------------------------------------







class PannerOptions extends AudioNodeOptions implements t.PannerOptions {

    PannerOptions newPannerOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    PanningModelType panningModel,
    DistanceModelType distanceModel,
    num positionX,
    num positionY,
    num positionZ,
    num orientationX,
    num orientationY,
    num orientationZ,
    num refDistance,
    num maxDistance,
    num rolloffFactor,
    num coneInnerAngle,
    num coneOuterAngle,
    num coneOuterGain,
  }) => newPannerOptions(
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

  PanningModelType get panningModel;
  set panningModel(PanningModelType value);
  DistanceModelType get distanceModel;
  set distanceModel(DistanceModelType value);
  double get positionX;
  set positionX(num value);
  double get positionY;
  set positionY(num value);
  double get positionZ;
  set positionZ(num value);
  double get orientationX;
  set orientationX(num value);
  double get orientationY;
  set orientationY(num value);
  double get orientationZ;
  set orientationZ(num value);
  double get refDistance;
  set refDistance(num value);
  double get maxDistance;
  set maxDistance(num value);
  double get rolloffFactor;
  set rolloffFactor(num value);
  double get coneInnerAngle;
  set coneInnerAngle(num value);
  double get coneOuterAngle;
  set coneOuterAngle(num value);
  double get coneOuterGain;
  set coneOuterGain(num value);
}






// ------------------------------------------------------------------------------------------------------------------






class PeriodicWave implements t.PeriodicWave {

  PeriodicWave newPeriodicWave(
    BaseAudioContext context, [
    PeriodicWaveOptions options,
  ]) => PeriodicWave(
    context,
    options,
  );

}





// ------------------------------------------------------------------------------------------------------------------







class PeriodicWaveConstraints t.PeriodicWaveConstraints {

  PeriodicWaveConstraints newPeriodicWaveConstraints({bool disableNormalization}) => PeriodicWaveConstraints(disableNormalization: disableNormalization);

  bool get disableNormalization;
  set disableNormalization(bool value);
}





// ------------------------------------------------------------------------------------------------------------------






class PeriodicWaveOptions extends PeriodicWaveConstraints implements t.PeriodicWaveOptions {

    PeriodicWaveOptions newPeriodicWaveOptions({
    bool disableNormalization,
    JSArray<JSNumber> real,
    JSArray<JSNumber> imag,
  }) => PeriodicWaveConstraints(
    disableNormalization: disableNormalization,
    real: real,
    imag: imag,
  );

  TauArray<TauNumber> get real;
  set real(TauArray<TauNumber> value);
  TauArray<TauNumber> get imag;
  set imag(TauArray<TauNumber> value);
}





// ------------------------------------------------------------------------------------------------------------------





class ScriptProcessorNode extends AudioNode implements t.ScriptProcessorNode {
  EventHandler get onaudioprocess;
  set onaudioprocess(EventHandler value);
  int get bufferSize;
}




// ------------------------------------------------------------------------------------------------------------------






class StereoPannerNode extends AudioNode implements t.StereoPannerNode {

    StereoPannerNode newStereoPannerNode(
    BaseAudioContext context, [
    StereoPannerOptions options,
  ]) => StereoPannerNode(
    context,
    options,
  );

  AudioParam get pan;
}





// ------------------------------------------------------------------------------------------------------------------






class StereoPannerOptions extends AudioNodeOptions implements t.StereoPannerOptions {

    StereoPannerOptions newStereoPannerOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    num pan,
  }) => StereoPannerOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    pan: pan,
  );

  double get pan;
  set pan(num value);
}





// ------------------------------------------------------------------------------------------------------------------





class WaveShaperNode extends AudioNode implements t.WaveShaperNode {

    WaveShaperNode newWaveShaperNode(
    BaseAudioContext context, [
    WaveShaperOptions options,
  ]) => WaveShaperNode(
    context,
    options,
  );

  TauFloat32Array? get curve;
  set curve(TauFloat32Array? value);
  OverSampleType get oversample;
  set oversample(OverSampleType value);
}





// ------------------------------------------------------------------------------------------------------------------






class WaveShaperOptions extends AudioNodeOptions implements t.WaveShaperOptions {

    WaveShaperOptions newWaveShaperOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    JSArray<JSNumber> curve,
    OverSampleType oversample,
  }) => WaveShaperOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    curve: curve,
    oversample: oversample,
  );

  TauArray<TauNumber> get curve;
  set curve(TauArray<TauNumber> value);
  OverSampleType get oversample;
  set oversample(OverSampleType value);
}




// ------------------------------------------------------------------------------------------------------------------





class AudioWorklet implements t.AudioWorklet {

}




// ------------------------------------------------------------------------------------------------------------------





class AudioWorkletGlobalScope extends WorkletGlobalScope implements t.AudioWorkletGlobalScope {
  void registerProcessor(
    String name,
    AudioWorkletProcessorConstructor processorCtor,
  );
  int get currentFrame;
  double get currentTime;
  double get sampleRate;
}





// ------------------------------------------------------------------------------------------------------------------







class AudioParamMap implements t.AudioParamMap {}








// ------------------------------------------------------------------------------------------------------------------






class AudioWorkletNode extends AudioNode implements t.AudioWorkletNode {

     AudioWorkletNode newAudioWorkletNode(
    BaseAudioContext context,
    String name, [
    AudioWorkletNodeOptions options,
  ]) => AudioWorkletNode(
    context,
    name,
    options,
  );


  AudioParamMap get parameters;
  MessagePort get port;
  EventHandler get onprocessorerror;
  set onprocessorerror(EventHandler value);
}






// ------------------------------------------------------------------------------------------------------------------








class AudioWorkletNodeOptions extends AudioNodeOptions implements t.AudioWorkletNodeOptions {

  AudioWorkletNodeOptions newAudioWorkletNodeOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    int numberOfInputs,
    int numberOfOutputs,
    JSArray<JSNumber> outputChannelCount,
    JSObject parameterData,
    JSObject processorOptions,
  }) => AudioWorkletNodeOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfInputs: numberOfInputs,
    numberOfOutputs: numberOfOutputs,
    outputChannelCount: outputChannelCount,
    parameterData: parameterData,
    processorOptions: processorOptions,
  );

  int get numberOfInputs;
  set numberOfInputs(int value);
  int get numberOfOutputs;
  set numberOfOutputs(int value);
  TauArray<TauNumber> get outputChannelCount;
  set outputChannelCount(TauArray<TauNumber> value);
  TauObject get parameterData;
  set parameterData(TauObject value);
  TauObject get processorOptions;
  set processorOptions(TauObject value);
}






// ------------------------------------------------------------------------------------------------------------------





class AudioWorkletProcessor implements t.AudioWorkletProcessor {
  MessagePort get port;
}




// ------------------------------------------------------------------------------------------------------------------

