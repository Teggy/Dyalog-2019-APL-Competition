 Components←{
     n←⍵[1;1]            ⍝ # of nodes in graph
     edges←1 0↓⍵         ⍝ "raw" edge list w/o meta data
                              ⍝ A: adjancency matrix:
     A←n n⍴(n+1)↑1       ⍝ (1) each node is connected with itself
     A[↓edges⍪⌽edges]←1  ⍝ (2) add edges (bidirectional)
     
     R←A(∨.∧)⍣≡A         ⍝ reachability in entire graph
     ≢∪R                 ⍝ reachability is unique per component
 }
