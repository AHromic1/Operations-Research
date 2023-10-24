using JuMP, GLPK  #importing packages
m=Model(GLPK.Optimizer) #creating a model (optimizer is within glpk package)
@variable(m, x1>=0) #creating variables (and imposing non-negative restriction)
@variable(m,x2>=0)
@variable(m,x3>=0)
@objective(m, Max, 8x1 + 16x2 + 29x3) #arg max Z equation

@constraint(m, constraint1, 3x1 + 8x2 + 14x3 <= 100) #moze li bez 1? Da!
@constraint(m, constraint2, 1x1 + 3x2 + 5x3 <= 40)
@constraint(m, constraint3, 1x1 + 2x2 + 3x3 <= 30) #moze i sa i bez *

print(m) #printing model
optimize!(m)

println("Rjesenja:")
println("x1 = ", value(x1))
println("x2 = ", value(x2))
println("x3 = ", value(x3))
println("Vrijednost cilja ", objective_value(m)) #Z