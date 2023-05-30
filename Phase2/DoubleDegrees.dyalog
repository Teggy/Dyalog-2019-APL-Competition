 DoubleDegrees←{                       ⍝ ⍵: edge list
     n←⍵[1;1]                          ⍝ # of nodes in graph
     edges←1 0↓⍵                       ⍝ "raw" edge list w/o meta data
     
     (nodes neighbors)←↓⍉edges⍪⌽edges  ⍝ all connected nodes and their neighbors (NB. edges are undirected)
     degs←(Degrees ⍵)[neighbors]       ⍝ degrees of all connected neighbors
     ((⍳n),nodes){+/⍵}⌸(n⍴0),degs      ⍝ sum degrees per node (incorporate disconnected node with neighbor degree 0)
 }
