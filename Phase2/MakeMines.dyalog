 MakeMines←{                     ⍝ ⍺: # of mines, ⍵: dimensions of board
     cells←×/⍵                   ⍝ # of squares on the board
     mines←⍺⌊cells               ⍝ no more mines than squares!
     
     ⍵⍴(cells↑mines⍴¯1)[?⍨cells] ⍝ random permutation of mines (¯1) and empty squares (0)
 }
