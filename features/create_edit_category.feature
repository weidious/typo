Feature: Create and Edit Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add category to my blog add fix the typo

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edut categories
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_permalink" with "blablabla"
    And I fill in "category_description" with "Nothing"
    And I press "Save"
    Then I should see "Foobar"
    Then I should see "Lorem Ipsum"
    Then I should see "blablabla"
    Then I should see "Nothing"

    Then I follow "Foobar"

    When I fill in "category_name" with "Foobar_edit"
    And I fill in "category_keywords" with "Lorem Ipsum_edit"
    And I fill in "category_permalink" with "blablabla_edit"
    And I fill in "category_description" with "Nothing_edit"
    And I press "Save"
    Then I should see "Foobar_edit"
    Then I should see "Lorem Ipsum_edit"
    Then I should see "blablabla_edit"
    Then I should see "Nothing_edit"
