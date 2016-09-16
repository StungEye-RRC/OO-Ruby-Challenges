# Hello World

["Hello, World!"](http://en.wikipedia.org/wiki/%22Hello,_world!%22_program) is the traditional first program for beginning programming in a new language.

## Specification

Write a `Hello World!` function that can greet someone given their name.
The function should return the appropriate greeting.

For an input of "Alice", the response should be "Hello, Alice!".

If a name is not given, the response should be "Hello, World!"

This function will be a class level method on a HelloWorld class. It will be
called like this from the tests:

    HelloWorld.hello
    HelloWorld.hello('Alice')

## Test-Driven Development

As programmers mature, they eventually want to test their code.

At Exercism we simulate [Test-Driven Development](http://en.wikipedia.org/wiki/Test-driven_development) (TDD), where you write your tests before writing any functionality. The simulation comes in the form of a pre-written test suite, which will signal that you have solved the problem.

It will also provide you with a safety net to explore other solutions without breaking the functionality.

### A typical TDD workflow on Exercism:

1. Run the test file and pick one test that's failing.
2. Write some code to fix the test you picked.
3. Re-run the tests to confirm the test is now passing.
4. Remove "skip" from one of the other included tests.
5. Repeat from step 1.
