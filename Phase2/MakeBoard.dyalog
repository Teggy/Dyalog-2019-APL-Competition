 MakeBoard←{                 ⍝ ⍺: shape of Boggle board, ⍵: dice
     n←≢⍵                    ⍝ number of dice
     throws←{(?≢⍵)⊃⍵}¨⍵[?⍨n] ⍝ jumble the dice, then throw each
     ⍺⍴throws                ⍝ build the board
 }
