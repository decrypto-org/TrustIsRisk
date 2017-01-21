Input : old flows x_old[i], value V
Output : new capacities c_new[i]

fcfs(x_old[i], V) :
 n = length(x_old[i])
 F_cur = F_old = sum(x_old[i])
 if (F_old < V)
    return(⊥)
 
 for (i = 1 to n)
    c_new[i] = x_old[i]
 
 i = 1
 while (F_cur > F_old - V)
    reduce = min(x_old[i], F_cur - (F_old - V))
    F_cur = F_cur - reduce
    c_new[i] = x_old[i] - reduce
    i += 1
 
 return(union(c_new[i]))
