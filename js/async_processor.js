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


// The number of ouputs is either 0 or one. We do not handdle the case where number of outputs > 1

class AsyncProcessor extends AudioWorkletProcessor {

  chunk = null;

  constructor(...args) {
    super(...args);
    this.chunks = [];
    this.port.onmessage = (e) => {
      //console.log('Rcv ' + e.data);
      //this.port.postMessage("pong (" + e.data + ")");
      this.send(e.data);
      
    };
  }

  // The number of outputs is 1
  send( data)
  {
      this.chunks.push(data);
  }


  getFloats(ln)
  {
      if (this.chunks.length == 0) // No more data
      {
        return null; // No more chunks
      }

      let ch = this.chunks[0]; // Current chunk
      let numberOfFrames = ch[0].length; // Number of frames in the chunk
      if (ln >= numberOfFrames)
      {
        this.chunks.shift();
        return ch;
      }
      let r = [];
      let channelNo = 0;
      ch.forEach((d)=> 
      {
            console.assert(numberOfFrames == d.length, "chunk length mismatch");
            r.push(d.subarray(0, ln));
            ch[channelNo] = d.subarray(ln, numberOfFrames);
            ++channelNo;
      });
      return r;
  }

  processOutput(output)
  {
    let numberOfChannels = output.length;
    output.forEach((dataChannel) => // For each channel
    {
      console.assert(dataChannel.length == output[0].length, 'Number of frames not same for all channels');
    });
    let x = 0;
    while (x < output[0].length) // for each frames
    {
            let d = this.getFloats(output[0].length - x);
            if (d == null)
            {
              return; // No more data
            }
            console.assert(d.length == numberOfChannels, 'Chunk Length not equal to number of channels');
            let channelNo = 0;
            output.forEach((dataChannel) => // For each channel
            {
              //console.assert(d[0].length == d.length, 'Frames not same for all channels');
              dataChannel.set(d[channelNo], x);
              ++ channelNo;
            });
            x += d[0].length;
        
    }




  }
     
  process(inputs, outputs, parameters) {
        outputs.forEach((output) => // For each output. Probably just one output
        {
             this.processOutput(output);
        });

        inputs.forEach((channel) => 
        {
            // TODO cb(channel);
        });
      
      
    return true;
  }

  static get asyncProcessor() {
    return [
     {
        name: "momo",
        defaultValue: '3.14',
      },
      {
        name: "mimi",
        defaultValue: 123,
        minValue: 0,
        maxValue: 1000,
        automationRate: "a-rate",

      }
    ];
  }
}

registerProcessor("async-processor", AsyncProcessor);