using JuMP, GLPK
m = Model(GLPK.Optimizer)
@variable(m, x1>=0)
@variable(m, x2>=0)
@objective(m, Max, 3x1+5x2)
@constraint(m, 2x1 + 4x2 >= 10)
@constraint(m, 2*x1 + 6*x2 >= 10)

optimize!(m)

print(m)
println("Rjesenja:")
println("x1 = ", value(x1))
println("x2 = ", value(x2))
println("Vrijednost cilja ", objective_value(m));
