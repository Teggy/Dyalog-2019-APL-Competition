 BoggleScore←{                      ⍝ ⍵: list of words formed on Boggle board
          ⍝ Boggle score table:
          ⍝  if word is shorter than this...
          ⍝        ↓
     widths←0 3 5 6 7 8             ⍝ (APL could really use two-dim
     points←0 1 2 3 5 11            ⍝  syntax for matrix literals)
          ⍝        ↑
          ⍝  ...you score this many points
     
     scores←points[widths⍸≢¨⍵]      ⍝ score based on word lengths
     
     (+/scores)(+/0≠scores)         ⍝ overall score, # of words with non-zero score
 }
