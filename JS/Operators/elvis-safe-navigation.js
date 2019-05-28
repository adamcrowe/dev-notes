// ! Safe Navigation Operator ("Elvis Operator")

// Angular 2 calls the "?." operator the "Elvis Operator". However, this is inconsistent with other programming languages. Historically, "?." is known as the "safe navigation operator".
// The "Elvis operator" is normally a binary operator that has more to do with providing default values.

// In Angular 2, the "Elvis Operator" (really, the Safe Navigation Operator) allows an object path to be safely navigated in situations in which you are not entirely sure if every object in the path exists. This prevents null reference exceptions by returning the result of the path if is valid; or, null otherwise

const streetName = user?.address?.street; // Safe Navigation Operator: (user && user.address && user.address.street)
const displayName = user.name ?: "Anonymous";  // Elvis Operator: user.name || Anonymous
