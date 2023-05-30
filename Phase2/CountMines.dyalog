 CountMines←{           ⍝ ⍵: board (¯1: mine)
     mines←{            ⍝ inspect 3x3 cell neighbourhood
         ¯1=⍵[2;2]:¯1   ⍝ mine in center? ⇒ leave it
         -+/,⍵          ⍝ # of mines in neighborhood
     }
     mines⌺3 3⊢⍵        ⍝ process all 3x3 neighbourhoods on board
 }
