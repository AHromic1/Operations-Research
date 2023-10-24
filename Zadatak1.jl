using JuMP, GLPK  #importing packages
m=Model(GLPK.Optimizer) #creating a model (optimizer is within glpk package)
@variable(m, x1>=0) #creating variables (and imposing non-negative restriction)
@variable(m,x2>=0)
@objective(m, Max, 2*x1 + 4x2) #arg max Z equation

@constraint(m, constraint1, x1 <= 3) #moze li bez 1? Da!
@constraint(m, constraint2, x2 <= 6)
@constraint(m, constraint3, 3x1 + 2x2 <= 18) #moze i sa i bez *

print(m) #printing model
optimize!(m)

println("Rjesenja:")
println("x1 = ", value(x1))
println("x2 = ", value(x2))
println("Vrijednost cilja ", objective_value(m)) #Z