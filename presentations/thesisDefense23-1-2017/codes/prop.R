Input : old flows x_old[i], value V
Output : new capacities c_new[i]

prop(x_old[i], V) :
 n = length(x_old[i])
 F_old = sum(x_old[i])
 if (F_old < V)
    return(⊥)
 
 for (i = 1 to n)
    c_new[i] = x_old[i] - (V / F_old) * x_old[i]
 return(union(c_new[i]))
