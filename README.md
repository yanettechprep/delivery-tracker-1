# Delivery Tracker 1

## Target

You should build an app that keeps track of packages for a user. [Here is a target to match.](https://delivery-tracker-1.matchthetarget.com)

To explore, sign up and create a few deliveries. You can also sign in with any of:

- `alice@example.com`
- `bob@example.com`
- `carol@example.com`
- `dave@example.com`
- `eve@example.com`

and password: `password`.

Behaviors to note:

- You can't do anything in the app until you sign up or sign in.
- The home page has a list of deliveries that you're expecting.
- There are two sections on the home page: "Waiting on" and "Received".
- You can log a new delivery using the form at the top of the page. Once added, it appears in the "Waiting on" section.
- For items in the "Waiting on" section, there is a button that, when clicked, moves the item to the "Received" section.
- For items in the "Received" section, there is a link to delete the item.

## Implementation details that you must stick to:

- As usual, pay attention to the copy in buttons, links, labels, headings, etc — spelling, capitalization, and punctuation matter.
- The sign in page is located at `/user_sign_in`.
- The sign up page is located at `/user_sign_up`.
- The "Waiting on" section should be contained within a `<div>` that has the class `"waiting_on"`.
    - The `background-color` of the "Waiting on" section should be `lightgoldenrodyellow`.
- The "Received" section should be contained within a `<div>` that has the class `"received"`.
    - The `background-color` of the "Received" section should be `lightgreen`.
- For items in the "Waiting on" section, the date that the delivery was expected on is displayed. If the date is more than **3** days ago, the color of the date is `darkred`.

Other notes:

- In the target, the field to enter a date is an `<input type="date">`. This input type may not work properly on all browsers — use Chrome when testing.

All other implementation details are up to you.

## Specs
<details>
  <summary>Click here to see names of each test</summary>

<li>The home page has an h1 element with the text "Delivery Tracker" </li>

<li>The home page has an h2 element with the text "Expecting a package?" </li>

<li>The home page has the text "Know if something gets lost in the mail." </li>

<li>The home page has a div element with the class "waiting_on" </li>

<li>The home page has an h2 element within the "waiting_on" div with the text "Waiting on" </li>

<li>The home page has a div element with the class "received" </li>

<li>The home page has an h2 element within the "received" div with the text "Received" </li>

<li>The home page has a label the text "Description" with a matching text input </li>

<li>The home page has a label with the text "Supposed to arrive on" with a matching input </li>

<li>The home page has a label the text "Details" with a matching textarea </li>

<li>The home page has a button element with the text "Log delivery" </li>

<li>The background-color of the div of class "waiting_on" is lightgoldenrodyellow </li>

<li>The background-color of the div of class "received" is lightgreen </li>

<li>The home page has a button that logs a package delivery </li>

<li>The Waiting on section displays each package delivery description </li>

<li>The Waiting on section displays the expected arrival date for each package </li>

<li>The Waiting on section has a button to mark a delivery as received with the text 'Mark as received' </li>

<li>The Waiting on section has buttons to move each delivery packages to the "Received" section </li>

<li>The Received section displays each package delivery description </li>

<li>The Received section displays the formatted updated at time for each package </li>

<li>The Received section has a link to delete deliveries with the text "Delete" </li>

<li>The home page displays the message, "Added to list", after logging a delivery </li>

<li>The text of the expected arrival date is darkred when the date is more than 3 days ago </li>

</details>
