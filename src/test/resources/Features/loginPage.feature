Feature: Login Functionality for OpenCart E-commerce website

  As a user of the Opencart website
  I want to able to log in with my account
  so that I can access my account-related features and manage my orders

  Background:
    Given I am on OpenCart login page

    Scenario: Successful login with valid credentials
      Given I have entered a valid username and password
      When I click on the login button
      Then I should be logged in successfully

  Scenario Outline: Unsuccessful login with invalid or empty credentials
    Given I have entered invalid "<username>" and "<password>"
    When I click on the login button
    Then I should see an error message indicating "<error_message>"

    Examples:
      | username          | password        | error_message                                         |
      | invalid@gmail.com | invalidPassword | Warning: No match for E-mail Address and/or Password. |
      | abccc             | validPassword   | Warning: No match for E-mail Address and/or Password. |
      | valid@gmail.com   | abccc           | Warning: No match for E-mail Address and/or Password. |

    Scenario: Navigating to the forgotten password page
      When I click on the "Forgotten Password" link
      Then I should be redirected to the password reset page






