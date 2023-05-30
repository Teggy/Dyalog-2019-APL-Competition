 AbbreviateIPv6←{
     groups←':'(≠⊆⊢)⍵                                  ⍝ split into ':'-separated groups

     all0←'0000'≡⊢                                     ⍝ '0000' group?
     rem0←{⍵/⍨∨\⍵≠'0'}                                 ⍝ remove leading '0's in group

     lm0←{ones←+/∧\⍵ ⋄ (ones⍴1),∨\ones↓⍵}              ⍝ keep left-most group of 0s, all others 1

     adj0←lm0~1 1⍷all0¨groups                          ⍝ find adjacent '0000' groups
     colon←¯1⌽0 1⍷adj0                                 ⍝ where to replace '0000' by ':'
     abbrv←((⊂'')@((adj0/colon)∘⊣))adj0/groups         ⍝ replace superfluous '0000' by ''
     drop0←(⊂'0')@((all0¨abbrv)∘⊣)rem0¨abbrv           ⍝ remove leading '0's in groups, leave at least one '0'

     1(819⌶)⊃{⍺,':',⍵}/drop0                           ⍝ re-join uppercase'd groups with ':'
 }
 