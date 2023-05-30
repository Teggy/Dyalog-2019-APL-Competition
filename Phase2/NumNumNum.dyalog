 NumNumNum←{
     num←⍎¨⍵               ⍝ decode input (freq num freq num ...)
     
                                ⍝ create two matrix representations of the input:
     m1←(0.5×≢num)2⍴num     ⍝ (1) col 1: freqs, col 2: numbers
     m2←{(≢⍵),⍺}⌸num       ⍝ (2) dito, but do actually count numbers this time
     
     sort←⊂∘⍋⌷⊢            ⍝ freq/number pairs may occur in any order, sort to normalize
     Ö←{(⍵⍵ ⍺)⍺⍺ ⍵⍵ ⍵}     ⍝ fÖg ("g over f"), in anticipation of Dyalog 18.0 and ⍥ ;-)
     
     m1≡Ö(sort)m2        ⍝ do freqs/numbers agree in representaions (1) and (2)?
 }
