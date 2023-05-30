 FindWords←{                            ⍝ ⍺:word list, ⍵:board
     pieces←,⍵                          ⍝ all Boggle pieces on board
     n←≢pieces                          ⍝ # of Boggle pieces on board
     occ←↓{(,⊃⍺)⍵}⌸pieces               ⍝ where do Boggle pieces occur on the board?
     boggles←⊃¨occ                      ⍝ unique Boggle pieces on the board
     
     words←((∧/(∊boggles)∊⍨⊢)¨⍺)/⍺      ⍝ words that use any non-board Boggle piece are out
     
     I←n n⍴(n+1)↑1                      ⍝ identity matrix
     A←((,⍳⍴⍵)∘.{∧/2>|⍺-⍵},⍳⍴⍵)-I       ⍝ adjancency matric of board (grid graph)
     
     traversable←{                      ⍝ traversable ⍵: can we traverse the graph along path ⍵?
         0∊⍵,≢⍵:0
         1∊⊃{⍺∧⍵∨.∧A}/(↓I)[⍵]
     }
     
     
     paths←{                                  ⍝ all paths (possibly with hops too wide) on board that can form word ⍵
         0=≢⍵:⊂⍬                              ⍝ empty word ⇒ empty path
         stitch←{                             ⍝ prepend Boggle piece ⍵ (of ⍺ characters)
             ⍵,¨(~⍵∊¨sfx)/sfx←paths ⍺         ⍝   to all possible path continuations
         }
         pfx←(boggles(⊃⍷)¨⊆⍵)/occ             ⍝ find Boggle pieces that start (prefix) word ⍺
         ⊃,/⊃,/((⊂(↓∘⍵≢∘⊃))stitch¨(2∘⊃))¨pfx  ⍝ continue paths for all occurrences of all prefixes
     }
     
     ((∨/traversable¨)∘paths∘,¨⊆words)/words
     
          ⍝ TODO:
          ⍝ - inline traversable check into paths
 }
