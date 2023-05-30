 TapEnc←{                       ⍝ ⍵: message to encode
     msg[⍸'J'=msg←⍵]←'I'        ⍝ trade J for I
     coords←∊(⍸Polybius∘=)¨msg  ⍝ lookup char coordinates in encoding matrix
     taps←coords⍴¨'*'           ⍝ map coords into tap sequences (3 → ***)
     ⊃{⍺,' ',⍵}/taps            ⍝ separate taps by spaces
 }
