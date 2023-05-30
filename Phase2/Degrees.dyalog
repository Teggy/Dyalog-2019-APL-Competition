 Degrees←{
     n←⍵[1;1]           ⍝ # of nodes in graph
     nodes←(⍳n),∊1 0↓⍵  ⍝ all node occurrences in edge list (plus those w/0 edges)
     ¯1+{≢⍵}⌸nodes      ⍝ degrees = number of node occurrences (subtract 1 for added nodes w/o edges)
 }
