 TransEnc←{                   ⍝ ⍺: key, ⍵: clear text
     1≥≢⍵:⍵                   ⍝ trivial clear text → trivial cipher text
     
     parts←(≢⍺)Chunks ⍵       ⍝ partition text (each partition as long as the key)
     encoding←(⍉↑parts)[⍋,⍺;] ⍝ arrange partitions row-wise, transpose, shuffle rows based on key
     ∊encoding                ⍝ row-wise contents forms the cipher text
 }
