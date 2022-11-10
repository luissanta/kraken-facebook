Feature: Iniciar una conversación

  @user1 @web
  Scenario: Como primer usuario inicio sesion y mandó un mensaje al usuario 2
    Given I navigate to page "https://www.messenger.com/login"
    And I wait for 2 seconds
    When I enter email "krakenuniandes@gmail.com"
    And I enter password "kraken123"
    And I click next
    And I wait for 3 seconds
    Then I send a signal to user 2 containing "login1 complete"
    And I wait for a signal containing "login2 complete" for 15 seconds
    And I click on the first conversation
    And I click on the redact message inputbox
    And I enter text "hola mundo desde kraken"
    And I wait for 1 seconds
    And I send the message
    And I wait for 5 seconds

  @user2 @web
  Scenario: Como usuario 2 inicio sesion y mandó un mensaje al usuario 1
    Given I navigate to page "https://www.messenger.com/login"
    And I wait for 2 seconds
    When I enter email "cypressuniandes@gmail.com"
    And I enter password "85c7854y"
    And I click next
    And I wait for 3 seconds
    And I send a signal to user 1 containing "login2 complete"
