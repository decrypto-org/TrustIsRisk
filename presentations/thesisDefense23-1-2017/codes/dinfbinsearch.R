Input : bot, top, F_old, n, Source A, Drain B,
          capacities C_old, epsilon_1 , epsilon_2
Output : delta

BinSearch(bot, top, F_old, n, C_old, epsilon_1 , epsilon_2) :
 if (bot == top)
    return(bot)
 else
   mid = (top + bot) / 2
 
 for (i = 1 to n)
    c_new[i] = max(0, c_old[i] - mid)
 if (maxFlow(A, B, C_new) < F_old - epsilon_1)
    return(BinSearch(bot, mid, F_old, n, A, B, C_old, epsilon_1, epsilon_2))
 else if (maxFlow(A, B, C_new) > F_old + epsilon_2)
    return(BinSearch(mid, top, F_old, n, A, B, C_old, epsilon_1, epsilon_2))
 else
    return(mid)
