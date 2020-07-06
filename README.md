TidalCycles MIDI bindings for General MIDI for Percussion.

# Archived

This repo is currently archived because this has been merged in the Tidalcycles Core. 

# Requirements

ghc >= 7.10  
tidal >= 0.8  
tidal-midi >= 0.8

### installation

```shell
git clone https://github.com/lvm/tidal-midi-gm
cd tidal-midi-gm
cabal clean && cabal configure && cabal build && cabal install
```

### Usage


```haskell
import Sound.Tidal.MIDI.Context
import Sound.Tidal.MIDI.GMPerc

devices <- midiDevices
drums <- midiStream devices "Midi Through Port-0" 10 percController

drums $ perc "[bd(2,2), cp(1,2,1)]"
```
    
