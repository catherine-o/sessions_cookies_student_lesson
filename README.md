# Sessions, Cookies, and Auth in Rails App

## Objectives

- Explain what a session and cookie is.
- Explain how to use sessions and cookies to login a user.
- Demonstrate login functionality in Rails.

### Warmup
- Indiv Research/Group Share: Google what a session and cookie are

### Live Code
- Build out this repo to include login functionality.

Instructions:
- Clone repo to your machine
- Run `rails db:{create,migrate,seed}`
- Complete the following user stories:

* As an unauthenticated visitor:
  - when I visit the root page, I can see a link to the islands, but not the treasures.
  - when I visit the root page, I see an option to Sign up or Log In in the header of the page.
  - when I try to visit `/treaures`, I get a 404 error
  - when I visit the root page and click on Sign Up, I can fill out a form to create credentials, when I click on Submit, I am taken back to the root page as an authenticated user.

* As an authenticated user:
  - when I visit the root page, I see links to islands _and_ treasures.
  - when I visit the root page, I see an option to Logout in the header of the page. (Log In and Sign up are no longer showing.)
  - when I visit any page and I click Logout, I am taken back to the root page and the header options to Login or Sign Up are visible (but not Logout).
