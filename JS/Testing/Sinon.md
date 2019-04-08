[Sinon Tutorial: JavaScript Testing with Mocks, Spies & Stubs](https://www.sitepoint.com/sinon-tutorial-javascript-testing-mocks-spies-stubs)
[Sinon: Assertions](https://sinonjs.org/releases/v7.2.4/assertions)

# Sandboxes - Sinon.JS
[sandbox.stub()](https://sinonjs.org/releases/v1.17.7/sandbox)
> Works almost exactly like sinon.stub, only also adds the returned stub to the internal collection of fakes for easy restoring through sandbox.restore(). The sandbox stub method can also be used to stub any kind of property. This is useful if you need to override an object’s property for the duration of a test, and have it restored when the test completes