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
import 'tauwaweb_audio.dart' as j;



// ------------------------------------------------------------------------------------------------------------------





abstract class BaseAudioContext implements t.BaseAudioContext {
  j.BaseAudioContext getDelegate();

  AnalyserNode createAnalyser() => getDelegate().createAnalyser();
  BiquadFilterNode createBiquadFilter() => getDelegate().createBiquadFilter();

  AudioBuffer createBuffer(
    int numberOfChannels,
    int length,
    num sampleRate,
  ) => getDelegate().createBuffer(numberOfChannels, length, sampleRate);

  AudioBufferSourceNode createBufferSource() => getDelegate().createBufferSource();
  ChannelMergerNode createChannelMerger([int numberOfInputs]) => getDelegate().createChannelMerger(numberOfInputs);
  ChannelSplitterNode createChannelSplitter([int numberOfOutputs]) => getDelegate().createChannelSplitter(numberOfOutputs);
  ConstantSourceNode createConstantSource() => getDelegate().createConstantSource();
  ConvolverNode createConvolver() => getDelegate().createConvolver();
  DelayNode createDelay([num maxDelayTime]) => getDelegate().createDelay(maxDelayTime);
  DynamicsCompressorNode createDynamicsCompressor() => getDelegate().createDynamicsCompressor();
  GainNode createGain() => getDelegate().createGain();

  IIRFilterNode createIIRFilter(
    t.TauArray<t.TauNumber> feedforward,
    t.TauArray<t.TauNumber> feedback,
  ) => getDelegate().createIIRFilter(feedforward, feedback);

  OscillatorNode createOscillator() => getDelegate().createOscillator();
  PannerNode createPanner() => getDelegate().createPanner();

  PeriodicWave createPeriodicWave(
    t.TauArray<t.TauNumber> real,
    t.TauArray<t.TauNumber> imag, [
    PeriodicWaveConstraints constraints,
  ]) => getDelegate().createPeriodicWave(real, imag, constraints);

  ScriptProcessorNode createScriptProcessor([
    int bufferSize,
    int numberOfInputChannels,
    int numberOfOutputChannels,
  ]) => getDelegate().createScriptProcessor(bufferSize, numberOfInputChannels, numberOfOutputChannels);

  StereoPannerNode createStereoPanner() => getDelegate().createStereoPanner();
  WaveShaperNode createWaveShaper() => getDelegate().createWaveShaper();

  t.TauPromise<AudioBuffer> decodeAudioData(
    t.TauArrayBuffer audioData, [
    t.DecodeSuccessCallback? successCallback,
    t.DecodeErrorCallback? errorCallback,
  ]) => getDelegate().decodeAudioData(audioData, successCallback, errorCallback);

  AudioDestinationNode get destination => getDelegate().destination;
  double get sampleRate => getDelegate().sampleRate;
  double get currentTime => getDelegate().currentTime;
  AudioListener get listener => getDelegate().listener;
  t.AudioContextState get state => getDelegate().state;
  AudioWorklet get audioWorklet => getDelegate().audioWorklet;
  t.EventHandler get onstatechange => getDelegate().onstatechange;
  set onstatechange(t.EventHandler value) => getDelegate().onstatechange(value);
}




// ------------------------------------------------------------------------------------------------------------------





class AudioContext extends BaseAudioContext implements t.AudioContext {

  j.AudioContext delegate;
  j.BaseAudioContext getDelegate() => delegate;
  /* ctor */ AudioContext.fromDelegate(this.delegate);
  /* ctor */ AudioContext([t.AudioContextOptions contextOptions]) : delegate = j.AudioContext((contextOptions as AudioContextOptions).delegate);

  AudioTimestamp getOutputTimestamp() => delegate.OutputTimestamp;
  t.TauPromise<t.TauAny?> resume() => delegate.resume();
  t.TauPromise<t.TauAny?> suspend() => delegate.suspend();
  t.TauPromise<t.TauAny?> close() => delegate.close();
  MediaElementAudioSourceNode createMediaElementSource(t.HTMLMediaElement mediaElement) => delegate.createMediaElementSource(mediaElement);
  MediaStreamAudioSourceNode createMediaStreamSource(t.MediaStream mediaStream) => delegate.createMediaStreamSource(mediaStream);
  MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(t.MediaStreamTrack mediaStreamTrack) => delegate.createMediaStreamTrackSource(mediaStreamTrack);
  MediaStreamAudioDestinationNode createMediaStreamDestination() => delegate.createMediaStreamDestination();
  double get baseLatency => delegate.baseLatency;
  double get outputLatency => delegate.outputLatency;
}




// ------------------------------------------------------------------------------------------------------------------




class AudioContextOptions implements t.AudioContextOptions {

  j.AudioContextOptions delegate;
  /* ctor */ AudioContextOptions.fromDelegate(this.delegate);

  /* ctor */ AudioContextOptions({
    t.TauAny latencyHint,
    num sampleRate,
    t.TauAny sinkId,
    t.TauAny renderSizeHint,
  }) : delegate = j.AudioContextOptions(latencyHint: latencyHint, sampleRate: sampleRate, sinkId: sinkId, renderSizeHint: renderSizeHint);


  t.TauAny get latencyHint => delegate.latencyHint;
  set latencyHint(t.TauAny value) => delegate.latencyHint = value;
  double get sampleRate => delegate.sampleRate;
  set sampleRate(num value) => delegate.sampleRate = value;
  t.TauAny get sinkId => delegate.sinkId;
  set sinkId(t.TauAny value) => delegate.sinkId = value;
  t.TauAny get renderSizeHint => delegate.renderSizeHint;
  set renderSizeHint(t.TauAny value) => delegate.renderSizeHint = value;
}




// ------------------------------------------------------------------------------------------------------------------




class AudioSinkOptions implements t.AudioSinkOptions {

  j.AudioContextOptions delegate;

  /* ctor */ AudioSinkOptions.fromDelegate(this.delegate);
  /* ctor */ AudioSinkOptions({required t.AudioSinkType type}) : delegate = j.AudioSinkOptions(type: type);

  t.AudioSinkType get type => delegate.type;
  set type(t.AudioSinkType value) => delegate.type = value;
}




// ------------------------------------------------------------------------------------------------------------------






class AudioTimestamp implements t.AudioTimestamp{

  j.AudioTimestamp delegate;

  /* ctor */ AudioTimestamp.fromDelegate(this.delegate);
  /* ctor */ AudioTimestamp({required t.AudioSinkType type}) : delegate = j.AudioSinkOptions(type: type);

  double get contextTime => delegate.contextTime;
  set contextTime(num value) => delegate.contextTime = value;
  double get performanceTime =>  delegate.performanceTime;
  set performanceTime(t.TauHighResTimeStamp value) => delegate.performanceTime = value;
}




// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioContext extends BaseAudioContext implements t.OfflineAudioContext {

  j.OfflineAudioContext delegate;
  j.BaseAudioContext getDelegate() => delegate;

  /* ctor */ OfflineAudioContext.fromDelegate(this.delegate);
  /* ctor */  OfflineAudioContext(
    t.TauAny contextOptionsOrNumberOfChannels, [
    int length,
    num sampleRate,
  ])  : delegate = j. OfflineAudioContext(contextOptionsOrNumberOfChannels, length, sampleRate);

  t.TauPromise<AudioBuffer> startRendering() => delegate.startRendering();
  t.TauPromise<t.TauAny?> resume() => delegate.resume();
  t.TauPromise<t.TauAny?> suspend(num suspendTime) => delegate.suspend(suspendTime);
  int get length => delegate.length;
  t.EventHandler get oncomplete => delegate.oncomplete;
  set oncomplete(t.EventHandler value) => delegate.oncomplete = value;
}




// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioContextOptions implements t.OfflineAudioContextOptions {

  j.OfflineAudioContextOptions delegate;
  j.OfflineAudioContextOptions getDelegate() => delegate;

  /* ctor */ OfflineAudioContextOptions.fromDelegate(this.delegate);
  /* ctor */  OfflineAudioContextOptions({
    int numberOfChannels,
    required int length,
    required num sampleRate,
    t.TauAny renderSizeHint,
  }) : delegate = j.OfflineAudioContextOptions(
    numberOfChannels: numberOfChannels,
    length: length,
    sampleRate: sampleRate,
    renderSizeHint: renderSizeHint,
  );

  int get numberOfChannels => delegate.numberOfChannels;
  set numberOfChannels(int value) => delegate.numberOfChannels = value;
  int get length =>  delegate.length;
  set length(int value) => delegate.length = value;
  double get sampleRate => delegate.sampleRate;
  set sampleRate(num value) => delegate.sampleRate = value;
  t.TauAny get renderSizeHint => delegate.renderSizeHint;
  set renderSizeHint(t.TauAny value) => delegate.renderSizeHint = value;
}



// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioCompletionEvent implements t.OfflineAudioCompletionEvent {

  j.OfflineAudioCompletionEvent delegate;
  j.OfflineAudioCompletionEvent getDelegate() => delegate;

  /* ctor */ OfflineAudioCompletionEvent.fromDelegate(this.delegate);
  /* ctor */ OfflineAudioCompletionEvent (
    String type,
    OfflineAudioCompletionEventInit eventInitDict,
  ) : delegate = j.OfflineAudioCompletionEvent(type, eventInitDict);


  AudioBuffer get renderedBuffer => delegate.renderedBuffer;
}





// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioCompletionEventInit implements t.OfflineAudioCompletionEventInit {

    j.OfflineAudioCompletionEventInit delegate;
    j.OfflineAudioCompletionEventInit getDelegate() => delegate;

    /* ctor */ OfflineAudioCompletionEventInit.fromDelegate(this.delegate);
    /* ctor */ OfflineAudioCompletionEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required AudioBuffer renderedBuffer,
  }) : delegate =  j.OfflineAudioCompletionEventInit(bubbles: bubbles, cancelable: cancelable, composed: composed);

  AudioBuffer get renderedBuffer => delegate.renderedBuffer;
  set renderedBuffer(AudioBuffer value) => delegate.renderedBuffer = value;
}




// ------------------------------------------------------------------------------------------------------------------





class AudioBuffer implements t.AudioBuffer {

  j.AudioBuffer delegate;
  j.AudioBuffer getDelegate() => delegate;

  /* ctor */ AudioBuffer.fromDelegate(this.delegate);
  /* ctor */ AudioBuffer(AudioBufferOptions options) : delegate = j.AudioBuffer(options);

  t.TauFloat32Array getChannelData(int channel) => delegate.getChannelData(channel);
  void copyFromChannel(
    t.TauFloat32Array destination,
    int channelNumber, [
    int bufferOffset,
  ]) => delegate.copyFromChannel(
    source,
    channelNumber,
    bufferOffset,
  );
  void copyToChannel(
      t.TauFloat32Array source,
      int channelNumber, [
      int bufferOffset,
      ]) => copyToChannel(source, channelNumber, bufferOffset);

  double get sampleRate => delegate.sampleRate;
  int get length => delegate.length;
  double get duration => delegate.duration;
  int get numberOfChannels => delegate.numberOfChannels;
}




// ------------------------------------------------------------------------------------------------------------------




class AudioBufferOptions implements t.AudioBufferOptions {

  j.AudioBufferOptions delegate;
  j.AudioBufferOptions getDelegate() => delegate;

  /* ctor */ AudioBufferOptions.fromDelegate(this.delegate);
  /* ctor */ AudioBufferOptions({
    int numberOfChannels,
    required int length,
    required num sampleRate,
  }) : delegate = j.AudioBufferOptions(numberOfChannels: numberOfChannels, length: length, sampleRate: sampleRate);

  int get numberOfChannels => delegate.numberOfChannels;
  set numberOfChannels(int value) => delegate.numberOfChannels = value;
  int get length => delegate.length;
  set length(int value) => delegate.length = value;
  double get sampleRate => delegate.sampleRate;
  set sampleRate(num value) => delegate.sampleRate = value;
}



// ------------------------------------------------------------------------------------------------------------------





abstract class AudioNode implements t.AudioNode {
  j.AudioNode getDelegate();

  AudioNode? connect(
    t.TauObject destinationNodeOrDestinationParam, [
    int output,
    int input,
  ]) => getDelegate().connect(destinationNodeOrDestinationParam, output, input);
  void disconnect([
    t.TauAny destinationNodeOrDestinationParamOrOutput,
    int output,
    int input,
  ]) => getDelegate().disconnect(destinationNodeOrDestinationParamOrOutput, output, input);
  BaseAudioContext get context => getDelegate().context;
  int get numberOfInputs => getDelegate().numberOfInputs;
  int get numberOfOutputs => getDelegate().numberOfOutputs;
  int get channelCount => getDelegate().channelCount;
  set channelCount(int value) => getDelegate().channelCount = value;
  t.ChannelCountMode get channelCountMode => getDelegate().channelCountMode;
  set channelCountMode(t.ChannelCountMode value) => getDelegate().channelCountMode = value;
  t.ChannelInterpretation get channelInterpretation => getDelegate().channelInterpretation;
  set channelInterpretation(t.ChannelInterpretation value) => getDelegate().channelInterpretation = value;
}





// ------------------------------------------------------------------------------------------------------------------




class AudioNodeOptions implements t.AudioNodeOptions {

  j.AudioNodeOptions delegate;
  j.AudioNodeOptions getDelegate() => delegate;

  /* ctor */ AudioNodeOptions.fromDelegate(this.delegate);
  /* ctor */ AudioNodeOptions({
    int channelCount,
    t.ChannelCountMode newchannelCountMode,
    t.ChannelInterpretation channelInterpretation,
  }) : delegate = j.AudioNodeOptions(channelCount: channelCount, channelCountMode: channelCountMode, channelInterpretation: channelInterpretation);

  int get channelCount => delegate.channelCount;
  set channelCount(int value) => delegate.channelCount = value;
  t.ChannelCountMode get channelCountMode => delegate.channelCountMode;
  set channelCountMode(t.ChannelCountMode value) => delegate.channelCountMode = value;
  t.ChannelInterpretation get channelInterpretation => delegate.channelInterpretation;
  set channelInterpretation(t.ChannelInterpretation value) => delegate.channelInterpretation = value;
}





// ------------------------------------------------------------------------------------------------------------------





abstract class AudioParam implements t.AudioParam {

  j.AudioParam getDelegate();

  AudioParam setValueAtTime(
    num value,
    num startTime,
  ) => getDelegate().setTargetAtTime(value, startTime);

  AudioParam linearRampToValueAtTime(
    num value,
    num endTime,
  ) => getDelegate().linearRampToValueAtTime(value, endTime);

  AudioParam exponentialRampToValueAtTime(
    num value,
    num endTime,
  ) => getDelegate().exponentialRampToValueAtTime(value, endTime);

  AudioParam setTargetAtTime(
    num target,
    num startTime,
    num timeConstant,
  ) => getDelegate().setTargetAtTime(target, startTime, timeConstant);

  AudioParam setValueCurveAtTime(
    t.TauArray<t.TauNumber> values,
    num startTime,
    num duration,
  ) => getDelegate().setValueCurveAtTime(values, startTime, duration);

  AudioParam cancelScheduledValues(num cancelTime) => getDelegate().cancelScheduledValues(cancelTime);
  AudioParam cancelAndHoldAtTime(num cancelTime) => getDelegate().cancelAndHoldAtTime(cancelTime);
  double get value => getDelegate().value;
  set value(num value) => getDelegate().value = value;
  t.AutomationRate get automationRate => getDelegate().automationRate;
  set automationRate(t.AutomationRate value) => getDelegate().automationRate = value;
  double get defaultValue => getDelegate().defaultValue;
  double get minValue => getDelegate().minValue;
  double get maxValue => getDelegate().maxValue;
}





// ------------------------------------------------------------------------------------------------------------------





abstract class AudioScheduledSourceNode extends AudioNode implements t.AudioScheduledSourceNode {
  j.AudioScheduledSourceNode getDelegate();

  void start([num when]) => getDelegate().start(when);
  void stop([num when]) => getDelegate().stop(when);
  t.EventHandler get onended => getDelegate().onended;
  set onended(t.EventHandler value) => getDelegate().onended = value;
}




// ------------------------------------------------------------------------------------------------------------------





class AnalyserNode extends AudioNode implements t.AnalyserNode {

    AnalyserNode newAnalyserNode(
    BaseAudioContext context, [
    AnalyserOptions options,
  ]) => AnalyserNode(context, options);

  void getFloatFrequencyData(t.TauFloat32Array array);
  void getByteFrequencyData(t.TauUint8Array array);
  void getFloatTimeDomainData(t.TauFloat32Array array);
  void getByteTimeDomainData(t.TauUint8Array array);
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
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
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
    context, options);

  void getFrequencyResponse(
    t.TauFloat32Array frequencyHz,
    t.TauFloat32Array magResponse,
    t.TauFloat32Array phaseResponse,
  );
  t.BiquadFilterType get type;
  set type(t.BiquadFilterType value);
  AudioParam get frequency;
  AudioParam get detune;
  AudioParam get Q;
  AudioParam get gain;
}




// ------------------------------------------------------------------------------------------------------------------




class BiquadFilterOptions extends AudioNodeOptions implements t.BiquadFilterOptions {

BiquadFilterOptions newBiquadFilterOptions({
    int channelCount,
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
    t.BiquadFilterType type,
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

  t.BiquadFilterType get type;
  set type(t.BiquadFilterType value);
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
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
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
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
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






class ConstantSourceNode extends AudioScheduledSourceNode implements t.ConstantSourceNode {

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





class ConstantSourceOptions  extends AudioNodeOptions implements t.ConstantSourceOptions {

  ConstantSourceOptions newConstantSourceOptions({num offset}) => ConstantSourceOption(offset: offset);

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
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
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
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
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
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
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
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
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
    t.TauFloat32Array frequencyHz,
    t.TauFloat32Array magResponse,
    t.TauFloat32Array phaseResponse,
  );
}





// ------------------------------------------------------------------------------------------------------------------







class IIRFilterOptions extends AudioNodeOptions implements t.IIRFilterNode {

    IIRFilterOptions newIIRFilterOptions({
    int channelCount,
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
    required t.TauArray<t.TauNumber> feedforward,
    required t.TauArray<t.TauNumber> feedback,
  }) => IIRFilterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    feedforward: feedforward,
    feedback: feedback
  );

  t.TauArray<t.TauNumber> get feedforward;
  set feedforward(t.TauArray<t.TauNumber> value);
  t.TauArray<t.TauNumber> get feedback;
  set feedback(t.TauArray<t.TauNumber> value);
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

  t.HTMLMediaElement get mediaElement;
}





// ------------------------------------------------------------------------------------------------------------------






class MediaElementAudioSourceOptions implements t.MediaElementAudioSourceOptions {

    MediaElementAudioSourceOptions newMediaElementAudioSourceOptions(
      {required t.HTMLMediaElement mediaElement}) => MediaElementAudioSourceOptions(
        mediaElement: mediaElement,
      );

  t.HTMLMediaElement get mediaElement;
  set mediaElement(t.HTMLMediaElement value);
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

  t.MediaStream get stream;
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

  t.MediaStream get mediaStream;
}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamAudioSourceOptions implements t.MediaStreamAudioSourceOptions {

    MediaStreamAudioSourceOptions newMediaStreamAudioSourceOptions(
      {required t.MediaStream mediaStream}) => MediaStreamAudioSourceOptions(
        mediaStream: mediaStream,
      );

  t.MediaStream get mediaStream;
  set mediaStream(t.MediaStream value);
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
      {required t.MediaStreamTrack mediaStreamTrack}) => MediaStreamTrackAudioSourceOptions(
        mediaStreamTrack: mediaStreamTrack,
      );

  t.MediaStreamTrack get mediaStreamTrack;
  set mediaStreamTrack(t.MediaStreamTrack value);
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
  t.OscillatorType get type;
  set type(t.OscillatorType value);
  AudioParam get frequency;
  AudioParam get detune;
}




// ------------------------------------------------------------------------------------------------------------------









class OscillatorOptions extends AudioNodeOptions implements t.OscillatorOptions {

  OscillatorOptions newOscillatorOptions({
    int channelCount,
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
    t.OscillatorType type,
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

  t.OscillatorType get type;
  set type(t.OscillatorType value);
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
  t.PanningModelType get panningModel;
  set panningModel(t.PanningModelType value);
  AudioParam get positionX;
  AudioParam get positionY;
  AudioParam get positionZ;
  AudioParam get orientationX;
  AudioParam get orientationY;
  AudioParam get orientationZ;
  t.DistanceModelType get distanceModel;
  set distanceModel(t.DistanceModelType value);
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
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
    t.PanningModelType panningModel,
    t.DistanceModelType distanceModel,
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

  t.PanningModelType get panningModel;
  set panningModel(t.PanningModelType value);
  t.DistanceModelType get distanceModel;
  set distanceModel(t.DistanceModelType value);
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







class PeriodicWaveConstraints implements t.PeriodicWaveConstraints {

  PeriodicWaveConstraints newPeriodicWaveConstraints({bool disableNormalization}) => PeriodicWaveConstraints(disableNormalization: disableNormalization);

  bool get disableNormalization;
  set disableNormalization(bool value);
}





// ------------------------------------------------------------------------------------------------------------------






class PeriodicWaveOptions extends PeriodicWaveConstraints implements t.PeriodicWaveOptions {

    PeriodicWaveOptions newPeriodicWaveOptions({
    bool disableNormalization,
    t.TauArray<t.TauNumber> real,
    t.TauArray<t.TauNumber> imag,
  }) => PeriodicWaveConstraints(
    disableNormalization: disableNormalization,
    real: real,
    imag: imag,
  );

  t.TauArray<t.TauNumber> get real;
  set real(t.TauArray<t.TauNumber> value);
  t.TauArray<t.TauNumber> get imag;
  set imag(t.TauArray<t.TauNumber> value);
}





// ------------------------------------------------------------------------------------------------------------------





class ScriptProcessorNode extends AudioNode implements t.ScriptProcessorNode {
  t.EventHandler get onaudioprocess;
  set onaudioprocess(t.EventHandler value);
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
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
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

  t.TauFloat32Array? get curve;
  set curve(t.TauFloat32Array? value);
  t.OverSampleType get oversample;
  set oversample(t.OverSampleType value);
}





// ------------------------------------------------------------------------------------------------------------------






class WaveShaperOptions extends AudioNodeOptions implements t.WaveShaperOptions {

    WaveShaperOptions newWaveShaperOptions({
    int channelCount,
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
    t.TauArray<t.TauNumber> curve,
    t.OverSampleType oversample,
  }) => WaveShaperOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    curve: curve,
    oversample: oversample,
  );

  t.TauArray<t.TauNumber> get curve;
  set curve(t.TauArray<t.TauNumber> value);
  t.OverSampleType get oversample;
  set oversample(t.OverSampleType value);
}




// ------------------------------------------------------------------------------------------------------------------





class AudioWorklet implements t.AudioWorklet {

}




// ------------------------------------------------------------------------------------------------------------------





class AudioWorkletGlobalScope extends t.WorkletGlobalScope implements t.AudioWorkletGlobalScope {
  void registerProcessor(
    String name,
    t.AudioWorkletProcessorConstructor processorCtor,
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
  t.MessagePort get port;
  t.EventHandler get onprocessorerror;
  set onprocessorerror(t.EventHandler value);
}






// ------------------------------------------------------------------------------------------------------------------








class AudioWorkletNodeOptions extends AudioNodeOptions implements t.AudioWorkletNodeOptions {

  AudioWorkletNodeOptions newAudioWorkletNodeOptions({
    int channelCount,
    t.ChannelCountMode channelCountMode,
    t.ChannelInterpretation channelInterpretation,
    int numberOfInputs,
    int numberOfOutputs,
    t.TauArray<t.TauNumber> outputChannelCount,
    t.TauObject parameterData,
    t.TauObject processorOptions,
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
  t.TauArray<t.TauNumber> get outputChannelCount;
  set outputChannelCount(t.TauArray<t.TauNumber> value);
  t.TauObject get parameterData;
  set parameterData(t.TauObject value);
  t.TauObject get processorOptions;
  set processorOptions(t.TauObject value);
}






// ------------------------------------------------------------------------------------------------------------------





class AudioWorkletProcessor implements t.AudioWorkletProcessor {
  t.MessagePort get port;
}




// ------------------------------------------------------------------------------------------------------------------

