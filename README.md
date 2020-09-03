# Object Oriented Ruby Challenges

A number of object-oriented coding challenges with tests lovingly borrowed from the [Exercism.io Ruby Track](http://exercism.io/languages/ruby).

If you enjoy these please consider signing up for [exercism.io](http://exercism.io) and submitting your versions of the challenges.

**Please read this *entire* README carefully before starting the challenge. It is also important that you read the README file in each question sub-folder.**

## Fetching and Running the Challenges

To being you will need to clone this repository from the command prompt. The folder you are in when you run the clone command will be where the files end up.

    git clone https://github.com/StungEye-RRC/OO-Ruby-Challenges.git

Each of the folders in this repository contains a README file and a testing file. Read **both** the README and the test files for a description of what you need to implement. Your implementation code should go into a ruby file that matches the name of the test file, but with the `_test` portion of the filename remove. For example, in challenge question 01 the test file is named `hello_world_test.rb` so the implementation should go in a `hello_world.rb` file.

To run the tests for the first challenge:

    cd OO-Ruby-Challenges\01-hello-world
    ruby hello_world_test.rb
    
It's expected that you will create the associated `hello_world.rb` and write code in this file to make the `hello_world_text.rb` tests pass.

### A typical TDD workflow for these challenges:

1. Run the test file and pick one test that's failing.
2. Write some code to fix the test you picked.
3. Re-run the tests to confirm the test is now passing.
4. Remove "skip" from one of the other included tests.
5. Repeat from step 1.

## Test Driven Development

*Quoting Exercism:*

> As programmers mature, they eventually want to test their code.
> 
> Exercism simulates [Test-Driven Development](http://en.wikipedia.org/wiki/Test-driven_development) (TDD), where you write your tests before writing any functionality. The simulation comes in the form of a pre-written test suite, which will signal that you have solved the problem.

The tests are written using [Mini Test](https://github.com/seattlerb/minitest), a complete suite of testing facilities supporting TDD, BDD, mocking, and benchmarking.

Each folder in this repository contains a single test file. You will need to read the provided test code to figure out what you need to implement in your code. It is important that you understand how tests can pass and fails. 

Each test file will include a ruby class that inherites from `Minitest::Test`. Each method in these classes is a test. Each test will include some way to determine if the test passes or fails. Here are a few ways a test determines the pass/fail status.

### Assert Equals

Some tests will include a line that looks like this:

    assert_equals 'Some hardcoded number, string or other value', some_method_call

If the hardcoded value (the first argument) matches what is returned by the method call (the second argument), then the test passes. Otherwise the test will fail.

### Assert

Some tests will include a line that looks like this:

    assert some_method_call, "Some hardcoded error message about the test expectations"

If the method call (the first argument) returns `true` the test will pass. Otherwise the test will fail and the error message (the second argument) will be displayed.

### Refute

Some tests will include a line that looks like this:

    refute some_method_call, "Some hardcoded error message about the test expectations"

If the method call (the first argument) returns `false` the test will pass. Otherwise the test will fail and the error message (the second argument) will be displayed.

### Instance Methods vs Class Methods

In all three cases the method call being tested might be a class method or it could be an instance method. The type of method being tested will determine the type of method you need to implement to make the tests pass. The first questions you should ask yourself for each test is: "What type of method is being tested here? Is it a class method or an instance method?"
