module Sound.Tidal.MIDI.GMSynth where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.GMParams
import Sound.Tidal.MIDI.Control

synthController :: ControllerShape
synthController = ControllerShape {
  controls = [
    mCC modwheel_p 1,
    mCC pan_p 10,
    mCC balance_p 8,
    mCC expression_p 11,
    mCC sustainpedal_p 64,
    mCC portamento_p 5
    ],
  latency = 0.3
  }

synth = toShape synthController
