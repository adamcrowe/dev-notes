// without interface
/*function showTodo(todo: {title: string, text: string}) {
	console.log(todo.title + ': ' + todo.text);
}

let myTodo = {title: 'Trash', text: 'Take out trash'};

showTodo(myTodo);*/
 
interface Todo{
	title: string;
	text: string;
};

// with interface: set todo to interface Todo
function showTodo(todo: Todo) {
	console.log(todo.title + ': ' + todo.text);
}

let myTodo = {title: 'Trash', text: 'Take out trash'};

showTodo(myTodo);	// compiles