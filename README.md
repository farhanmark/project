APEX
====
https://apex.oracle.com/pls/apex/f?p=91458:1:32321253844660::NO:::

Username: test

Password: passwd

Data Models
===========
All data models are in the `models` directory.

*Conceptual Model*: This is our conceptual model. It was originally based on the one given in class, but it has morphed quited a bit.

![Image of conceptual model]
(./models/conceptual.png)

*Logical Model 1*: This model is call `logical_model`. It was our first attempt, but since it rolled up the active employees table, it was reformed into the second logical model.

*Logical Model 2*: This is our current model. It leaves the active employees table untouched by dealing with heirarchy in the conceptual model differently.

![Image of logical model]
(./models/logical.png)


Fullfillment of must-haves and nice-to-haves
============================================
1. We went through all must haves and determined approximately what was needed from home page instructions
2. We added the Files table for file upload/download
3. We will create views to accomodate any other needs if neccessary.


Initial Review
==============
Our initial review presentation is `Initial_review_presentation.odp`. Sorry, LibreOffice is all we had at the time.


Final Review
============
Coming sooner than I wish.


Pages and Features (subject to change)
======================================
- [x] Home
    - [x] Shortcut to this page from every other page to login
    - [x] Select user at start of the session and keep track of the user through session
- [x] Random file upload/download page
    - [x] Allow users to upload and download files
    - [x] Associate user id with uploaded files using select list on home page
- [ ] List membership page
    - [x] Add users and lists to list using shuttles
    - [x] Search for users
    - [x] Group select lists (group lists by division)
    - [x] Prevent duplicate inserts on list
    - [x] Prevent adding inactive users
    - [x] Allow multiple removal from lists
    - [x] Prevent cycles on list
    - [x] Security
        - [x] Require a user to be logged in
        - [x] Enforce proper permissions
    - [ ] Alert for inactive members (employees or lists) on list
    - [x] Button to create new list
        - [x] Return to correctly to membership page
- [x] List maintainance
    - [x] Clone membership
    - [x] Remove from all lists
    - [x] Employee list membership
    - [x] Region display selector to switch between list maintainance and management
    - [x] Only for same lab
    - [x] Warning for labs the user cannot access
- [x] List management
    - [x] Create lists
        - [x] Require name, desc
        - [x] Default div to user's div, but allow chg
    - [x] Copy existing list
        - [x] Copy metadata
        - [x] Copy active members
            - [x] Check for inactive members
        - [x] Only admins
    - [x] Edit list name, desc, div, ext name, or status
        - [x] only admins
- [ ] View
    - [ ] Lists
        - [ ] List membership (view only, no editing)
        - [ ] Use a tree
    - [x] Employees
        - [x] All employees
        - [x] Sub-views for std and admin employees
    - [x] Allow upload of CSV file to load active employees
    - [x] Allow download of CSV file from active employees table (built-in to APEX)
- [ ] Export APEX application
