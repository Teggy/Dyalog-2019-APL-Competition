 ExpandIPv6←{
     groups←':'(=⊂⊢)':',⍵                    ⍝ split into ':'-separated groups (invariant: all groups start with ':', INCLUDING empty groups)
     exp←((,':')≡⊢)¨groups                   ⍝ find position of empty group (if any)
     
     four←':',{⌽4↑(⌽1↓⍵),4⍴'0'}              ⍝ pad all groups to length 4
     pad4←four¨groups
     
     insert0←8-+/0=exp                       ⍝ how many '0000' groups to insert?
     insertion←insert0⍴⊂,':0000'             ⍝ build repeating '0000' groups
     
     expanded←1↓∊(⊂insertion)@(exp∘⊣)pad4    ⍝ insert '0000' groups
     
     1(819⌶)expanded                         ⍝ emit uppercase'd expanded IPv6 address
 }
