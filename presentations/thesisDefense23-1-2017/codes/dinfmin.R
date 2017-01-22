Input : old capacities c_old[i], Source A, Drain B,
                   value V, epsilon_1 ,  epsilon_2
Output : new capacities c_new[i]

dinfmin(c_old[i], V, epsilon_1, epsilon_2) :
 n = length(c_old[i])
 F_old = maxFlow(A, B, C)
 if (F_old < V)
    return(⊥)
 if (( epsilon_1 < 0) or ( epsilon_2 < 0) or
     (F_old - V - epsilon_1 < 0) or
     (F_old - V + epsilon_2 > F_old))
    return(⊥)
 
 delta_max = max(C)
 delta = BinSearch(0, delta_max, F_old - V, n,
 		  A, B, C, epsilon_1, epsilon_2)
 
 for (i = 1 to n)
    c_new[i] = max(0, c_old[i] - delta)
 return(union(c_new[i]))
