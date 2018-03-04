// ! Pipeline

// chaining several functions: 
const double = (n) => n * 2; 
const increment = (n) => n + 1; 

// without pipeline operator 
double(increment(double(10))); // 42 

// with pipeline operator 
10 |> double |> increment |> double; // 42