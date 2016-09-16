# Hello World Redux

["Hello, World!"](http://en.wikipedia.org/wiki/%22Hello,_world!%22_program) is the traditional first program for beginning programming in a new language.

## Specification

Rewrite your `Hello World!` function from challenge 01.

The function will now be an instance method on a HelloWorld class. Objects of
type HelloWorld will be initialized with a single name argument.

    wally = HelloWorld.new('Wally')
    wally.hello                       # Will output 'Hello, World. My name is Wally!'
    wally.hello('Alice')              # Will output 'Hello, Alice. My name is Wally!'

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
