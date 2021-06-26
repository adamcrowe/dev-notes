# MVC
* MVC separates data from the user interface. The MVC architecture is mostly used for GUI applications.
* The model layer contains the data, the view layer sends the data to the user, and the controller is the one that makes changes to the model based on user input.

## Model

> Model code reflects real-world things. In a todo app, the Model would define what a “task” is and that a “list” is a collection of tasks.

## View

> View code is made up of all the functions that directly interact with the user. In a todo app, the View code will define what the todos and lists looks like, visually.

## Controller

> Controller code acts as a liaison between the Model and the View, receiving user input and deciding what to do with it. In a todo app, the Controller could define how a user adds a task, or marks another as complete. The Controller connects the View’s "add" button to the Model, so that when you click “add task,” the Model adds a new task.

# Best Practices

> Fat Models, Skinny Controllers

# How MVC Architecture Works

* First, the browser sends a request to the Controller. Then, the Controller interacts with the Model to send and receive data.
* The Controller then interacts with the View to render the data. The View is only concerned about how to present the information and not the final presentation. It will be a dynamic HTML file that renders data based on what the Controller sends it.
* Finally, the View will send its final presentation to the Controller and the Controller will send that final data to the user output.
* The important thing is that the View and the Model never interact with each other. The only interaction that takes place between them is through the Controller.
* This means the logic of the application and the interface never interacts with each other, which makes writing complex applications easier.

# References
* [How Model-View-Controller Architecture Works](https://www.freecodecamp.org/news/model-view-architecture/)