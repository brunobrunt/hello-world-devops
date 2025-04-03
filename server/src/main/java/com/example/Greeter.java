package com.example;

/**
 * The Greeter class provides a method to generate greeting messages.
 */
public class Greeter {

  /**
   * Default constructor for the Greeter class.
   */
  public Greeter() {
    // Constructor intentionally left blank
  }

  /**
   * Generates a greeting message for the specified person.
   *
   * @param someone the name of the person to greet
   * @return a greeting message
   */
  public String greet(String someone) {
    return String.format("Hello, %s!", someone);
  }
}

