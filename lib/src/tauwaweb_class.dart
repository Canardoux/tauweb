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
import 'tauwaweb_interop.dart';
import 'dart:js_interop';
import 'dart:html' as h;

// ------------------------------------------------------------------------------------------------------------------





abstract class BaseAudioContext implements t.BaseAudioContext {
  j.BaseAudioContext getDelegate();

  AnalyserNode createAnalyser() => AnalyserNode.fromDelegate(getDelegate().createAnalyser());
  BiquadFilterNode createBiquadFilter() => BiquadFilterNode.fromDelegate(getDelegate().createBiquadFilter());

  AudioBuffer createBuffer(
    int numberOfChannels,
    int length,
    num sampleRate,
  ) => AudioBuffer.fromDelegate(getDelegate().createBuffer(numberOfChannels, length, sampleRate));

  AudioBufferSourceNode createBufferSource() => AudioBufferSourceNode.fromDelegate(getDelegate().createBufferSource());
  ChannelMergerNode createChannelMerger([int? numberOfInputs]) => ChannelMergerNode.fromDelegate(getDelegate().createChannelMerger(numberOfInputs));

  ChannelSplitterNode createChannelSplitter([int? numberOfOutputs]) => ChannelSplitterNode.fromDelegate(getDelegate().createChannelSplitter(numberOfOutputs));
  ConstantSourceNode createConstantSource() => ConstantSourceNode.fromDelegate(getDelegate().createConstantSource());
  ConvolverNode createConvolver() => ConvolverNode.fromDelegate(getDelegate().createConvolver());
  DelayNode createDelay([num? maxDelayTime]) => DelayNode.fromDelegate(getDelegate().createDelay(maxDelayTime));
  DynamicsCompressorNode createDynamicsCompressor() => DynamicsCompressorNode.fromDelegate(getDelegate().createDynamicsCompressor());
  GainNode createGain() => GainNode.fromDelegate(getDelegate().createGain());

  IIRFilterNode createIIRFilter(
    t.TauArray<t.TauNumber> feedforward,
    t.TauArray<t.TauNumber> feedback,
  ) => IIRFilterNode.fromDelegate(getDelegate().createIIRFilter(Interop().jsArrayNumber(feedforward), Interop().jsArrayNumber(feedback)) );

  OscillatorNode createOscillator() => OscillatorNode.fromDelegate(getDelegate().createOscillator());
  PannerNode createPanner() => PannerNode.fromDelegate(getDelegate().createPanner());

  PeriodicWave createPeriodicWave(
    t.TauArray<t.TauNumber> real,
    t.TauArray<t.TauNumber> imag, [
    t.PeriodicWaveConstraints? constraints,
  ]) => PeriodicWave.fromDelegate(getDelegate().createPeriodicWave(Interop().jsArrayNumber(real), Interop().jsArrayNumber(imag), (constraints as PeriodicWaveConstraints).getDelegate()));

  ScriptProcessorNode createScriptProcessor([
    int? bufferSize,
    int? numberOfInputChannels,
    int? numberOfOutputChannels,
  ]) => ScriptProcessorNode.fromDelegate(getDelegate().createScriptProcessor(bufferSize, numberOfInputChannels, numberOfOutputChannels));

  StereoPannerNode createStereoPanner() => StereoPannerNode.fromDelegate(getDelegate().createStereoPanner());
  WaveShaperNode createWaveShaper() => WaveShaperNode.fromDelegate(getDelegate().createWaveShaper());

  t.TauPromise<AudioBuffer> decodeAudioData(
    t.TauArrayBuffer audioData, [
    t.DecodeSuccessCallback? successCallback,
    t.DecodeErrorCallback? errorCallback,
  ]) => getDelegate().decodeAudioData(audioData.toJS, successCallback?.toJS, errorCallback?.toJS).toDart.then( (e){ return AudioBuffer.fromDelegate(e);});

  AudioDestinationNode get destination => AudioDestinationNode.fromDelegate(getDelegate().destination);
  double get sampleRate => getDelegate().sampleRate;
  double get currentTime => getDelegate().currentTime;
  AudioListener get listener => AudioListener.fromDelegate(getDelegate().listener);
  t.AudioContextState get state => getDelegate().state;
  AudioWorklet get audioWorklet => AudioWorklet.fromDelegate(getDelegate().audioWorklet);
  t.EventHandler get onstatechange => getDelegate().onstatechange;
  set onstatechange(t.EventHandler value) => getDelegate().onstatechange = value.toJS;
}




// ------------------------------------------------------------------------------------------------------------------





class AudioContext extends BaseAudioContext implements t.AudioContext {

  j.AudioContext delegate;
  j.BaseAudioContext getDelegate() => delegate;
  /* ctor */ AudioContext.fromDelegate(this.delegate);
  /* ctor */ AudioContext([t.AudioContextOptions? contextOptions]) : delegate = j.AudioContext((contextOptions as AudioContextOptions).delegate);

  AudioTimestamp getOutputTimestamp() => AudioTimestamp.fromDelegate(delegate.getOutputTimestamp());
  t.TauPromise<t.TauAny?> resume() => delegate.resume().toDart;
  t.TauPromise<t.TauAny?> suspend() => delegate.suspend().toDart;
  t.TauPromise<t.TauAny?> close() => delegate.close().toDart;
  MediaElementAudioSourceNode createMediaElementSource(t.MediaElement mediaElement) => MediaElementAudioSourceNode.fromDelegate(delegate.createMediaElementSource(mediaElement));
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
    t.TauAny? latencyHint,
    num? sampleRate,
    t.TauAny? sinkId,
    t.TauAny? renderSizeHint,
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
  /* ctor */ AudioTimestamp({
    num? contextTime,
    t.TauHighResTimeStamp? performanceTime,
  }) : delegate = j.AudioTimestamp(contextTime: contextTime, performanceTime: performanceTime);

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
    int? length,
    num? sampleRate,
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
    int? numberOfChannels,
    required int length,
    required num sampleRate,
    t.TauAny? renderSizeHint,
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
    t.OfflineAudioCompletionEventInit eventInitDict,
  ) : delegate = j.OfflineAudioCompletionEvent(type, eventInitDict);


  AudioBuffer get renderedBuffer => AudioBuffer(delegate.renderedBuffer);
}





// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioCompletionEventInit implements t.OfflineAudioCompletionEventInit {

    j.OfflineAudioCompletionEventInit delegate;
    j.OfflineAudioCompletionEventInit getDelegate() => delegate;

    /* ctor */ OfflineAudioCompletionEventInit.fromDelegate(this.delegate);
    /* ctor */ OfflineAudioCompletionEventInit({
    bool? bubbles,
    bool? cancelable,
    bool? composed,
    required t.AudioBuffer renderedBuffer,
  }) : delegate =  j.OfflineAudioCompletionEventInit(bubbles: bubbles, cancelable: cancelable, composed: composed);

  AudioBuffer get renderedBuffer => AudioBuffer(delegate.renderedBuffer);
  set renderedBuffer(t.AudioBuffer value) => delegate.renderedBuffer = value.delegate;
}




// ------------------------------------------------------------------------------------------------------------------





class AudioBuffer implements t.AudioBuffer {

  j.AudioBuffer delegate;
  j.AudioBuffer getDelegate() => delegate;

  /* ctor */ AudioBuffer.fromDelegate(this.delegate);
  /* ctor */ AudioBuffer(t.AudioBufferOptions options) : delegate = j.AudioBuffer(options);

  t.TauFloat32Array getChannelData(int channel) => delegate.getChannelData(channel);
  void copyFromChannel(
    t.TauFloat32Array destination,
    int channelNumber, [
    int? bufferOffset,
  ]) => delegate.copyFromChannel(
    source,
    channelNumber,
    bufferOffset,
  );
  void copyToChannel(
      t.TauFloat32Array source,
      int channelNumber, [
      int? bufferOffset,
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
    int? numberOfChannels,
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
    int? output,
    int? input,
  ]) => getDelegate().connect(destinationNodeOrDestinationParam, output, input);
  void disconnect([
    t.TauAny? destinationNodeOrDestinationParamOrOutput,
    int? output,
    int? input,
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



abstract class AudioNodeOptions  implements t.AudioNodeOptions {

  j.AudioNodeOptions getDelegate();


  int get channelCount => getDelegate().channelCount;
  set channelCount(int value) => getDelegate().channelCount = value;
  t.ChannelCountMode get channelCountMode => getDelegate().channelCountMode;
  set channelCountMode(t.ChannelCountMode value) => getDelegate().channelCountMode = value;
  t.ChannelInterpretation get channelInterpretation => getDelegate().channelInterpretation;
  set channelInterpretation(t.ChannelInterpretation value) => getDelegate().channelInterpretation = value;
}




class AudioNodeOptionsImp extends AudioNodeOptions {

  j.AudioNodeOptions delegate;
  j.AudioNodeOptions getDelegate() => delegate;

  /* ctor */ AudioNodeOptionsImp.fromDelegate(this.delegate);
  /* ctor */ AudioNodeOptionsImp({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
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

  void start([num? when]) => getDelegate().start(when);
  void stop([num? when]) => getDelegate().stop(when);
  t.EventHandler get onended => getDelegate().onended;
  set onended(t.EventHandler value) => getDelegate().onended = value;
}




// ------------------------------------------------------------------------------------------------------------------





class AnalyserNode extends AudioNode implements t.AnalyserNode {

  j.AnalyserNode delegate;
  j.AnalyserNode getDelegate() => delegate;

  /* ctor */ AnalyserNode.fromDelegate(this.delegate);
  /* ctor */ AnalyserNode(
    t.BaseAudioContext context, [
    t.AnalyserOptions? options,
  ]) : delegate = j.AnalyserNode(context, options);

  void getFloatFrequencyData(t.TauFloat32Array array) => delegate.getFloatFrequencyData(array);
  void getByteFrequencyData(t.TauUint8Array array) => delegate.getByteFrequencyData(array);
  void getFloatTimeDomainData(t.TauFloat32Array array) => delegate.getFloatTimeDomainData(array);
  void getByteTimeDomainData(t.TauUint8Array array) => delegate.getByteTimeDomainData(array);
  int get fftSize => delegate.fftSize;
  set fftSize(int value) => delegate.fftSize = value;
  int get frequencyBinCount => delegate.frequencyBinCount;
  double get minDecibels => delegate.minDecibels;
  set minDecibels(num value) => delegate.minDecibels = value;
  double get maxDecibels => maxDecibels;
  set maxDecibels(num value) => maxDecibels = value;
  double get smoothingTimeConstant => delegate.smoothingTimeConstant;
  set smoothingTimeConstant(num value) => delegate.smoothingTimeConstant = value;
}



// ------------------------------------------------------------------------------------------------------------------





class AnalyserOptions extends AudioNodeOptions implements t.AnalyserOptions {

  j.AnalyserOptions delegate;
  j.AnalyserOptions getDelegate() => delegate;

  /* ctor */ AnalyserOptions.fromDelegate(this.delegate);
  /* ctor */ AnalyserOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    int? fftSize,
    num? maxDecibels,
    num? minDecibels,
    num? smoothingTimeConstant,
  }) : delegate = j.AnalyserOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    fftSize: fftSize,
    maxDecibels: maxDecibels,
    minDecibels: minDecibels,
    smoothingTimeConstant: smoothingTimeConstant,
  );

  int get fftSize => delegate.fftSize;
  set fftSize(int value) => delegate.fftSize = value;
  double get maxDecibels => delegate.maxDecibels;
  set maxDecibels(num value) => delegate.maxDecibels = value;
  double get minDecibels => delegate.minDecibels;
  set minDecibels(num value) => delegate.minDecibels = value;
  double get smoothingTimeConstant => delegate.smoothingTimeConstant;
  set smoothingTimeConstant(num value) => delegate.smoothingTimeConstant = value;
}




// ------------------------------------------------------------------------------------------------------------------





class AudioBufferSourceNode extends AudioScheduledSourceNode implements t.AudioBufferSourceNode {

  j.AudioBufferSourceNode delegate;
  j.AudioBufferSourceNode getDelegate() => delegate;

  /* ctor */ AudioBufferSourceNode.fromDelegate(this.delegate);
  /* ctor */ AudioBufferSourceNode(
    t.BaseAudioContext context, [
    t.AudioBufferSourceOptions? options,
  ]) : delegate = j.AudioBufferSourceNode(context, options);

  void start([
    num? when,
    num? offset,
    num? duration,
  ]) => delegate.start(when, offset, duration);

  AudioBuffer? get buffer => AudioBuffer(delegate.buffer);
  set buffer(t.AudioBuffer? value) => delegate.buffer = value.delegate;
  AudioParam get playbackRate => delegate.playbackRate;
  AudioParam get detune => delegate.detune;
  bool get loop => delegate.loop;
  set loop(bool value) => delegate.loop= value;
  double get loopStart => delegate.loopStart;
  set loopStart(num value) => delegate.loopStart = value;
  double get loopEnd => delegate.loopEnd;
  set loopEnd(num value) => delegate.loopEnd = value;
}




// ------------------------------------------------------------------------------------------------------------------





class AudioBufferSourceOptions implements t.AudioBufferSourceOptions {

  j.AudioBufferSourceOptions delegate;
  j.AudioBufferSourceOptions getDelegate() => delegate;

  /* ctor */ AudioBufferSourceOptions.fromDelegate(this.delegate);
  /* ctor */ AudioBufferSourceOptions({
    t.AudioBuffer? buffer,
    num? detune,
    bool? loop,
    num? loopEnd,
    num? loopStart,
    num? playbackRate,
  }) => delegate = j.AudioBufferSourceOptions(
    buffer: buffer,
    detune: detune,
    loop: loop,
    loopEnd: loopEnd,
    loopStart: loopStart,
    playbackRate: playbackRate,
  );

  AudioBuffer? get buffer => (delegate.buffer);
  set buffer(t.AudioBuffer? value) => delegate.buffer = value.delegate;
  double get detune => delegate.detune;
  set detune(num value) => delegate.detune = value;
  bool get loop => delegate.loop;
  set loop(bool value) => delegate.loop = value;
  double get loopEnd => delegate.loopEnd;
  set loopEnd(num value) => delegate.loopEnd = value;
  double get loopStart => delegate.loopStart;
  set loopStart(num value) => delegate.loopStart = value;
  double get playbackRate => delegate.playbackRate;
  set playbackRate(num value) => delegate.playbackRate = value;
}




// ------------------------------------------------------------------------------------------------------------------




class AudioDestinationNode extends AudioNode implements t.AudioDestinationNode {

  j.AudioDestinationNode delegate;
  j.AudioDestinationNode getDelegate() => delegate;

  /* ctor */ AudioDestinationNode.fromDelegate(this.delegate);

  int get maxChannelCount => delegate.maxChannelCount;
}





// ------------------------------------------------------------------------------------------------------------------





class AudioListener implements t.AudioListener {
  j.AudioListener delegate;
  j.AudioListener getDelegate() => delegate;

  /* ctor */ AudioListener.fromDelegate(this.delegate);

  void setPosition(
    num x,
    num y,
    num z,
  ) => delegate.setPosition(x, y, z);

  void setOrientation(
    num x,
    num y,
    num z,
    num xUp,
    num yUp,
    num zUp,
  ) => delegate.setOrientation(x, y, z, xUp, yUp, zUp);

  AudioParam get positionX => delegate.positionX;
  AudioParam get positionY => delegate.positionY;
  AudioParam get positionZ => delegate.positionZ;
  AudioParam get forwardX => delegate.forwardX;
  AudioParam get forwardY => delegate.forwardY;
  AudioParam get forwardZ => delegate.forwardZ;
  AudioParam get upX => delegate.upX;
  AudioParam get upY => delegate.upY;
  AudioParam get upZ => delegate.upZ;
}





// ------------------------------------------------------------------------------------------------------------------






class AudioProcessingEvent implements t.AudioProcessingEvent {

  j.AudioProcessingEvent delegate;
  j.AudioProcessingEvent getDelegate() => delegate;

  /* ctor */ AudioProcessingEvent.fromDelegate(this.delegate);
  /* ctor */ AudioProcessingEvent(
    String type,
    t.AudioProcessingEventInit eventInitDict,
  ) : delegate = j.AudioProcessingEvent(type, eventInitDict);

  double get playbackTime => delegate.playbackTime;
  AudioBuffer get inputBuffer => delegate.inputBuffer;
  AudioBuffer get outputBuffer => delegate.outputBuffer;
}






// ------------------------------------------------------------------------------------------------------------------





class AudioProcessingEventInit implements t.AudioProcessingEventInit {

  j.AudioProcessingEventInit delegate;
  j.AudioProcessingEventInit getDelegate() => delegate;

  /* ctor */ AudioProcessingEventInit.fromDelegate(this.delegate);
  /* ctor */ AudioProcessingEventInit({
    bool? bubbles,
    bool? cancelable,
    bool? composed,
    required num playbackTime,
    required t.AudioBuffer inputBuffer,
    required t.AudioBuffer outputBuffer,
  }) : delegate = j.AudioProcessingEventInit(
    bubbles: bubbles,
    cancelable: cancelable,
    composed: composed,
    playbackTime: playbackTime,
    inputBuffer: inputBuffer,
    outputBuffer: outputBuffer,
  );

  double get playbackTime => delegate.playbackTime;
  set playbackTime(num value) => delegate.playbackTime = value;
  AudioBuffer get inputBuffer => AudioBuffer(delegate.inputBuffer);
  set inputBuffer(t.AudioBuffer value) => delegate.inputBuffer = value.delegate;
  AudioBuffer get outputBuffer => AudioBuffer(delegate.outputBuffer);
  set outputBuffer(t.AudioBuffer value) => delegate.outputBuffer = value.delegate;
}




// ------------------------------------------------------------------------------------------------------------------





class BiquadFilterNode extends AudioNode implements t.BiquadFilterNode {

  j.BiquadFilterNode delegate;
  j.BiquadFilterNode getDelegate() => delegate;

  /* ctor */ BiquadFilterNode.fromDelegate(this.delegate);
  /* ctor */ BiquadFilterNode(
    t.BaseAudioContext context, [
    t.BiquadFilterOptions? options,
  ]) : delegate = j.BiquadFilterNode(
    context, options);

  void getFrequencyResponse(
    t.TauFloat32Array frequencyHz,
    t.TauFloat32Array magResponse,
    t.TauFloat32Array phaseResponse,
  ) => delegate.getFrequencyResponse(frequencyHz, magResponse, phaseResponse);

  t.BiquadFilterType get type => delegate.type;
  set type(t.BiquadFilterType value) => delegate.type = value;
  AudioParam get frequency => delegate.frequency;
  AudioParam get detune => delegate.detune;
  AudioParam get Q => delegate.Q;
  AudioParam get gain => delegate.gain;
}




// ------------------------------------------------------------------------------------------------------------------




class BiquadFilterOptions extends AudioNodeOptions implements t.BiquadFilterOptions {

  j.BiquadFilterOptions delegate;
  j.BiquadFilterOptions getDelegate() => delegate;

  /* ctor */ BiquadFilterOptions.fromDelegate(this.delegate);
  /* ctor */ BiquadFilterOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    t.BiquadFilterType? type,
    num? Q,
    num? detune,
    num? frequency,
    num? gain,
  }) : delegate = j.BiquadFilterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    type: type,
    Q: Q,
    detune: detune,
    frequency: frequency,
    gain: gain,
  );

  t.BiquadFilterType get type => delegate.type;
  set type(t.BiquadFilterType value) => delegate.type = value;
  double get Q => delegate.Q;
  set Q(num value) => delegate.Q = value;
  double get detune => delegate.detune;
  set detune(num value) => delegate.detune = value;
  double get frequency => delegate.frequency;
  set frequency(num value) => delegate.frequency = value;
  double get gain => delegate.gain;
  set gain(num value) => delegate.gain = value;
}




// ------------------------------------------------------------------------------------------------------------------





class ChannelMergerNode extends AudioNode implements t.ChannelMergerNode {

  j.ChannelMergerNode delegate;
  j.ChannelMergerNode getDelegate() => delegate;

  /* ctor */ ChannelMergerNode.fromDelegate(this.delegate);
  /* ctor */ ChannelMergerNode(
    t.BaseAudioContext context, [
    t.ChannelMergerOptions? options,
  ]) : delegate = j.ChannelMergerNode(
    context,
    options,
  );

}





// ------------------------------------------------------------------------------------------------------------------





class ChannelMergerOptions extends AudioNodeOptions implements t.ChannelMergerOptions {

  j.ChannelMergerOptions delegate;
  j.ChannelMergerOptions getDelegate() => delegate;

  /* ctor */ ChannelMergerOptions.fromDelegate(this.delegate);
  /* ctor */ ChannelMergerOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    int? numberOfInputs,
  }) : delegate = j.ChannelMergerOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfInputs: numberOfInputs,
  );

  int get numberOfInputs => delegate.numberOfInputs;
  set numberOfInputs(int value) => delegate.numberOfInputs = value;
}




// ------------------------------------------------------------------------------------------------------------------





class ChannelSplitterNode extends AudioNode implements t.ChannelSplitterNode {
  j.ChannelSplitterNode delegate;
  j.ChannelSplitterNode getDelegate() => delegate;

  /* ctor */ ChannelSplitterNode.fromDelegate(this.delegate);
  /* ctor */ ChannelSplitterNode(
    t.BaseAudioContext context, [
    t.ChannelSplitterOptions? options,
  ]) : delegate = j.ChannelSplitterNode(
    context,
    options,
  );


}




// ------------------------------------------------------------------------------------------------------------------






class ChannelSplitterOptions extends AudioNodeOptions implements t.ChannelSplitterOptions {

  j.ChannelSplitterOptions delegate;
  j.ChannelSplitterOptions getDelegate() => delegate;

  /* ctor */ ChannelSplitterOptions.fromDelegate(this.delegate);
  /* ctor */ ChannelSplitterOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    int? numberOfOutputs,
  }) : delegate = j.ChannelSplitterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfOutputs: numberOfOutputs,
  );

  int get numberOfOutputs => delegate.numberOfOutputs;
  set numberOfOutputs(int value) => delegate.numberOfOutputs = value;
}




// ------------------------------------------------------------------------------------------------------------------






class ConstantSourceNode extends AudioScheduledSourceNode implements t.ConstantSourceNode {

  j.ConstantSourceNode delegate;
  j.ConstantSourceNode getDelegate() => delegate;

  /* ctor */ ConstantSourceNode.fromDelegate(this.delegate);
  /* ctor */ ConstantSourceNode(
    t.BaseAudioContext context, [
    t.ConstantSourceOptions? options,
  ]) : delegate = j.ConstantSourceNode(
    context,
    options,
  );

  AudioParam get offset => delegate.offset;
}





// ------------------------------------------------------------------------------------------------------------------





class ConstantSourceOptions  extends AudioNodeOptions implements t.ConstantSourceOptions {

  j.ConstantSourceOptions delegate;
  j.AudioNodeOptions getDelegate() => delegate;

  /* ctor */ ConstantSourceOptions.fromDelegate(this.delegate);
  /* ctor */ ConstantSourceOptions({num? offset}) : delegate = j.ConstantSourceOption(offset: offset);

  double get offset => delegate.offset;
  set offset(num value) => delegate.offset = value;
}





// ------------------------------------------------------------------------------------------------------------------





class ConvolverNode extends AudioNode implements t.ConvolverNode {

  j.ConvolverNode delegate;
  j.ConvolverNode getDelegate() => delegate;

  /* ctor */ ConvolverNode.fromDelegate(this.delegate);
  /* ctor */ ConvolverNode(
    t.BaseAudioContext context, [
    t.ConvolverOptions? options,
  ]) : delegate = j.ConstantSourceOption(
    context,
    options,
  );

  AudioBuffer? get buffer => AudioBuffer(delegate.buffer);
  set buffer(t.AudioBuffer? value) => delegate.buffer = value.delegate;
  bool get normalize => delegate.normalize;
  set normalize(bool value) => delegate.normalize = value;
}





// ------------------------------------------------------------------------------------------------------------------




class ConvolverOptions extends AudioNodeOptions implements t.ConvolverOptions {

  j.ConvolverOptions delegate;
  j.ConvolverOptions getDelegate() => delegate;

  /* ctor */ ConvolverOptions.fromDelegate(this.delegate);
  /* ctor */ ConvolverOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    t.AudioBuffer? buffer,
    bool? disableNormalization,
  }) : delegate = j.ConvolverOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    buffer: buffer,
    disableNormalization: disableNormalization,
  );

  AudioBuffer? get buffer => AudioBuffer(delegate.buffer);
  set buffer(t.AudioBuffer? value) => delegate.buffer = (value as AudioBuffer).delegate;
  bool get disableNormalization => delegate.disableNormalization;
  set disableNormalization(bool value) => delegate.disableNormalization = value;
}




// ------------------------------------------------------------------------------------------------------------------






class DelayNode extends AudioNode implements t.DelayNode {

  j.DelayNode delegate;
  j.DelayNode getDelegate() => delegate;

  /* ctor */ DelayNode.fromDelegate(this.delegate);
  /* ctor */ DelayNode(
    t.BaseAudioContext context, [
    t.DelayOptions? options,
  ]) : delegate = j.DelayNode(
    context,
    options,
  );

  AudioParam get delayTime => delegate.delayTime;
}




// ------------------------------------------------------------------------------------------------------------------






class DelayOptions extends AudioNodeOptions implements t.DelayOptions {

  j.DelayOptions delegate;
  j.DelayOptions getDelegate() => delegate;

  /* ctor */ DelayOptions.fromDelegate(this.delegate);
  /* ctor */ DelayOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    num? maxDelayTime,
    num? delayTime,
  }) : delegate = j.DelayOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    maxDelayTime: maxDelayTime,
    delayTime: delayTime,
  );

  double get maxDelayTime => delegate.maxDelayTime;
  set maxDelayTime(num value) => delegate.maxDelayTime = value;
  double get delayTime => delegate.delayTime;
  set delayTime(num value) => delegate.delayTime = value;
}




// ------------------------------------------------------------------------------------------------------------------




class DynamicsCompressorNode extends AudioNode implements t.DynamicsCompressorNode {

  j.DynamicsCompressorNode delegate;
  j.DynamicsCompressorNode getDelegate() => delegate;

  /* ctor */ DynamicsCompressorNode.fromDelegate(this.delegate);
  /* ctor */ DynamicsCompressorNode(
    t.BaseAudioContext context, [
    t.DynamicsCompressorOptions? options,
  ]) : delegate = j.DynamicsCompressorNode(
    context,
    options,
  );

  AudioParam get threshold => delegate.threshold;
  AudioParam get knee => delegate.knee;
  AudioParam get ratio => delegate.ratio;
  double get reduction => delegate.reduction;
  AudioParam get attack => delegate.attack;
  AudioParam get release => delegate.release;
}




// ------------------------------------------------------------------------------------------------------------------





class DynamicsCompressorOptions extends AudioNodeOptions implements t.DynamicsCompressorOptions {

  j.DynamicsCompressorOptions delegate;
  j.DynamicsCompressorOptions getDelegate() => delegate;

  /* ctor */ DynamicsCompressorOptions.fromDelegate(this.delegate);
  /* ctor */ DynamicsCompressorOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    num? attack,
    num? knee,
    num? ratio,
    num? release,
    num? threshold,
  }) : delegate = j.DynamicsCompressorOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    attack: attack,
    knee: knee,
    ratio: ratio,
    release: release,
    threshold: threshold,
  );

  double get attack => delegate.attack;
  set attack(num value) => delegate.attack = value;
  double get knee => delegate.knee;
  set knee(num value) => delegate.knee = value;
  double get ratio => delegate.ratio;
  set ratio(num value) => delegate.ratio = value;
  double get release => delegate.release;
  set release(num value) => delegate.release = value;
  double get threshold => delegate.threshold;
  set threshold(num value) => delegate.threshold = value;
}




// ------------------------------------------------------------------------------------------------------------------







class GainNode extends AudioNode implements t.GainNode{

  j.GainNode delegate;
  j.GainNode getDelegate() => delegate;

  /* ctor */ GainNode.fromDelegate(this.delegate);
  /* ctor */ GainNode(
    t.BaseAudioContext context, [
    t.GainOptions? options,
  ]) : delegate = j.GainNode(
    context,
    options,
  );

  AudioParam get gain => delegate.gain;
}






// ------------------------------------------------------------------------------------------------------------------





class GainOptions extends AudioNodeOptions implements t.GainOptions {

  j.GainOptions delegate;
  j.GainOptions getDelegate() => delegate;

  /* ctor */ GainOptions.fromDelegate(this.delegate);
  /* ctor */ GainOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    num? gain,
  }) : delegate = j.GainOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    gain: gain,
  );

  double get gain => delegate.gain;
  set gain(num value) => delegate.gain = value;
}





// ------------------------------------------------------------------------------------------------------------------





class IIRFilterNode extends AudioNode implements t.IIRFilterNode {

  j.IIRFilterNode delegate;
  j.IIRFilterNode getDelegate() => delegate;

  /* ctor */ IIRFilterNode.fromDelegate(this.delegate);
  /* ctor */ IIRFilterNode(
    t.BaseAudioContext context,
    t.IIRFilterOptions options,
  ) : delegate = j.IIRFilterNode(
    context,
    options,
  );

  void getFrequencyResponse(
    t.TauFloat32Array frequencyHz,
    t.TauFloat32Array magResponse,
    t.TauFloat32Array phaseResponse,
  ) => delegate.getFrequencyResponse(frequencyHz, magResponse, phaseResponse);
}





// ------------------------------------------------------------------------------------------------------------------







class IIRFilterOptions extends AudioNodeOptions implements t.IIRFilterOptions {

  j.IIRFilterOptions delegate;
  j.IIRFilterOptions getDelegate() => delegate;

  /* ctor */ IIRFilterOptions.fromDelegate(this.delegate);
  /* ctor */ IIRFilterOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    required t.TauArray<t.TauNumber> feedforward,
    required t.TauArray<t.TauNumber> feedback,
  }) : delegate = j.IIRFilterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    feedforward: feedforward,
    feedback: feedback
  );

  t.TauArray<t.TauNumber> get feedforward => delegate.feedforward;
  set feedforward(t.TauArray<t.TauNumber> value) => delegate.feedforward = value;
  t.TauArray<t.TauNumber> get feedback => delegate.feedback;
  set feedback(t.TauArray<t.TauNumber> value) => delegate.feedback = value;
}





// ------------------------------------------------------------------------------------------------------------------







class MediaElementAudioSourceNode extends AudioNode implements t.MediaElementAudioSourceNode {

  j.MediaElementAudioSourceNode delegate;
  j.MediaElementAudioSourceNode getDelegate() => delegate;

  /* ctor */ MediaElementAudioSourceNode.fromDelegate(this.delegate);
  /* ctor */ MediaElementAudioSourceNode(
    t.AudioContext context,
    t.MediaElementAudioSourceOptions options,
  ) : delegate = j.MediaElementAudioSourceNode(
    context,
    options,
  );

  t.MediaElement get mediaElement => delegate.mediaElement;
}





// ------------------------------------------------------------------------------------------------------------------






class MediaElementAudioSourceOptions implements t.MediaElementAudioSourceOptions {

  j.MediaElementAudioSourceOptions delegate;
  j.MediaElementAudioSourceOptions getDelegate() => delegate;

  /* ctor */ MediaElementAudioSourceOptions.fromDelegate(this.delegate);
  /* ctor */ MediaElementAudioSourceOptions(
      {required t.MediaElement mediaElement}) : delegate = j.MediaElementAudioSourceOptions(
        mediaElement: mediaElement,
      );

  t.MediaElement get mediaElement => delegate.mediaElement;
  set mediaElement(t.MediaElement value) => delegate.mediaElement = value;
}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamAudioDestinationNode extends AudioNode implements t.MediaStreamAudioDestinationNode {

  j.MediaStreamAudioDestinationNode delegate;
  j.MediaStreamAudioDestinationNode getDelegate() => delegate;

  /* ctor */ MediaStreamAudioDestinationNode.fromDelegate(this.delegate);
  /* ctor */ MediaStreamAudioDestinationNode(
    t.AudioContext context, [
    t.AudioNodeOptions? options,
  ]) : delegate = j.MediaStreamAudioDestinationNode(
    context,
    options,
  );

  t.MediaStream get stream => delegate.stream;
}




// ------------------------------------------------------------------------------------------------------------------






class MediaStreamAudioSourceNode extends AudioNode implements t.MediaStreamAudioSourceNode {

  j.MediaStreamAudioSourceNode delegate;
  j.MediaStreamAudioSourceNode getDelegate() => delegate;

  /* ctor */ MediaStreamAudioSourceNode.fromDelegate(this.delegate);
  /* ctor */ MediaStreamAudioSourceNode(
    t.AudioContext context,
    t.MediaStreamAudioSourceOptions options,
  ) : delegate = j.MediaStreamAudioSourceNode(
    context,
    options,
  );

  t.MediaStream get mediaStream => delegate.mediaStream;
}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamAudioSourceOptions implements t.MediaStreamAudioSourceOptions {

  j.MediaStreamAudioSourceOptions delegate;
  j.MediaStreamAudioSourceOptions getDelegate() => delegate;

  /* ctor */ MediaStreamAudioSourceOptions.fromDelegate(this.delegate);
  /* ctor */ MediaStreamAudioSourceOptions(
      {required t.MediaStream mediaStream}) : delegate = j.MediaStreamAudioSourceOptions(
        mediaStream: mediaStream,
      );

  t.MediaStream get mediaStream => delegate.mediaStream;
  set mediaStream(t.MediaStream value) => delegate.mediaStream = value;
}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamTrackAudioSourceNode extends AudioNode implements t.MediaStreamTrackAudioSourceNode {

  j.MediaStreamTrackAudioSourceNode delegate;
  j.MediaStreamTrackAudioSourceNode getDelegate() => delegate;

  /* ctor */ MediaStreamTrackAudioSourceNode.fromDelegate(this.delegate);
  /* ctor */ MediaStreamTrackAudioSourceNode(
    t.AudioContext context,
    t.MediaStreamTrackAudioSourceOptions options,
  ) : delegate = j.MediaStreamTrackAudioSourceNode(
    context,
    options,
  );

}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamTrackAudioSourceOptions implements t.MediaStreamTrackAudioSourceOptions {

  j.MediaStreamTrackAudioSourceOptions delegate;
  j.MediaStreamTrackAudioSourceOptions getDelegate() => delegate;

  /* ctor */ MediaStreamTrackAudioSourceOptions.fromDelegate(this.delegate);
  /* ctor */ MediaStreamTrackAudioSourceOptions(
      {required t.MediaStreamTrack mediaStreamTrack}) : delegate = j.MediaStreamTrackAudioSourceOptions(
        mediaStreamTrack: mediaStreamTrack,
      );

  t.MediaStreamTrack get mediaStreamTrack => delegate.mediaStreamTrack;
  set mediaStreamTrack(t.MediaStreamTrack value) => delegate.mediaStreamTrack = value;
}




// ------------------------------------------------------------------------------------------------------------------






class OscillatorNode extends AudioScheduledSourceNode implements t.OscillatorNode {

  j.OscillatorNode delegate;
  j.OscillatorNode getDelegate() => delegate;

  /* ctor */ OscillatorNode.fromDelegate(this.delegate);
  /* ctor */ OscillatorNode(
    t.BaseAudioContext context, [
    t.OscillatorOptions? options,
  ]) : delegate = j.OscillatorNode(
    context,
    options,
  );

  void setPeriodicWave(t.PeriodicWave periodicWave) => delegate.setPeriodicWave((periodicWave as PeriodicWave).delegate);
  t.OscillatorType get type => delegate.type;
  set type(t.OscillatorType value) => delegate.type = value;
  AudioParam get frequency => delegate.frequency;
  AudioParam get detune => delegate.detune;
}




// ------------------------------------------------------------------------------------------------------------------









class OscillatorOptions extends AudioNodeOptions implements t.OscillatorOptions {

  j.OscillatorOptions delegate;
  j.OscillatorOptions getDelegate() => delegate;

  /* ctor */ OscillatorOptions.fromDelegate(this.delegate);
  /* ctor */ OscillatorOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    t.OscillatorType? type,
    num? frequency,
    num? detune,
    t.PeriodicWave? periodicWave,
  }) : delegate = j.OscillatorOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    type: type,
    frequency: frequency,
    detune: detune,
    periodicWave: periodicWave,
  );

  t.OscillatorType get type => delegate.type;
  set type(t.OscillatorType value) => delegate.type= value;
  double get frequency => delegate.frequency;
  set frequency(num value) => delegate.frequency = value;
  double get detune => delegate.detune;
  set detune(num value) => delegate.detune = value;
  PeriodicWave get periodicWave => PeriodicWave(delegate.periodicWave);
  set periodicWave(t.PeriodicWave value) => delegate.periodicWave = (value as PeriodicWave).delegate;
}




// ------------------------------------------------------------------------------------------------------------------







class PannerNode extends AudioNode implements t.PannerNode {

  j.PannerNode delegate;
  j.PannerNode getDelegate() => delegate;

  /* ctor */ PannerNode.fromDelegate(this.delegate);
  /* ctor */ PannerNode(
    t.BaseAudioContext context, [
    t.PannerOptions? options,
  ]) : delegate = j.PannerNode(
    context,
    options,
  );

   void setPosition(
    num x,
    num y,
    num z,
  ) => delegate.setPosition(x, y, z);

  void setOrientation(
    num x,
    num y,
    num z,
  ) => delegate.setOrientation(x, y, z);

  t.PanningModelType get panningModel => delegate.panningModel;
  set panningModel(t.PanningModelType value) => delegate.panningModel = value;
  AudioParam get positionX => delegate.positionX;
  AudioParam get positionY => delegate.positionY;
  AudioParam get positionZ => delegate.positionZ;
  AudioParam get orientationX => delegate.orientationX;
  AudioParam get orientationY => delegate.orientationY;
  AudioParam get orientationZ => delegate.orientationZ;
  t.DistanceModelType get distanceModel => delegate.distanceModel;
  set distanceModel(t.DistanceModelType value) => delegate.distanceModel = value;
  double get refDistance => delegate.refDistance;
  set refDistance(num value) => delegate.refDistance = value;
  double get maxDistance => delegate.maxDistance;
  set maxDistance(num value) => delegate.maxDistance = value;
  double get rolloffFactor => delegate.rolloffFactor;
  set rolloffFactor(num value) => delegate.rolloffFactor = value;
  double get coneInnerAngle => delegate.coneInnerAngle;
  set coneInnerAngle(num value) => delegate.coneInnerAngle = value;
  double get coneOuterAngle => delegate.coneOuterAngle;
  set coneOuterAngle(num value) => delegate.coneOuterAngle = value;
  double get coneOuterGain => delegate.coneOuterGain;
  set coneOuterGain(num value) => delegate.coneOuterGain = value;
}





// ------------------------------------------------------------------------------------------------------------------







class PannerOptions extends AudioNodeOptions implements t.PannerOptions {

  j.PannerOptions delegate;
  j.PannerOptions getDelegate() => delegate;

  /* ctor */ PannerOptions.fromDelegate(this.delegate);
  /* ctor */ PannerOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    t.PanningModelType? panningModel,
    t.DistanceModelType? distanceModel,
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
  }) : delegate = j.newPannerOptions(
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

  t.PanningModelType get panningModel => delegate.panningModel;
  set panningModel(t.PanningModelType value) => delegate.panningModel = value;
  t.DistanceModelType get distanceModel => delegate.distanceModel;
  set distanceModel(t.DistanceModelType value) => delegate.distanceModel = value;
  double get positionX => delegate.positionX;
  set positionX(num value) => delegate.positionX = value;
  double get positionY => delegate.positionY;
  set positionY(num value) => delegate.positionY = value;
  double get positionZ => delegate.positionZ;
  set positionZ(num value) => delegate.positionZ = value;
  double get orientationX => delegate.orientationX;
  set orientationX(num value) => delegate.orientationX = value;
  double get orientationY => delegate.orientationY;
  set orientationY(num value) => delegate.orientationY = value;
  double get orientationZ => delegate.orientationZ;
  set orientationZ(num value) => delegate.orientationZ = value;
  double get refDistance => delegate.refDistance;
  set refDistance(num value) => delegate.refDistance = value;
  double get maxDistance => delegate.maxDistance;
  set maxDistance(num value) => delegate.maxDistance = value;
  double get rolloffFactor => delegate.rolloffFactor;
  set rolloffFactor(num value) => delegate.rolloffFactor = value;
  double get coneInnerAngle => delegate.coneInnerAngle;
  set coneInnerAngle(num value) => delegate.coneInnerAngle = value;
  double get coneOuterAngle => delegate.coneOuterAngle;
  set coneOuterAngle(num value) => delegate.coneOuterAngle = value;
  double get coneOuterGain => delegate.coneOuterGain;
  set coneOuterGain(num value) => delegate.coneOuterGain = value;
}






// ------------------------------------------------------------------------------------------------------------------






class PeriodicWave implements t.PeriodicWave {

  j.PeriodicWave delegate;
  j.PeriodicWave getDelegate() => delegate;

  /* ctor */ PeriodicWave.fromDelegate(this.delegate);
  /* ctor */ PeriodicWave(
    t.BaseAudioContext context, [
    t.PeriodicWaveOptions? options,
  ]) => PeriodicWave(
    context,
    options,
  );

}





// ------------------------------------------------------------------------------------------------------------------





abstract class PeriodicWaveConstraints implements t.PeriodicWaveConstraints {

  j.PeriodicWaveConstraints getDelegate();

  bool get disableNormalization => getDelegate().disableNormalization;
  set disableNormalization(bool value) => getDelegate().disableNormalization = value;
}





class PeriodicWaveConstraintsImpl extends PeriodicWaveConstraints {

  j.PeriodicWaveConstraints delegate;
  j.PeriodicWaveConstraints getDelegate() => delegate;

  /* ctor */ PeriodicWaveConstraintsImpl.fromDelegate(this.delegate);
  /* ctor */ PeriodicWaveConstraintsImpl({bool? disableNormalization}) : delegate = j.PeriodicWaveConstraints(disableNormalization: disableNormalization);

}





// ------------------------------------------------------------------------------------------------------------------






class PeriodicWaveOptions extends PeriodicWaveConstraints implements t.PeriodicWaveOptions {

  j.PeriodicWaveOptions delegate;
  j.PeriodicWaveOptions getDelegate() => delegate;

  /* ctor */ PeriodicWaveOptions.fromDelegate(this.delegate);
  /* ctor */ PeriodicWaveOptions({
    bool? disableNormalization,
    t.TauArray<t.TauNumber>? real,
    t.TauArray<t.TauNumber>? imag,
  }) : delegate = PeriodicWaveConstraints(
    disableNormalization: disableNormalization,
    real: real,
    imag: imag,
  );

  t.TauArray<t.TauNumber> get real => delegate.real;
  set real(t.TauArray<t.TauNumber> value) => delegate.real = value;
  t.TauArray<t.TauNumber> get imag => delegate.imag;
  set imag(t.TauArray<t.TauNumber> value) => delegate.imag = value;
}





// ------------------------------------------------------------------------------------------------------------------





class ScriptProcessorNode extends AudioNode implements t.ScriptProcessorNode {

  j.ScriptProcessorNode delegate;
  j.ScriptProcessorNode getDelegate() => delegate;

  /* ctor */ ScriptProcessorNode.fromDelegate(this.delegate);

  t.EventHandler get onaudioprocess => delegate.onaudioprocess;
  set onaudioprocess(t.EventHandler value) => delegate.onaudioprocess = value;
  int get bufferSize => delegate.bufferSize;
}




// ------------------------------------------------------------------------------------------------------------------






class StereoPannerNode extends AudioNode implements t.StereoPannerNode {

  j.StereoPannerNode delegate;
  j.StereoPannerNode getDelegate() => delegate;

  /* ctor */ StereoPannerNode.fromDelegate(this.delegate);
  /* ctor */ StereoPannerNode(
    t.BaseAudioContext context, [
    t.StereoPannerOptions? options,
  ]) : delegate = j.StereoPannerNode(
    context,
    options,
  );

  AudioParam get pan => delegate.pan;
}





// ------------------------------------------------------------------------------------------------------------------






class StereoPannerOptions extends AudioNodeOptions implements t.StereoPannerOptions {

  j.StereoPannerOptions delegate;
  j.StereoPannerOptions getDelegate() => delegate;

  /* ctor */ StereoPannerOptions.fromDelegate(this.delegate);
  /* ctor */ StereoPannerOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    num? pan,
  }) : delegate = j.StereoPannerOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    pan: pan,
  );

  double get pan => delegate.pan;
  set pan(num value) => delegate.pan = value;
}





// ------------------------------------------------------------------------------------------------------------------





class WaveShaperNode extends AudioNode implements t.WaveShaperNode {

  j.WaveShaperNode delegate;
  j.WaveShaperNode getDelegate() => delegate;

  /* ctor */ WaveShaperNode.fromDelegate(this.delegate);
  /* ctor */ WaveShaperNode(
    t.BaseAudioContext context, [
    t.WaveShaperOptions? options,
  ]) :delegate = j.WaveShaperNode(
    context,
    options,
  );

  t.TauFloat32Array? get curve => delegate.curve;
  set curve(t.TauFloat32Array? value) => delegate.curve = value;
  t.OverSampleType get oversample => delegate.oversample;
  set oversample(t.OverSampleType value) => delegate.oversample = value;
}





// ------------------------------------------------------------------------------------------------------------------






class WaveShaperOptions extends AudioNodeOptions implements t.WaveShaperOptions {

  j.WaveShaperOptions delegate;
  j.WaveShaperOptions getDelegate() => delegate;

  /* ctor */ WaveShaperOptions.fromDelegate(this.delegate);
  /* ctor */ WaveShaperOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    t.TauArray<t.TauNumber>? curve,
    t.OverSampleType? oversample,
  }) : delegate = j.WaveShaperOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    curve: curve,
    oversample: oversample,
  );

  t.TauArray<t.TauNumber> get curve => delegate.curve;
  set curve(t.TauArray<t.TauNumber> value) => delegate.curve = value;
  t.OverSampleType get oversample => delegate.oversample;
  set oversample(t.OverSampleType value) => delegate.oversample = value;
}




// ------------------------------------------------------------------------------------------------------------------





class AudioWorklet implements t.AudioWorklet {
  j.AudioWorklet delegate;
  j.AudioWorklet getDelegate() => delegate;

  /* ctor */ AudioWorklet.fromDelegate(this.delegate);

}




// ------------------------------------------------------------------------------------------------------------------





class AudioWorkletGlobalScope implements t.AudioWorkletGlobalScope {
  j.AudioWorkletGlobalScope delegate;
  j.AudioWorkletGlobalScope getDelegate() => delegate;

  /* ctor */ AudioWorkletGlobalScope.fromDelegate(this.delegate);

  void registerProcessor(
    String name,
    t.AudioWorkletProcessorConstructor processorCtor,
  ) => delegate.registerProcessor(name, processorCtor);
  
  int get currentFrame => delegate.currentFrame;
  double get currentTime => delegate.currentTime;
  double get sampleRate => delegate.sampleRate;
}





// ------------------------------------------------------------------------------------------------------------------







class AudioParamMap implements t.AudioParamMap {}








// ------------------------------------------------------------------------------------------------------------------






class AudioWorkletNode extends AudioNode implements t.AudioWorkletNode {

  j.AudioWorkletNode delegate;
  j.AudioWorkletNode getDelegate() => delegate;

  /* ctor */ AudioWorkletNode.fromDelegate(this.delegate);
  /* ctor */ AudioWorkletNode(
    t.BaseAudioContext context,
    String name, [
    t.AudioWorkletNodeOptions? options,
  ]) : delegate = j.AudioWorkletNode(
    context,
    name,
    options,
  );


  AudioParamMap get parameters => delegate.parameters;
  t.MessagePort get port => delegate.port;
  t.EventHandler get onprocessorerror => delegate.onprocessorerror;
  set onprocessorerror(t.EventHandler value) => delegate.onprocessorerror = value;
}






// =================================================================================================
//                          Added because of Tau_waweb
// =================================================================================================


class MediaStream implements t.MediaStream
{
  h.MediaStream delegate;
  h.MediaStream getDelegate() => delegate;

  /* ctor */ MediaStream.fromDelegate(this.delegate);
  /* ctor */ MediaStream();

}

class MediaStreamTrack implements t.MediaStreamTrack
{
  h.MediaStreamTrack delegate;
  h.MediaStreamTrack getDelegate() => delegate;

  /* ctor */ MediaStreamTrack.fromDelegate(this.delegate);
  /* ctor */ MediaStreamTrack();

}

/*
class Worklet implements t.Worklet
{
  j.Worklet delegate;
  j.Worklet getDelegate() => delegate;

  /* ctor */ Worklet.fromDelegate(this.delegate);
  /* ctor */ Worklet();

}
*/

/*
class WorkletGlobalScope implements t.WorkletGlobalScope
{
  j.WorkletGlobalScope delegate;
  j.WorkletGlobalScope getDelegate() => delegate;

  /* ctor */ WorkletGlobalScope.fromDelegate(this.delegate);
  /* ctor */ WorkletGlobalScope();

}
 */

class MessagePort implements t.MessagePort
{
  h.MessagePort delegate;
  h.MessagePort getDelegate() => delegate;

  /* ctor */ MessagePort.fromDelegate(this.delegate);
  /* ctor */ MessagePort();

}



// ------------------------------------------------------------------------------------------------------------------








class AudioWorkletNodeOptions extends AudioNodeOptions implements t.AudioWorkletNodeOptions {

  j.AudioWorkletNodeOptions delegate;
  j.AudioWorkletNodeOptions getDelegate() => delegate;

  /* ctor */ AudioWorkletNodeOptions.fromDelegate(this.delegate);
  /* ctor */ AudioWorkletNodeOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    int? numberOfInputs,
    int? numberOfOutputs,
    t.TauArray<t.TauNumber>? outputChannelCount,
    t.TauObject? parameterData,
    t.TauObject? processorOptions,
  }) : delegate = j.AudioWorkletNodeOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfInputs: numberOfInputs,
    numberOfOutputs: numberOfOutputs,
    outputChannelCount: outputChannelCount,
    parameterData: parameterData,
    processorOptions: processorOptions,
  );

  int get numberOfInputs => delegate.numberOfInputs;
  set numberOfInputs(int value) => delegate.numberOfInputs = value;
  int get numberOfOutputs => delegate.numberOfOutputs;
  set numberOfOutputs(int value) => delegate.numberOfOutputs = value;
  t.TauArray<t.TauNumber> get outputChannelCount => delegate.outputChannelCount;
  set outputChannelCount(t.TauArray<t.TauNumber> value) => delegate.outputChannelCount = value;
  t.TauObject get parameterData => delegate.parameterData;
  set parameterData(t.TauObject value) => delegate.parameterData = value;
  t.TauObject get processorOptions => delegate.processorOptions;
  set processorOptions(t.TauObject value) => delegate.processorOptions = value;
}






// ------------------------------------------------------------------------------------------------------------------





class AudioWorkletProcessor implements t.AudioWorkletProcessor {
  j.AudioWorkletProcessor delegate;
  j.AudioWorkletProcessor getDelegate() => delegate;

  /* ctor */ AudioWorkletProcessor.fromDelegate(this.delegate);
  /* ctor */ AudioWorkletProcessor() : delegate = j.AudioWorkletProcessor();

  t.MessagePort get port => delegate.port;
}




// ------------------------------------------------------------------------------------------------------------------

