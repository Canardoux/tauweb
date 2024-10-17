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
import 'package:tau/tau.dart' as t;
import 'tauweb_audio.dart' as j;
//import 'webaudio.dart' as j;
import 'tauweb_interop.dart';
import 'dart:js_interop';
//import 'dart:html' as h;
import 'package:web/web.dart' as w;


typedef TauSampleRate = double;
typedef TauTime = double;


// ------------------------------------------------------------------------------------------------------------------





abstract class BaseAudioContext implements t.BaseAudioContext {
  j.BaseAudioContext getDelegate();
  t.EventHandler _onStateChange = (){};

  AnalyserNode createAnalyser() => AnalyserNode.fromDelegate(getDelegate().createAnalyser());
  BiquadFilterNode createBiquadFilter() => BiquadFilterNode.fromDelegate(getDelegate().createBiquadFilter());

  AudioBuffer createBuffer(
    int numberOfChannels,
    int length,
    TauSampleRate sampleRate,
  ) => AudioBuffer.fromDelegate(getDelegate().createBuffer(numberOfChannels, length, sampleRate));

  AudioBufferSourceNode createBufferSource() => AudioBufferSourceNode.fromDelegate(getDelegate().createBufferSource());
  ChannelMergerNode createChannelMerger([int? numberOfInputs]) => numberOfInputs == null ? ChannelMergerNode.fromDelegate(getDelegate().createChannelMerger() ) :
                   ChannelMergerNode.fromDelegate(getDelegate().createChannelMerger(numberOfInputs));

  ChannelSplitterNode createChannelSplitter([int? numberOfOutputs]) => numberOfOutputs == null ? ChannelSplitterNode.fromDelegate(getDelegate().createChannelSplitter()) :
                   ChannelSplitterNode.fromDelegate(getDelegate().createChannelSplitter(numberOfOutputs));
  ConstantSourceNode createConstantSource() => ConstantSourceNode.fromDelegate(getDelegate().createConstantSource());
  ConvolverNode createConvolver() => ConvolverNode.fromDelegate(getDelegate().createConvolver());
  DelayNode createDelay([num? maxDelayTime]) => maxDelayTime == null ? DelayNode.fromDelegate(getDelegate().createDelay()) :
           DelayNode.fromDelegate(getDelegate().createDelay(maxDelayTime));
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
  ]) =>
      constraints == null ? PeriodicWave.fromDelegate(getDelegate().createPeriodicWave(Interop().jsArrayNumber(real), Interop().jsArrayNumber(imag))) :
      PeriodicWave.fromDelegate(getDelegate().createPeriodicWave(Interop().jsArrayNumber(real), Interop().jsArrayNumber(imag), (constraints as PeriodicWaveConstraints).getDelegate()));

  ScriptProcessorNode createScriptProcessor([
    int? bufferSize,
    int? numberOfInputChannels,
    int? numberOfOutputChannels,
  ]) => bufferSize == null ? ScriptProcessorNode.fromDelegate(getDelegate().createScriptProcessor()) :
        numberOfInputChannels == null ? ScriptProcessorNode.fromDelegate(getDelegate().createScriptProcessor(bufferSize)) :
        numberOfOutputChannels == null ? ScriptProcessorNode.fromDelegate(getDelegate().createScriptProcessor(bufferSize, numberOfInputChannels)):
        ScriptProcessorNode.fromDelegate(getDelegate().createScriptProcessor(bufferSize, numberOfInputChannels, numberOfOutputChannels));

  StereoPannerNode createStereoPanner() => StereoPannerNode.fromDelegate(getDelegate().createStereoPanner());
  WaveShaperNode createWaveShaper() => WaveShaperNode.fromDelegate(getDelegate().createWaveShaper());

  @override
  TauStreamSourceNode createTauStreamSourceNode(Stream stream) => TauStreamSourceNode(this, stream);

  @override
  TauStreamDestinationNode createTauStreamDestinationNode(Stream stream) => TauStreamDestinationNode(this, stream);

  @override
  TauStreamNode createTauStreamNode(String name, [ t.TauStreamNodeOptions? options]) => TauStreamNode(this, name, options);

  t.TauPromise<AudioBuffer> decodeAudioData(
    t.TauArrayBuffer audioData, [
    t.DecodeSuccessCallback? successCallback,
    t.DecodeErrorCallback? errorCallback,
  ]) => getDelegate().decodeAudioData(audioData.toJS, successCallback?.toJS, errorCallback?.toJS).toDart.then( (e){ return AudioBuffer.fromDelegate(e);});

  AudioDestinationNode get destination => AudioDestinationNode.fromDelegate(getDelegate().destination);
  TauSampleRate get sampleRate => getDelegate().sampleRate;
  double get currentTime => getDelegate().currentTime;
  AudioListener get listener => AudioListener.fromDelegate(getDelegate().listener);
  t.AudioContextState get state => getDelegate().state;
  AudioWorklet get audioWorklet => AudioWorklet.fromDelegate(getDelegate().audioWorklet);
  t.EventHandler get onstatechange => _onStateChange;
  set onstatechange(t.EventHandler value) {_onStateChange = value; getDelegate().onstatechange = value.toJS; }
}




// ------------------------------------------------------------------------------------------------------------------





class AudioContext extends BaseAudioContext implements t.AudioContext {

  j.AudioContext delegate;
  j.BaseAudioContext getDelegate() => delegate;
  /* ctor */ AudioContext.fromDelegate(this.delegate);
  /* ctor */ AudioContext([t.AudioContextOptions? contextOptions]) : delegate = contextOptions == null ? j.AudioContext() :
       j.AudioContext((contextOptions as AudioContextOptions).delegate);

  AudioTimestamp getOutputTimestamp() => AudioTimestamp.fromDelegate(delegate.getOutputTimestamp());
  t.TauPromise<t.TauAny?> resume() => delegate.resume().toDart;
  t.TauPromise<t.TauAny?> suspend() => delegate.suspend().toDart;
  t.TauPromise<t.TauAny?> close() => delegate.close().toDart;
  MediaElementAudioSourceNode     createMediaElementSource    (t.MediaElement mediaElement)         => MediaElementAudioSourceNode    .fromDelegate (delegate.createMediaElementSource    ((mediaElement     as MediaElement)    .delegate));
  MediaStreamAudioSourceNode      createMediaStreamSource     (t.MediaStream mediaStream)           => MediaStreamAudioSourceNode     .fromDelegate (delegate.createMediaStreamSource     ((mediaStream      as MediaStream)     .delegate));
  MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(t.MediaStreamTrack mediaStreamTrack) => MediaStreamTrackAudioSourceNode.fromDelegate (delegate.createMediaStreamTrackSource((mediaStreamTrack as MediaStreamTrack).delegate));
  MediaStreamAudioDestinationNode createMediaStreamDestination()                                    => MediaStreamAudioDestinationNode.fromDelegate (delegate.createMediaStreamDestination());
  double get baseLatency => delegate.baseLatency;
  double get outputLatency => delegate.outputLatency;



// =================================================================================================
//                          Added specific to τ
// =================================================================================================

  void dispose(){}
}




// ------------------------------------------------------------------------------------------------------------------




class AudioContextOptions implements t.AudioContextOptions {

  j.AudioContextOptions delegate;
  /* ctor */ AudioContextOptions.fromDelegate(this.delegate);
  /* ctor */ AudioContextOptions({
    dynamic latencyHint, // t.TauAny? latencyHint,
    TauSampleRate? sampleRate,
    dynamic sinkId, // t.TauAny? sinkId,
    dynamic renderSizeHint, // t.TauAny? renderSizeHint,
  }) : delegate = sampleRate == null ? j.AudioContextOptions(latencyHint: latencyHint, sinkId: sinkId, renderSizeHint: renderSizeHint) :
      j.AudioContextOptions(latencyHint: latencyHint, sampleRate: sampleRate.toJS, sinkId: sinkId, renderSizeHint: renderSizeHint);


  t.TauAny get latencyHint => delegate.latencyHint;
  set latencyHint(dynamic /*t.TauAny*/ value) => delegate.latencyHint = value;
  TauSampleRate get sampleRate => delegate.sampleRate;
  set sampleRate(TauSampleRate value) => delegate.sampleRate = value;
  t.TauAny get sinkId => delegate.sinkId;
  set sinkId(dynamic /*t.TauAny*/ value) => delegate.sinkId = value;
  t.TauAny get renderSizeHint => delegate.renderSizeHint;
  set renderSizeHint(dynamic /*t.TauAny*/ value) => delegate.renderSizeHint = value;
}




// ------------------------------------------------------------------------------------------------------------------




class AudioSinkOptions implements t.AudioSinkOptions {

  j.AudioSinkOptions delegate;

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

  t.EventHandler _onComplete = (){};

  /* ctor */ OfflineAudioContext.fromDelegate(this.delegate);
  /* ctor */  OfflineAudioContext(
    dynamic contextOptionsOrNumberOfChannels, // t.TauAny contextOptionsOrNumberOfChannels,
  [
    int? length,
    TauSampleRate? sampleRate,
  ])  : delegate = length == null ? j.OfflineAudioContext(contextOptionsOrNumberOfChannels) :
     sampleRate == null ? j.OfflineAudioContext(contextOptionsOrNumberOfChannels, length) :
     j.OfflineAudioContext(contextOptionsOrNumberOfChannels, length, sampleRate);

  t.TauPromise<AudioBuffer> startRendering() => delegate.startRendering().toDart.then( (e){ return AudioBuffer.fromDelegate(e);});
  t.TauPromise<t.TauAny?> resume() => delegate.resume().toDart;
  t.TauPromise<t.TauAny?> suspend(num suspendTime) => delegate.suspend(suspendTime).toDart;
  int get length => delegate.length;
  //t.EventHandler get oncomplete => delegate.oncomplete;
  //set oncomplete(t.EventHandler value) => delegate.oncomplete = value;

  t.EventHandler get oncomplete => _onComplete;
  set oncomplete(t.EventHandler value) {_onComplete = value; getDelegate().onstatechange = value.toJS; }



// =================================================================================================
//                          Added specific to Tau
// =================================================================================================

  void dispose(){}
}




// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioContextOptions implements t.OfflineAudioContextOptions {

  j.OfflineAudioContextOptions delegate;
  j.OfflineAudioContextOptions getDelegate() => delegate;

  /* ctor */ OfflineAudioContextOptions.fromDelegate(this.delegate);
  /* ctor */  OfflineAudioContextOptions({
    int? numberOfChannels,
    required int length,
    required TauSampleRate sampleRate,
    dynamic renderSizeHint, // t.TauAny? renderSizeHint,
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
  TauSampleRate get sampleRate => delegate.sampleRate;
  set sampleRate(TauSampleRate value) => delegate.sampleRate = value;
  t.TauAny get renderSizeHint => delegate.renderSizeHint;
  set renderSizeHint(dynamic /*t.TauAny*/ value) => delegate.renderSizeHint = value;
}



// ------------------------------------------------------------------------------------------------------------------





class OfflineAudioCompletionEvent implements t.OfflineAudioCompletionEvent {

  j.OfflineAudioCompletionEvent delegate;
  j.OfflineAudioCompletionEvent getDelegate() => delegate;

  /* ctor */ OfflineAudioCompletionEvent.fromDelegate(this.delegate);
  /* ctor */ OfflineAudioCompletionEvent (
    String type,
    t.OfflineAudioCompletionEventInit eventInitDict,
  ) : delegate = j.OfflineAudioCompletionEvent(type, (eventInitDict as OfflineAudioCompletionEventInit).delegate);


  AudioBuffer get renderedBuffer => AudioBuffer.fromDelegate(delegate.renderedBuffer);
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
  }) : delegate =  j.OfflineAudioCompletionEventInit(bubbles: bubbles, cancelable: cancelable, composed: composed, renderedBuffer: (renderedBuffer as AudioBuffer).delegate);

  AudioBuffer get renderedBuffer => AudioBuffer.fromDelegate(delegate.renderedBuffer);
  set renderedBuffer(t.AudioBuffer value) => delegate.renderedBuffer = (value as AudioBuffer).delegate;
}




// ------------------------------------------------------------------------------------------------------------------





class AudioBuffer implements t.AudioBuffer {

  j.AudioBuffer delegate;
  j.AudioBuffer getDelegate() => delegate;

  /* ctor */ AudioBuffer.fromDelegate(this.delegate);
  /* ctor */ AudioBuffer(t.AudioBufferOptions options) : delegate = j.AudioBuffer((options as AudioBufferOptions).delegate);

  t.TauFloat32Array getChannelData(int channel) => delegate.getChannelData(channel).toDart;
  void copyFromChannel(
    t.TauFloat32Array destination,
    int channelNumber, [
    int? bufferOffset,
  ]) => bufferOffset == null ? delegate.copyFromChannel(
      destination.toJS,
      channelNumber,) :
    delegate.copyFromChannel(
      destination.toJS,
      channelNumber,
      bufferOffset,
    );
  void copyToChannel(
      t.TauFloat32Array source,
      int channelNumber, [
      int? bufferOffset,
      ]) => copyToChannel(source, channelNumber, bufferOffset);

  TauSampleRate get sampleRate => delegate.sampleRate;
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
    required TauSampleRate sampleRate,
  }) : delegate = j.AudioBufferOptions(numberOfChannels: numberOfChannels, length: length, sampleRate: sampleRate);

  int get numberOfChannels => delegate.numberOfChannels;
  set numberOfChannels(int value) => delegate.numberOfChannels = value;
  int get length => delegate.length;
  set length(int value) => delegate.length = value;
  TauSampleRate get sampleRate => delegate.sampleRate;
  set sampleRate(TauSampleRate value) => delegate.sampleRate = value;
}



// ------------------------------------------------------------------------------------------------------------------





abstract class AudioNode implements t.AudioNode {
  j.AudioNode getDelegate();

  t.AudioNode connect(
      // !!!! The DestinationParam case is not handled
    t.AudioNode destinationNode, // t.TauAny? destinationNodeOrDestinationParam
      [
    int? output,
    int? input,
  ]) { output == null ? getDelegate().connect((destinationNode as AudioNode).getDelegate()) :
        input == null ? getDelegate().connect((destinationNode as AudioNode).getDelegate(), output,) :
                        getDelegate().connect((destinationNode as AudioNode).getDelegate(), output, input);
        return destinationNode;
      }

  void connectParam(
    t.AudioParam DestinationParam, //TauObject destinationNodeOrDestinationParam,
   [
    int? output,
    int? input,
  ]) { output == null ? getDelegate().connect((DestinationParam as AudioParam).getDelegate()) :
        input == null ? getDelegate().connect((DestinationParam as AudioParam).getDelegate(), output,) :
                        getDelegate().connect((DestinationParam as AudioParam).getDelegate(), output, input);
  }
  


  void disconnect([
    // !!!! The DestinationParamOrOutput case is not handled
    t.AudioNode? destinationNodeOrDestinationParamOrOutput, // t.TauAny? destinationNodeOrDestinationParamOrOutput,
    int? output,
    int? input,
  ]) => output == null ? getDelegate().disconnect((destinationNodeOrDestinationParamOrOutput as AudioNode).getDelegate()) :
         input == null ? getDelegate().disconnect((destinationNodeOrDestinationParamOrOutput as AudioNode).getDelegate(), output,) :
                         getDelegate().disconnect((destinationNodeOrDestinationParamOrOutput as AudioNode).getDelegate(), output, input);

  void disconnectParam(
    t.AudioParam DestinationParam,
   [
    int? output,
    int? input,
  ]) => output == null ? getDelegate().disconnect((DestinationParam as AudioParam).getDelegate()) :
         input == null ? getDelegate().disconnect((DestinationParam as AudioParam).getDelegate(), output,) :
                         getDelegate().disconnect((DestinationParam as AudioParam).getDelegate(), output, input);



  BaseAudioContext get context => AudioContext.fromDelegate(getDelegate().context as j.AudioContext);



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





class AudioParam implements t.AudioParam {

  j.AudioParam delegate;
  j.AudioParam getDelegate() => delegate;

  /* ctor */ AudioParam.fromDelegate(this.delegate);
  /* ctor */ AudioParam(j.AudioParam param) : delegate = param;


  AudioParam setValueAtTime(
    num value,
    num startTime,
  ) => AudioParam(delegate.setValueAtTime(value, startTime));

  AudioParam linearRampToValueAtTime(
    num value,
    num endTime,
  ) => AudioParam(delegate.linearRampToValueAtTime(value, endTime));

  AudioParam exponentialRampToValueAtTime(
    num value,
    num endTime,
  ) => AudioParam(delegate.exponentialRampToValueAtTime(value, endTime));

  AudioParam setTargetAtTime(
    num target,
    num startTime,
    num timeConstant,
  ) => AudioParam(delegate.setTargetAtTime(target, startTime, timeConstant));

  AudioParam setValueCurveAtTime(
    t.TauArray<t.TauNumber> values,
    num startTime,
    num duration,
  ) => AudioParam(delegate.setValueCurveAtTime(Interop().jsArrayNumber(values), startTime, duration));

  AudioParam cancelScheduledValues(num cancelTime) => AudioParam(delegate.cancelScheduledValues(cancelTime));
  AudioParam cancelAndHoldAtTime(num cancelTime) => AudioParam(delegate.cancelAndHoldAtTime(cancelTime));
  double get value => delegate.value;
  set value(num value) => delegate.value = value;
  t.AutomationRate get automationRate => delegate.automationRate;
  set automationRate(t.AutomationRate value) => delegate.automationRate = value;
  double get defaultValue => delegate.defaultValue;
  double get minValue => delegate.minValue;
  double get maxValue => delegate.maxValue;
}





// ------------------------------------------------------------------------------------------------------------------





abstract class AudioScheduledSourceNode extends AudioNode implements t.AudioScheduledSourceNode {
  t.EventHandler _onEnded = (){};
  j.AudioScheduledSourceNode getDelegate();

  void start([num? when]) => when == null ?  getDelegate().start() : getDelegate().start(when);

  void stop([num? when]) => when == null ? getDelegate().stop() : getDelegate().stop(when);


  t.EventHandler get onended => _onEnded;

  set onended(t.EventHandler value) {
    _onEnded = value;
    getDelegate().onended = value.toJS;
  }

}


// ------------------------------------------------------------------------------------------------------------------





class AnalyserNode extends AudioNode implements t.AnalyserNode {

  j.AnalyserNode delegate;
  j.AnalyserNode getDelegate() => delegate;

  /* ctor */ AnalyserNode.fromDelegate(this.delegate);
  /* ctor */ AnalyserNode(
    t.BaseAudioContext context, [
    t.AnalyserOptions? options,
  ]) : delegate = options == null ? j.AnalyserNode((context as AudioContext).delegate) : j.AnalyserNode((context as AudioContext).delegate, (options! as AnalyserOptions).delegate);

  void getFloatFrequencyData(t.TauFloat32Array array) => delegate.getFloatFrequencyData(array.toJS);
  void getByteFrequencyData(t.TauUint8Array array) => delegate.getByteFrequencyData(array.toJS);
  void getFloatTimeDomainData(t.TauFloat32Array array) => delegate.getFloatTimeDomainData(array.toJS);
  void getByteTimeDomainData(t.TauUint8Array array) => delegate.getByteTimeDomainData(array.toJS);
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
  ]) : delegate = options == null ? j.AudioBufferSourceNode((context as AudioContext).delegate) :
          j.AudioBufferSourceNode((context as AudioContext).delegate, (options as AudioBufferSourceOptions).delegate);

  void start([
    num? when,
    num? offset,
    num? duration,
  ]) =>  when == null ? delegate.start() :
       offset == null ? delegate.start(when,):
     duration == null ? delegate.start(when, offset,) :
                        delegate.start(when, offset, duration);

  AudioBuffer? get buffer => delegate.buffer == null ? null : AudioBuffer.fromDelegate(delegate.buffer!);
  set buffer(t.AudioBuffer? value) => delegate.buffer = (value as AudioBuffer?)?.delegate;
  AudioParam get playbackRate => AudioParam.fromDelegate(delegate.playbackRate);
  AudioParam get detune => AudioParam.fromDelegate(delegate.detune);
  bool get loop => delegate.loop;
  set loop(bool value) => delegate.loop = value;
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
  }) : delegate = j.AudioBufferSourceOptions(
    buffer: (buffer as AudioBuffer?)?.delegate,
    detune: detune,
    loop: loop,
    loopEnd: loopEnd,
    loopStart: loopStart,
    playbackRate: playbackRate,
  );

  AudioBuffer? get buffer => delegate.buffer == null ? null : AudioBuffer.fromDelegate(delegate.buffer!);
  set buffer(t.AudioBuffer? value) => delegate.buffer = (value as AudioBuffer?)?.delegate;
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

  AudioParam get positionX => AudioParam.fromDelegate(delegate.positionX);
  AudioParam get positionY => AudioParam.fromDelegate(delegate.positionY);
  AudioParam get positionZ => AudioParam.fromDelegate(delegate.positionZ);
  AudioParam get forwardX => AudioParam.fromDelegate(delegate.forwardX);
  AudioParam get forwardY => AudioParam.fromDelegate(delegate.forwardY);
  AudioParam get forwardZ => AudioParam.fromDelegate(delegate.forwardZ);
  AudioParam get upX => AudioParam.fromDelegate(delegate.upX);
  AudioParam get upY => AudioParam.fromDelegate(delegate.upY);
  AudioParam get upZ => AudioParam.fromDelegate(delegate.upZ);
}





// ------------------------------------------------------------------------------------------------------------------






class AudioProcessingEvent implements t.AudioProcessingEvent {

  j.AudioProcessingEvent delegate;
  j.AudioProcessingEvent getDelegate() => delegate;

  /* ctor */ AudioProcessingEvent.fromDelegate(this.delegate);
  /* ctor */ AudioProcessingEvent(
    String type,
    t.AudioProcessingEventInit eventInitDict,
  ) : delegate = j.AudioProcessingEvent(type, (eventInitDict as AudioProcessingEventInit).delegate);

  double get playbackTime => delegate.playbackTime;
  AudioBuffer get inputBuffer => AudioBuffer.fromDelegate(inputBuffer.delegate);
  AudioBuffer get outputBuffer => AudioBuffer.fromDelegate(outputBuffer.delegate);
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
    inputBuffer: (inputBuffer as AudioBuffer).delegate,
    outputBuffer: (outputBuffer as AudioBuffer).delegate,
  );

  double get playbackTime => delegate.playbackTime;
  set playbackTime(num value) => delegate.playbackTime = value;
  AudioBuffer get inputBuffer => AudioBuffer.fromDelegate(delegate.inputBuffer);
  set inputBuffer(t.AudioBuffer value) => delegate.inputBuffer = (value as AudioBuffer).delegate;
  AudioBuffer get outputBuffer => AudioBuffer.fromDelegate(delegate.outputBuffer);
  set outputBuffer(t.AudioBuffer value) => delegate.outputBuffer = (value as AudioBuffer).delegate;
}




// ------------------------------------------------------------------------------------------------------------------





class BiquadFilterNode extends AudioNode implements t.BiquadFilterNode {

  j.BiquadFilterNode delegate;
  j.BiquadFilterNode getDelegate() => delegate;

  /* ctor */ BiquadFilterNode.fromDelegate(this.delegate);
  /* ctor */ BiquadFilterNode(
    t.BaseAudioContext context, [
    t.BiquadFilterOptions? options,
  ]) : delegate = options == null ? j.BiquadFilterNode((context as BaseAudioContext).getDelegate()) :
              j.BiquadFilterNode((context as BaseAudioContext).getDelegate(), (options as BiquadFilterOptions).delegate);

  void getFrequencyResponse(
    t.TauFloat32Array frequencyHz,
    t.TauFloat32Array magResponse,
    t.TauFloat32Array phaseResponse,
  ) => delegate.getFrequencyResponse(frequencyHz.toJS, magResponse.toJS, phaseResponse.toJS);

  t.BiquadFilterType get type => delegate.type;
  set type(t.BiquadFilterType value) => delegate.type = value;
  AudioParam get frequency => AudioParam.fromDelegate(delegate.frequency);
  AudioParam get detune => AudioParam.fromDelegate(delegate.detune);
  AudioParam get Q => AudioParam.fromDelegate(delegate.Q);
  AudioParam get gain => AudioParam.fromDelegate(delegate.gain);
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
  ]) : delegate = options == null ? j.ChannelMergerNode((context as BaseAudioContext).getDelegate()) :
                 j.ChannelMergerNode((context as BaseAudioContext).getDelegate(), (options as ChannelMergerOptions).delegate);

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
  ]) : delegate = options == null ? j.ChannelSplitterNode((context as BaseAudioContext).getDelegate()) :
       j.ChannelSplitterNode((context as BaseAudioContext).getDelegate(), (options as ChannelSplitterOptions).delegate);


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
  ]) : delegate = options == null ? j.ConstantSourceNode((context as BaseAudioContext).getDelegate()) :
                   j.ConstantSourceNode((context as BaseAudioContext).getDelegate(), (options as ConstantSourceOptions).delegate);

  AudioParam get offset => AudioParam.fromDelegate(delegate.offset);
}





// ------------------------------------------------------------------------------------------------------------------





class ConstantSourceOptions  extends AudioNodeOptions implements t.ConstantSourceOptions {

  j.ConstantSourceOptions delegate;
  j.ConstantSourceOptions getDelegate() => delegate;

  /* ctor */ ConstantSourceOptions.fromDelegate(this.delegate);
  /* ctor */ ConstantSourceOptions({num? offset}) : delegate = j.ConstantSourceOptions(offset: offset);

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
  ]) : delegate = options == null ? j.ConvolverNode((context as BaseAudioContext).getDelegate()) :
            j.ConvolverNode((context as BaseAudioContext).getDelegate(), (options as ConvolverOptions).delegate);

  AudioBuffer? get buffer => delegate.buffer == null ? null : AudioBuffer.fromDelegate(delegate.buffer!);
  set buffer(t.AudioBuffer? value) => delegate.buffer = (value as AudioBuffer?)?.delegate;
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
    buffer: (buffer as AudioBuffer).delegate,
    disableNormalization: disableNormalization,
  );

  AudioBuffer? get buffer => delegate.buffer == null ? null : AudioBuffer.fromDelegate(delegate.buffer!);
  set buffer(t.AudioBuffer? value) => delegate.buffer = (value as AudioBuffer?)?.delegate;
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
  ]) : delegate = options == null ? j.DelayNode((context as BaseAudioContext).getDelegate()) :
        j.DelayNode((context as BaseAudioContext).getDelegate(), (options as DelayOptions).delegate);

  AudioParam get delayTime => AudioParam.fromDelegate(delegate.delayTime);
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
  ]) : delegate = options == null ? j.DynamicsCompressorNode((context as BaseAudioContext).getDelegate()) :
         j.DynamicsCompressorNode((context as BaseAudioContext).getDelegate(), (options as DynamicsCompressorOptions).delegate);

  AudioParam get threshold => AudioParam.fromDelegate(delegate.threshold);
  AudioParam get knee => AudioParam.fromDelegate(delegate.knee);
  AudioParam get ratio => AudioParam.fromDelegate(delegate.ratio);
  double get reduction => delegate.reduction;
  AudioParam get attack => AudioParam.fromDelegate(delegate.attack);
  AudioParam get release => AudioParam.fromDelegate(delegate.release);
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
  ]) : delegate = options == null ? j.GainNode((context as BaseAudioContext).getDelegate()) :
       j.GainNode((context as BaseAudioContext).getDelegate(), (options as GainOptions).delegate);

  AudioParam get gain => AudioParam.fromDelegate(delegate.gain);
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
  ) : delegate = j.IIRFilterNode((context as BaseAudioContext).getDelegate(), (options as IIRFilterOptions).delegate);

  void getFrequencyResponse(
    t.TauFloat32Array frequencyHz,
    t.TauFloat32Array magResponse,
    t.TauFloat32Array phaseResponse,
  ) => delegate.getFrequencyResponse(frequencyHz.toJS, magResponse.toJS, phaseResponse.toJS);
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
    feedforward: Interop().jsArrayNumber(feedforward),
    feedback: Interop().jsArrayNumber(feedback),
  );

  t.TauArray<t.TauNumber> get feedforward => Interop().listNum(delegate.feedforward);
  set feedforward(t.TauArray<t.TauNumber> value) => delegate.feedforward = Interop().jsArrayNumber(value);
  t.TauArray<t.TauNumber> get feedback => Interop().listNum(delegate.feedback);
  set feedback(t.TauArray<t.TauNumber> value) => delegate.feedback = Interop().jsArrayNumber(value);
}





// ------------------------------------------------------------------------------------------------------------------







class MediaElementAudioSourceNode extends AudioNode implements t.MediaElementAudioSourceNode {

  j.MediaElementAudioSourceNode delegate;
  j.MediaElementAudioSourceNode getDelegate() => delegate;

  /* ctor */ MediaElementAudioSourceNode.fromDelegate(this.delegate);
  /* ctor */ MediaElementAudioSourceNode(
    t.AudioContext context,
    t.MediaElementAudioSourceOptions options,
  ) : delegate = j.MediaElementAudioSourceNode((context as AudioContext).delegate, (options as MediaElementAudioSourceOptions).delegate);

  t.MediaElement get mediaElement => MediaElement.fromDelegate(delegate.mediaElement as w.HTMLAudioElement);
}





// ------------------------------------------------------------------------------------------------------------------






class MediaElementAudioSourceOptions implements t.MediaElementAudioSourceOptions {

  j.MediaElementAudioSourceOptions delegate;
  j.MediaElementAudioSourceOptions getDelegate() => delegate;

  /* ctor */ MediaElementAudioSourceOptions.fromDelegate(this.delegate);
  /* ctor */ MediaElementAudioSourceOptions(
      {required t.MediaElement mediaElement}) : delegate = j.MediaElementAudioSourceOptions(
        mediaElement: (mediaElement as MediaElement).delegate,
      );

  t.MediaElement get mediaElement => MediaElement.fromDelegate(delegate.mediaElement as w.HTMLAudioElement);
  set mediaElement(t.MediaElement value) => delegate.mediaElement = (value as MediaElement).delegate;
}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamAudioDestinationNode extends AudioNode implements t.MediaStreamAudioDestinationNode {

  j.MediaStreamAudioDestinationNode delegate;
  j.MediaStreamAudioDestinationNode getDelegate() => delegate;

  /* ctor */ MediaStreamAudioDestinationNode.fromDelegate(this.delegate);
  /* ctor */ MediaStreamAudioDestinationNode(
    t.AudioContext context, [
    t.AudioNodeOptions? options,
  ]) : delegate = options == null ? j.MediaStreamAudioDestinationNode((context as AudioContext).delegate) :
        j.MediaStreamAudioDestinationNode((context as AudioContext).delegate, (options as AudioNodeOptions).getDelegate());

  t.MediaStream get stream => MediaStream.fromDelegate(delegate.stream);
}




// ------------------------------------------------------------------------------------------------------------------






class MediaStreamAudioSourceNode extends AudioNode implements t.MediaStreamAudioSourceNode {

  j.MediaStreamAudioSourceNode delegate;
  j.MediaStreamAudioSourceNode getDelegate() => delegate;

  /* ctor */ MediaStreamAudioSourceNode.fromDelegate(this.delegate);
  /* ctor */ MediaStreamAudioSourceNode(
    t.AudioContext context,
    t.MediaStreamAudioSourceOptions options,
  ) : delegate = j.MediaStreamAudioSourceNode((context as AudioContext).delegate, (options as MediaStreamAudioSourceOptions).delegate);

  t.MediaStream get mediaStream => MediaStream.fromDelegate(delegate.mediaStream);
}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamAudioSourceOptions implements t.MediaStreamAudioSourceOptions {

  j.MediaStreamAudioSourceOptions delegate;
  j.MediaStreamAudioSourceOptions getDelegate() => delegate;

  /* ctor */ MediaStreamAudioSourceOptions.fromDelegate(this.delegate);
  /* ctor */ MediaStreamAudioSourceOptions(
      {required t.MediaStream mediaStream}) : delegate = j.MediaStreamAudioSourceOptions(
        mediaStream: (mediaStream as MediaStream).getDelegate(),
      );

  t.MediaStream get mediaStream => MediaStream.fromDelegate(delegate.mediaStream);
  set mediaStream(t.MediaStream value) => delegate.mediaStream = (value as MediaStream).delegate;
}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamTrackAudioSourceNode extends AudioNode implements t.MediaStreamTrackAudioSourceNode {

  j.MediaStreamTrackAudioSourceNode delegate;
  j.MediaStreamTrackAudioSourceNode getDelegate() => delegate;

  /* ctor */ MediaStreamTrackAudioSourceNode.fromDelegate(this.delegate);
  /* ctor */ MediaStreamTrackAudioSourceNode(
    t.AudioContext context,
    t.MediaStreamTrackAudioSourceOptions options,
  ) : delegate = j.MediaStreamTrackAudioSourceNode((context as AudioContext).delegate, (options as MediaStreamTrackAudioSourceOptions).delegate);

}





// ------------------------------------------------------------------------------------------------------------------





class MediaStreamTrackAudioSourceOptions implements t.MediaStreamTrackAudioSourceOptions {

  j.MediaStreamTrackAudioSourceOptions delegate;
  j.MediaStreamTrackAudioSourceOptions getDelegate() => delegate;

  /* ctor */ MediaStreamTrackAudioSourceOptions.fromDelegate(this.delegate);
  /* ctor */ MediaStreamTrackAudioSourceOptions(
      {required t.MediaStreamTrack mediaStreamTrack}) : delegate = j.MediaStreamTrackAudioSourceOptions(
        mediaStreamTrack: (mediaStreamTrack as MediaStreamTrack).delegate,
      );

  t.MediaStreamTrack get mediaStreamTrack => MediaStreamTrack.fromDelegate(delegate.mediaStreamTrack);
  set mediaStreamTrack(t.MediaStreamTrack value) => delegate.mediaStreamTrack = (value as MediaStreamTrack).delegate;
}




// ------------------------------------------------------------------------------------------------------------------






class OscillatorNode extends AudioScheduledSourceNode implements t.OscillatorNode {

  j.OscillatorNode delegate;
  j.OscillatorNode getDelegate() => delegate;

  /* ctor */ OscillatorNode.fromDelegate(this.delegate);
  /* ctor */ OscillatorNode(
    t.BaseAudioContext context, [
    t.OscillatorOptions? options,
  ]) : delegate = options == null ? j.OscillatorNode((context as AudioContext).delegate) :
        j.OscillatorNode((context as AudioContext).delegate, (options as OscillatorOptions).delegate);

  void setPeriodicWave(t.PeriodicWave periodicWave) => delegate.setPeriodicWave((periodicWave as PeriodicWave).delegate);
  t.OscillatorType get type => delegate.type;
  set type(t.OscillatorType value) => delegate.type = value;
  AudioParam get frequency => AudioParam.fromDelegate(delegate.frequency);
  AudioParam get detune => AudioParam.fromDelegate(delegate.detune);
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
    periodicWave: (periodicWave as PeriodicWave?)?.delegate,
  );

  t.OscillatorType get type => delegate.type;
  set type(t.OscillatorType value) => delegate.type= value;
  double get frequency => delegate.frequency;
  set frequency(num value) => delegate.frequency = value;
  double get detune => delegate.detune;
  set detune(num value) => delegate.detune = value;
  PeriodicWave get periodicWave => PeriodicWave.fromDelegate(delegate.periodicWave);
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
  ]) : delegate = options == null ? j.PannerNode((context as AudioContext).delegate) :
              j.PannerNode((context as AudioContext).delegate, (options as PannerOptions).delegate);

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
  AudioParam get positionX => AudioParam.fromDelegate(delegate.positionX);
  AudioParam get positionY => AudioParam.fromDelegate(delegate.positionY);
  AudioParam get positionZ => AudioParam.fromDelegate(delegate.positionZ);
  AudioParam get orientationX => AudioParam.fromDelegate(delegate.orientationX);
  AudioParam get orientationY => AudioParam.fromDelegate(delegate.orientationY);
  AudioParam get orientationZ => AudioParam.fromDelegate(delegate.orientationZ);
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
  }) : delegate = j.PannerOptions(
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
  ]) : delegate = options == null ? j.PeriodicWave((context as AudioContext).delegate) :
         j.PeriodicWave((context as AudioContext).delegate, (options as PeriodicWaveOptions).delegate);

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
  }) : delegate = j.PeriodicWaveOptions(
    disableNormalization: disableNormalization,
    real: real == null ? null : Interop().jsArrayNumber(real),
    imag: imag == null ? null : Interop().jsArrayNumber(imag),
  );

  t.TauArray<t.TauNumber> get real => Interop().listNum(delegate.real);
  set real(t.TauArray<t.TauNumber> value) => delegate.real = Interop().jsArrayNumber(value);
  t.TauArray<t.TauNumber> get imag => Interop().listNum(delegate.imag);
  set imag(t.TauArray<t.TauNumber> value) => delegate.imag = Interop().jsArrayNumber(value);
}





// ------------------------------------------------------------------------------------------------------------------





class ScriptProcessorNode extends AudioNode implements t.ScriptProcessorNode {

  t.EventHandler _onaudioprocess = (){};
  j.ScriptProcessorNode delegate;
  j.ScriptProcessorNode getDelegate() => delegate;

  /* ctor */ ScriptProcessorNode.fromDelegate(this.delegate);


  t.EventHandler get onaudioprocess => _onaudioprocess;
  set onaudioprocess(t.EventHandler value) {_onaudioprocess = value; getDelegate().onaudioprocess = value.toJS; }

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
  ]) : delegate = options == null ? j.StereoPannerNode((context as AudioContext).delegate) :
        j.StereoPannerNode((context as AudioContext).delegate, (options as StereoPannerOptions).delegate);

  AudioParam get pan => AudioParam.fromDelegate(delegate.pan);
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
  ]) : delegate = options == null ? j.WaveShaperNode((context as AudioContext).delegate) :
        j.WaveShaperNode((context as AudioContext).delegate, (options as WaveShaperOptions).delegate);

  t.TauFloat32Array get curve => delegate.curve.toDart;
  set curve(t.TauFloat32Array value) => delegate.curve = value.toJS;
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
    curve: curve == null ? null : Interop().jsArrayNumber(curve),
    oversample: oversample,
  );

  t.TauArray<t.TauNumber> get curve => Interop().listNum(delegate.curve);
  set curve(t.TauArray<t.TauNumber> value) => delegate.curve = Interop().jsArrayNumber(value);
  t.OverSampleType get oversample => delegate.oversample;
  set oversample(t.OverSampleType value) => delegate.oversample = value;
}




// ------------------------------------------------------------------------------------------------------------------





class AudioWorklet implements t.AudioWorklet {
  j.AudioWorklet delegate;
  j.AudioWorklet getDelegate() => delegate;

  /* ctor */ AudioWorklet.fromDelegate(this.delegate);
  Future<void> addModule(String script) => delegate.addModule(script).toDart;
}




// ------------------------------------------------------------------------------------------------------------------





class AudioWorkletGlobalScope implements t.AudioWorkletGlobalScope {
  j.AudioWorkletGlobalScope delegate;
  j.AudioWorkletGlobalScope getDelegate() => delegate;

  /* ctor */ AudioWorkletGlobalScope.fromDelegate(this.delegate);

  void registerProcessor(
    String name,
    t.AudioWorkletProcessorConstructor processorCtor,
  ) => delegate.registerProcessor(name, processorCtor.toJS);
  
  int get currentFrame => delegate.currentFrame;
  double get currentTime => delegate.currentTime;
  TauSampleRate get sampleRate => delegate.sampleRate;
}





// ------------------------------------------------------------------------------------------------------------------







class AudioParamMap implements t.AudioParamMap
{
  j.AudioParamMap delegate;
  j.AudioParamMap getDelegate() => delegate;

  /* ctor */ AudioParamMap.fromDelegate(this.delegate);

}








// ------------------------------------------------------------------------------------------------------------------






class AudioWorkletNode extends AudioNode implements t.AudioWorkletNode {

  t.EventHandler _onProcessorError = (){};
  j.AudioWorkletNode delegate;
  j.AudioWorkletNode getDelegate() => delegate;

  /* ctor */ AudioWorkletNode.fromDelegate(this.delegate);
  /* ctor */ AudioWorkletNode(
    t.BaseAudioContext context,
    String name, [
      t.AudioWorkletNodeOptions? options,
    ]) : delegate = options == null ? j.AudioWorkletNode((context as AudioContext).delegate, name) :
       j.AudioWorkletNode((context as AudioContext).delegate, name, (options as AudioWorkletNodeOptions).delegate);


  t.AudioParamMap get parameters => AudioParamMap.fromDelegate(delegate.parameters);
  t.MessagePort get port => MessagePort.fromDelegate(delegate.port);

  t.EventHandler get onProcessorError => _onProcessorError;

  set onProcessorError(t.EventHandler value) {
    _onProcessorError = value;
    getDelegate().onprocessorerror = value.toJS;
  }
}






// =================================================================================================
//                          Added because of Tau_web
// =================================================================================================




class MediaStream implements t.MediaStream
{
  w.MediaStream delegate;
  w.MediaStream getDelegate() => delegate;

  /* ctor */ MediaStream.fromDelegate(this.delegate);
  /* ctor */ MediaStream() : delegate = w.MediaStream();

  /* ctor */ //MediaStream({ bool audio = true, bool video = true}) : delegate = w.window.navigator.mediaDevices.getUserMedia(w.MediaStreamConstraints(  audio: true.toJS)).toDart;;
}


// ------------------------------------------------------------------------------------------------------------------



class MediaStreamTrack implements t.MediaStreamTrack
{
  w.MediaStreamTrack delegate;
  w.MediaStreamTrack getDelegate() => delegate;

  /* ctor */ MediaStreamTrack.fromDelegate(this.delegate);
  /* ctor */ // MediaStreamTrack() : delegate = w.MediaStreamTrack();

// !!!Missing many methods, here

}


// ------------------------------------------------------------------------------------------------------------------



/*
class Worklet implements t.Worklet
{
  j.Worklet delegate;
  j.Worklet getDelegate() => delegate;

  /* ctor */ Worklet.fromDelegate(this.delegate);
  /* ctor */ Worklet();

}
*/


// ------------------------------------------------------------------------------------------------------------------



/*
class WorkletGlobalScope implements t.WorkletGlobalScope
{
  j.WorkletGlobalScope delegate;
  j.WorkletGlobalScope getDelegate() => delegate;

  /* ctor */ WorkletGlobalScope.fromDelegate(this.delegate);
  /* ctor */ WorkletGlobalScope();

}
 */


// ------------------------------------------------------------------------------------------------------------------



class MessagePort implements t.MessagePort
{
  w.MessagePort delegate;
  w.MessagePort getDelegate() => delegate;

  /* ctor */ MessagePort.fromDelegate(this.delegate);
  /* ctor */ // MessagePort() : delegate = w.MessagePort();

}



// ------------------------------------------------------------------------------------------------------------------



class ProcessorOptions  implements t.ProcessorOptions
{

}


// ------------------------------------------------------------------------------------------------------------------




class ParameterData  implements t.ParameterData
{

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
    t.ParameterData? parameterData,
    t.ProcessorOptions? processorOptions,
  }) : delegate = j.AudioWorkletNodeOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfInputs: numberOfInputs,
    numberOfOutputs: numberOfOutputs,
    outputChannelCount: outputChannelCount == null ? null : Interop().jsArrayNumber(outputChannelCount),
    //parameterData: parameterData,
    //processorOptions: processorOptions,
  );

  int get numberOfInputs => delegate.numberOfInputs;
  set numberOfInputs(int value) => delegate.numberOfInputs = value;
  int get numberOfOutputs => delegate.numberOfOutputs;
  set numberOfOutputs(int value) => delegate.numberOfOutputs = value;
  t.TauArray<t.TauNumber> get outputChannelCount => Interop().listNum(delegate.outputChannelCount);
  set outputChannelCount(t.TauArray<t.TauNumber> value) => delegate.outputChannelCount = Interop().jsArrayNumber(value);
  //t.ParameterData get parameterData => delegate.parameterData;
  //set parameterData(t.ParameterData value) => delegate.parameterData = value;
  //t.ProcessorOptions get processorOptions => delegate.processorOptions;
  //set processorOptions(t.ProcessorOptions value) => delegate.processorOptions = value;
}






// ------------------------------------------------------------------------------------------------------------------





class AudioWorkletProcessor implements t.AudioWorkletProcessor {
  w.AudioWorkletProcessor delegate;
  w.AudioWorkletProcessor getDelegate() => delegate;

  /* ctor */ AudioWorkletProcessor.fromDelegate(this.delegate);
  /* ctor */ AudioWorkletProcessor() : delegate = w.AudioWorkletProcessor();

  t.MessagePort get port => MessagePort.fromDelegate(delegate.port);
}




// ------------------------------------------------------------------------------------------------------------------




class MediaElement implements t.MediaElement
{
  w.HTMLAudioElement delegate;
  w.HTMLAudioElement getDelegate() => delegate;

  /* ctor */ MediaElement.fromDelegate(this.delegate);
  /* ctor */ MediaElement({required String src, }) : delegate = w.HTMLAudioElement() {delegate.src = src; }
  TauTime get currentTime => delegate.currentTime as double;
  set currentTime(TauTime currentTime) => delegate.currentTime = currentTime;
  bool get loop => delegate.loop;
  set loop(bool loop) => delegate.loop = loop;
  //play() => delegate.play().toDart;
  t.TauPromise<void> play() => delegate.play().toDart.then ( (e){ 
    return null;
  });
  pause() => delegate.pause();
  bool paused() => delegate.paused;
  TauSampleRate get playbackRate => delegate.playbackRate as double;
  set playbackRate(TauSampleRate playbackRate) => delegate.playbackRate = playbackRate;
  //t.EventHandler?  get onplay => delegate.onplay?.toDart as t.EventHandler;
  set onplay(t.EventHandler? f) => delegate.onplay = f?.toJS;

  String get src => delegate.src;
  set src(String src) => delegate.src = src;
  String? get crossorigin => delegate.crossOrigin;
  set crossorigin(String? crossorigin) => delegate.crossOrigin = crossorigin;

}


// ------------------------------------------------------------------------------------------------------------------



class MediaDevices implements t.MediaDevices
{
  late w.MediaDevices delegate;
  /* ctor */ MediaDevices.fromDelegate(this.delegate);
  /* ctor */ MediaDevices() : delegate =  w.window.navigator.mediaDevices;

  Future<MediaStream> getUserMedia({ bool audio = true, bool video = true}) async {
    var l = await delegate
        .getUserMedia(_mediaConstraints(audio: audio, video: video))
        .toDart;
    return MediaStream.fromDelegate(l);
  }

    w.MediaStreamConstraints _mediaConstraints({bool audio = true, bool video = false}) =>
        audio == null ?(video == null ?  w.MediaStreamConstraints() : w.MediaStreamConstraints( video: true.toJS))
            : (video == null ?  w.MediaStreamConstraints( audio: true.toJS) : w.MediaStreamConstraints( audio: true.toJS, video: true.toJS) );

    Future<List<t.MediaDeviceInfo>> enumerateDevices() async
    {
      var dev = await delegate.enumerateDevices().toDart;
      List<t.MediaDeviceInfo> r = [];
      for (var info in dev.toDart)
      {
        r.add(t.MediaDeviceInfo());
      }
      return r;
    }
}




// ------------------------------------------------------------------------------------------------------------------



class TauStreamSourceNode extends AudioWorkletNode implements t.TauStreamSourceNode
{
  late j.AudioWorkletNode delegate;
  j.AudioWorkletNode getDelegate() => delegate;
  Stream stream;

  /* ctor */ //TauStreamSourceNode.fromDelegate(this.delegate);
  /* ctor */ TauStreamSourceNode( t.BaseAudioContext context, this.stream) : super(context, 'toto')
  {
      delegate = j.AudioWorkletNode( (context as BaseAudioContext).getDelegate() , 'toto');
  }

}



// ------------------------------------------------------------------------------------------------------------------



class TauStreamDestinationNode extends AudioWorkletNode implements t.TauStreamDestinationNode
{
  late j.AudioWorkletNode delegate;
  j.AudioWorkletNode getDelegate() => delegate;
  Stream stream;

  /* ctor */ //TauStreamDestinationNode.fromDelegate(this.delegate);
  /* ctor */ TauStreamDestinationNode( t.BaseAudioContext context, this.stream) : super(context, 'toto')
  {
    delegate = j.AudioWorkletNode( (context as BaseAudioContext).getDelegate() , 'toto');
  }

}


// ------------------------------------------------------------------------------------------------------------------



class TauStreamNode extends AudioWorkletNode  implements t.TauStreamNode
{
  /* ctor */ TauStreamNode( t.BaseAudioContext context, String name, t.TauStreamNodeOptions? options) : super(context, name, options)
  {

  }

}

// ------------------------------------------------------------------------------------------------------------------



class TauStreamNodeOptions extends AudioWorkletNodeOptions implements t.TauStreamNodeOptions {
  //j.TauStreamNodeOptions delegate;
  //j.TauStreamNodeOptions getDelegate() => delegate;

  /* ctor */ //TauStreamNodeOptions.fromDelegate(this.delegate);
  /* ctor */ TauStreamNodeOptions({
    int? toto,
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    int? numberOfInputs,
    int? numberOfOutputs,
    t.TauArray<t.TauNumber>? outputChannelCount,
    t.ParameterData? parameterData,
    t.ProcessorOptions? processorOptions,
  }) : super(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfInputs: numberOfInputs,
    numberOfOutputs: numberOfOutputs,
    outputChannelCount: outputChannelCount,
    //parameterData: parameterData,
    //processorOptions: processorOptions,
  );


}
