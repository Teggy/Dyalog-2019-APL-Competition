 GetWordList←{                         ⍝ ⍵: word list file
     lines←⊃⎕NGET ⍵ 1                  ⍝ file contents (line by line)
     words←(1=' '(≢≠⊆⊢)¨lines)/lines   ⍝ find valid words (discards lines that don't contain exactly one word)
     1(819⌶)words                      ⍝ normalize words to UPPERCASE
 }
