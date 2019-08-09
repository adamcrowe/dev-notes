// ! Spies specify how code should work
// <https://jasmine.github.io/2.8/introduction#section-Spies>

// Testing with Mocks & Spies
// https://codecraft.tv/courses/angular/unit-testing/mocks-and-spies/
// * # Mocking with fake classes
// * # Mocking by overriding functions
// * # Mock by using a real instance with Spy
// ** By using the spy feature of jasmine we can make any function return anything we want:
// *** spyOn(service, 'isAuthenticated').and.returnValue(false);
// *** We create a spy on our service so that if the isAuthenticated function is called it returns false