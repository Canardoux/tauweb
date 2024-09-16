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

import 'package:tauwa/tauwa_metaclass.dart';
import 'tauwaweb_implementation.dart' as i;

abstract class tauwa_metaclass_implementation implements tauwa_metaclass
{
  AudioContext newAudioContext([AudioContextOptions contextOptions]) => i.BaseAudioContext(contextOptions);




  AudioContextOptions newAudioContextOptions({
    TauAny latencyHint,
    num sampleRate,
    TauAny sinkId,
    TauAny renderSizeHint,
  }) => i.AudioContextOptions(latencyHint: latencyHint, sampleRate: sampleRate, sinkId: sinkId, renderSizeHint: renderSizeHint);



  AudioSinkOptions newAudioSinkOptions({required AudioSinkType type}) => i.AudioSinkOptions(type: type);



  AudioTimestamp newAudioTimestamp({
    num contextTime,
    DOMHighResTimeStamp performanceTime,
  }) => i.AudioTimestamp(contextTime: contextTime, performanceTime: performanceTime);



  OfflineAudioContext newOfflineAudioContext(
    TauAny contextOptionsOrNumberOfChannels, [
    int length,
    num sampleRate,
  ]) => i.OfflineAudioContext(contextOptionsOrNumberOfChannels, length, sampleRate);





  OfflineAudioContextOptions newOfflineAudioContextOptions({
    int numberOfChannels,
    required int length,
    required num sampleRate,
    TauAny renderSizeHint,
  }) => i.OfflineAudioContextOptions(
    numberOfChannels: numberOfChannels,
    length: length,
    sampleRate: sampleRate,
    renderSizeHint: renderSizeHint,
  );



  OfflineAudioCompletionEvent newOfflineAudioCompletionEvent(
    String type,
    OfflineAudioCompletionEventInit eventInitDict,
  ) => i.OfflineAudioCompletionEvent(type, eventInitDict);




  OfflineAudioCompletionEventInit newOfflineAudioCompletionEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required AudioBuffer renderedBuffer,
  }) => i.OfflineAudioCompletionEventInit(bubbles: bubbles, cancelable: cancelable, composed: composed);



  AudioBuffer newAudioBuffer(AudioBufferOptions options) => i.AudioBuffer(options);




  AudioBufferOptions newAudioBufferOptions({
    int numberOfChannels,
    required int length,
    required num sampleRate,
  }) => i.AudioBufferOptions(numberOfChannels: numberOfChannels, length: length, sampleRate: sampleRate);



  AudioNodeOptions newAudioNodeOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
  }) => i.AudioNodeOptions(channelCount: channelCount, channelCountMode: channelCountMode, channelInterpretation: channelInterpretation);



  AnalyserNode newAnalyserNode(
    BaseAudioContext context, [
    AnalyserOptions options,
  ]) => i.AnalyserNode(context, options);



  AnalyserOptions newAnalyserOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    int fftSize,
    num maxDecibels,
    num minDecibels,
    num smoothingTimeConstant,
  }) => i.AnalyserOptions(
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
    AudioBufferSourceOptions options,
  ]) => i.AudioBufferSourceNode(context, options);




  AudioBufferSourceOptions newAudioBufferSourceOptions({
    AudioBuffer? buffer,
    num detune,
    bool loop,
    num loopEnd,
    num loopStart,
    num playbackRate,
  }) => i.AudioBufferSourceOptions(
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
  ) => i.AudioProcessingEvent(type, eventInitDict);



  AudioProcessingEventInit newAudioProcessingEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required num playbackTime,
    required AudioBuffer inputBuffer,
    required AudioBuffer outputBuffer,
  }) => i.AudioProcessingEventInit(
    bubbles: bubbles,
    cancelable: cancelable,
    composed: composed,
    playbackTime: playbackTime,
    inputBuffer: inputBuffer,
    outputBuffer: outputBuffer,
  );




  BiquadFilterNode newBiquadFilterNode(
    BaseAudioContext context, [
    BiquadFilterOptions options,
  ]) => i.BiquadFilterNode(
    context, options
  );



  BiquadFilterOptions newBiquadFilterOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    BiquadFilterType type,
    num Q,
    num detune,
    num frequency,
    num gain,
  }) => i.BiquadFilterOptions(
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
    ChannelMergerOptions options,
  ]) => i.ChannelMergerNode(
    context,
    options,
  );



 ChannelMergerOptions newChannelMergerOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    int numberOfInputs,
  }) => i.ChannelMergerOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfInputs: numberOfInputs,
  );



  ChannelSplitterNode newChannelSplitterNode(
    BaseAudioContext context, [
    ChannelSplitterOptions options,
  ]) => i.ChannelSplitterNode(
    context,
    options,
  );



  ChannelSplitterOptions newChannelSplitterOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    int numberOfOutputs,
  }) => i.ChannelSplitterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfOutputs: numberOfOutputs,
  );



  ConstantSourceNode newConstantSourceNode(
    BaseAudioContext context, [
    ConstantSourceOptions options,
  ]) => i.ConstantSourceNode(
    context,
    options,
  );



  ConstantSourceOption newConstantSourceOptions({num offset}) =>i.ConstantSourceOption(offset: offset);




  ConvolverNode newConvolverNode(
    BaseAudioContext context, [
    ConvolverOptions options,
  ]) => i.ConstantSourceOption(
    context,
    options,
  );



  ConvolverOptions newConvolverOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    AudioBuffer? buffer,
    bool disableNormalization,
  }) => i.ConvolverOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    buffer: buffer,
    disableNormalization: disableNormalization,
  );



  DelayNode newDelayNode(
    BaseAudioContext context, [
    DelayOptions options,
  ]) => i.DelayNode(
    context,
    options,
  );



  DelayOptions newDelayOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    num maxDelayTime,
    num delayTime,
  }) => i.DelayOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    maxDelayTime: maxDelayTime,
    delayTime: delayTime,
  );



  DynamicsCompressorNode newDynamicsCompressorNode(
    BaseAudioContext context, [
    DynamicsCompressorOptions options,
  ]) => i.DynamicsCompressorNode(
    context,
    options,
  );



  DynamicsCompressorOptions newDynamicsCompressorOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    num attack,
    num knee,
    num ratio,
    num release,
    num threshold,
  }) => i.DynamicsCompressorOptions(
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
    GainOptions options,
  ]) => i.GainNode(
    context,
    options,
  );



  GainOptions newGainOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    num gain,
  }) => i.GainOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    gain: gain,
  );



  IIRFilterNode newIIRFilterNode(
    BaseAudioContext context,
    IIRFilterOptions options,
  ) => i.IIRFilterNode(
    context,
    options,
  );



  IIRFilterOptions newIIRFilterOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    required JSArray<JSNumber> feedforward,
    required JSArray<JSNumber> feedback,
  }) => i.IIRFilterOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    feedforward: feedforward,
    feedback: feedback
  );



  MediaElementAudioSourceNode newMediaElementAudioSourceNode(
    AudioContext context,
    MediaElementAudioSourceOptions options,
  ) => i.MediaElementAudioSourceNode(
    context,
    options,
  );



  MediaElementAudioSourceOptions newMediaElementAudioSourceOptions(
      {required HTMLMediaElement mediaElement}) => i.MediaElementAudioSourceOptions(
        mediaElement: mediaElement,
      );




  MediaStreamAudioDestinationNode newMediaStreamAudioDestinationNode(
    AudioContext context, [
    AudioNodeOptions options,
  ]) => i.MediaStreamAudioDestinationNode(
    context,
    options,
  );



  MediaStreamAudioSourceNode newMediaStreamAudioSourceNode(
    AudioContext context,
    MediaStreamAudioSourceOptions options,
  ) => i.MediaStreamAudioSourceNode(
    context,
    options,
  );



  MediaStreamAudioSourceOptions newMediaStreamAudioSourceOptions(
      {required MediaStream mediaStream}) => i.MediaStreamAudioSourceOptions(
        mediaStream: mediaStream,
      );




  MediaStreamTrackAudioSourceNode newMediaStreamTrackAudioSourceNode(
    AudioContext context,
    MediaStreamTrackAudioSourceOptions options,
  ) => i.MediaStreamTrackAudioSourceNode(
    context,
    options,
  );



  MediaStreamTrackAudioSourceOptions newMediaStreamTrackAudioSourceOptions(
      {required MediaStreamTrack mediaStreamTrack}) => i.MediaStreamTrackAudioSourceOptions(
        mediaStreamTrack: mediaStreamTrack,
      );




  OscillatorNode newOscillatorNode(
    BaseAudioContext context, [
    OscillatorOptions options,
  ]) => i.OscillatorNode(
    context,
    options,
  );



  OscillatorOptions newOscillatorOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    OscillatorType type,
    num frequency,
    num detune,
    PeriodicWave periodicWave,
  }) => i.OscillatorOptions(
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
    PannerOptions options,
  ]) => i.PannerNode(
    context,
    options,
  );




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
  }) => i.newPannerOptions(
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
    PeriodicWaveOptions options,
  ]) => i.PeriodicWave(
    context,
    options,
  );



  PeriodicWaveConstraints newPeriodicWaveConstraints({bool disableNormalization}) => i.PeriodicWaveConstraints(disableNormalization: disableNormalization);





  PeriodicWaveOptions newPeriodicWaveOptions({
    bool disableNormalization,
    JSArray<JSNumber> real,
    JSArray<JSNumber> imag,
  }) => i.PeriodicWaveConstraints(
    disableNormalization: disableNormalization,
    real: real,
    imag: imag,
  );




  StereoPannerNode newStereoPannerNode(
    BaseAudioContext context, [
    StereoPannerOptions options,
  ]) => i.StereoPannerNode(
    context,
    options,
  );



  StereoPannerOptions newStereoPannerOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    num pan,
  }) => i.StereoPannerOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    pan: pan,
  );



  WaveShaperNode newWaveShaperNode(
    BaseAudioContext context, [
    WaveShaperOptions options,
  ]) => i.WaveShaperNode(
    context,
    options,
  );



  WaveShaperOptions newWaveShaperOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    JSArray<JSNumber> curve,
    OverSampleType oversample,
  }) => i.WaveShaperOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    curve: curve,
    oversample: oversample,
  );



 AudioWorkletNode newAudioWorkletNode(
    BaseAudioContext context,
    String name, [
    AudioWorkletNodeOptions options,
  ]) => i.AudioWorkletNode(
    context,
    name,
    options,
  );



  AudioWorkletNodeOptions newAudioWorkletNodeOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    int numberOfInputs,
    int numberOfOutputs,
    JSArray<JSNumber> outputChannelCount,
    JSObject parameterData,
    JSObject processorOptions,
  }) => i.AudioWorkletNodeOptions(
    channelCount: channelCount,
    channelCountMode: channelCountMode,
    channelInterpretation: channelInterpretation,
    numberOfInputs: numberOfInputs,
    numberOfOutputs: numberOfOutputs,
    outputChannelCount: outputChannelCount,
    parameterData: parameterData,
    processorOptions: processorOptions,
  );



  AudioWorkletProcessor newAudioWorkletProcessor() => i.AudioWorkletProcessor();




}
