Input : old flows x_old[i], value V
Output : new capacities c_new[i]

abs(x_old[i], V) :
 n = length(x_old[i])
 F_cur = F_old = sum(x_old[i])
 if (F_old < V)
    return(⊥)
 
 X = preprocess(x_old[i])
 empty = 0
 reduction = 0
 
 while (F_cur > F_old - V)
    (i, X) = popMin(X)
    F_prov = F_cur - (n - empty) * (x_old[i] - reduction)
    if (F_prov > F_old - V)
       reduction = x_old[i]
       empty += 1
       F_cur = F_prov
    else
       aux = reduction
       reduction += (F_cur - (F_old - V)) / (n - empty)
       F_cur -= (n - empty) * (reduction - aux)
 
 for (i = 1 to n)
    c_new[i] = max(0, x_old[i] - reduction)
 return(union(c_new[i]))
