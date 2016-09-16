#!/usr/bin/env ruby
begin
  gem 'minitest', '>= 5.0.0'
  require 'minitest/autorun'
  require_relative 'hello_world'
rescue Gem::LoadError => e
  puts "\nMissing Dependency:\n#{e.backtrace.first} #{e.message}"
  puts 'Minitest 5.0 gem must be installed for the xRuby track.'
rescue LoadError => e
  puts "\nError:\n#{e.backtrace.first} #{e.message}"
  puts DATA.read
  exit 1
end

class HelloWorldTest < Minitest::Test
  def test_no_method_name
    assert_equal 'Hello, World. My name is Wally!', HelloWorld.new('Wally').hello
  end

  def test_no_method_name_different_object_name
    skip
    assert_equal 'Hello, World. My name is Daisy!', HelloWorld.new('Daisy').hello
  end

  def test_sample_name
    skip
    assert_equal 'Hello, Alice. My name is Wally!', HelloWorld.new('Wally').hello('Alice')
  end

  def test_other_sample_name
    skip
    assert_equal 'Hello, Bob. My name is Wally!', HelloWorld.new('Wally').hello('Bob')
  end

  def test_other_sample_name_with_different_object_name
    skip
    assert_equal 'Hello, Bob. My name is Daisy!', HelloWorld.new('Daisy').hello('Bob')
  end
end

__END__

*****************************************************
You got an error, which is exactly as it should be.
This is the first step in the Test-Driven Development
(TDD) process.

The most important part of the error is

   cannot load such file

It's looking for a file named hello_world.rb that doesn't
exist yet.

To fix the error, create an empty file named hello_world.rb
in the same directory as the hello_world_test.rb file.

Then run the test again.

For more guidance as you work on this exercise, see
GETTING_STARTED.md.
*****************************************************
