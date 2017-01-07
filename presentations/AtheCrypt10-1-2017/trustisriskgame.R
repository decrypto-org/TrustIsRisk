j = 0
while (TRUE)
  j += 1
  v = chooseFrom(V)
  Turn = strategies[v](G[0], v, H)
  (G[j], Cap[v, j], H[j]) =
    executeTurn(G[j-1], v, Cap[v, j-1], Turn)
