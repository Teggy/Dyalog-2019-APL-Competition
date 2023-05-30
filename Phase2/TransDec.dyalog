 TransDec←{                     ⍝ ⍺: key, ⍵: cipher text
     1≥≢⍵:⍵                     ⍝ trivial cipher text → trivial clear text
     
     parts←(⌈(≢⍵)÷(≢⍺))Chunks ⍵ ⍝ partition cipher (length of key = number of partitions)
     decoding←(⍉↑parts)[;⍋⍋,⍺]  ⍝ arrange partitions row-wise, transpose, undo column shuffling
     ∊decoding                  ⍝ row-wise contents forms the clear text
 }
