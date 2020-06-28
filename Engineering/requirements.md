See: [BDD](BDD.md)

# Functional vs Non-Functional Requirements
* Functional requirements define what the system does or must not do.
* Non-functional requirements specify how the system should do it.
* Each functional requirement typically has a related non-functional requirement.
* Remember that the difference is essentially the what and the how, which are both necessary

## Example
* **FR**: When a site visitor creates an account, the server shall send a welcome email.
	* **NFR**: When sending welcome emails, the server must send them within 10 minutes of registration.
* **FR**: When order status changes to fulfillment, the local printer shall print a packing slip.
	* **NFR**: When packing slips are printed, they must be printed on both sides of 5" x 8" sheets of white paper.
* **FR**: The system must allow the user to fill out and submit a service form.
	* **NFR**: When the form is requested from the server, it must load within 1 second.
    * **NFR**: When the submit button is pressed, it must complete upload within 2 seconds.

## Functional Requirements
* Functional requirements are product features and focus on user requirements.
* Functional requirements usually define IF/THEN behaviours and include calculations, data input, and business processes.
* Functional requirements are features that, if not implemented correctly, will prevent the system from working.

## Non-Functional Requirements
* Non-functional requirements are product properties and focus on user expectations.
* Non-functional requirements do not affect the basic functionality of the system (hence the name).
* Even if the non-functional requirements are not met, the system will still perform its basic purpose.

## Gathering Requirements

> Although it is ideal to define all functional requirements first, then move on to non-functional requirements, the reality is that people will think of both as they brainstorm.

### Functional Requirements
** **Business**: The ultimate goal (order system, online catalogue, physical product - also approval workflows and authorization levels).
** **Administration**: The routine things the system will do such as monitoring and reporting.
** **User**: What the user of the system can do (place an order or browse the catalogue.)
** **System**: Software and hardware specifications, system responses, or system actions.

### Non-Functional Requirements
* **Usability**: The appearance of the user interface and how people interact with it.
* **Reliability**: Availability (uptime requirements)
* **Scalability**: As needs grow, can the system handle it?
* **Performance**: How fast does it need to operate?
* **Supportability**L Is support provided in-house or is remote accessibility for external resources required?
* **Security**: What are the security requirements?

### How are functional and non-functional requirements written?
* User Stories describe the functionality from the perspective of the end-user.
* Example: "As a <type-of-user>, I want to <task> so that I can <goal>". See: [BDD](BDD.md)
* User stories can be used as a precursor to a requirements specification document by helping to define user needs.

### What are best practices for functional and non-functional requirements?
* Write requirements in a granular way. A good requirement is testable. How will you know when the requirement has been delivered successfully?
* Make sure requirements cover every possible scenario including details of what the system must *not* do whilst being careful not to over-specify.
* When talking with users and stakeholders, try to understand what are they *really* trying to do and how that relates to the project objective.
* Prepare to iterate on requirements (going between functional and non-functional) whilst making sure they are still feasible and non-conflicting.
* Make requirements understandable by non-technical stakeholders (e.g. use BDD), and use visuals as much as possible to reinforce the information.

# References
* [Functional vs Non-Functional Requirements: The Definitive Guide](https://qracorp.com/functional-vs-non-functional-requirements)