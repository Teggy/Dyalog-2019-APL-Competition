 TapDec←{                        ⍝ ⍵: tap code (*** ** ** * ...)
     taps←('*'=⍵)⊆⍵              ⍝ isolate individual tap sequences
     coords←2 Chunks≢¨taps       ⍝ two subsequent taps form row+column of encode character
     Polybius[coords]            ⍝ lookup characters in encoding matrix
 }
