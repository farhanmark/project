APEX
====
https://apex.oracle.com/pls/apex/f?p=91458:1:32321253844660::NO:::

If prompted to login:

*User*: test

*Pass*: passwd


Data Models
===========
All data models are in the `models` directory.

*Conceptual Model*: This is our conceptual model. It was originally based on the one given in class, but it has morphed quited a bit.

*Logical Model 1*: This model is call `logical_model`. It was our first attempt, but since it rolled up the active employees table, it was reformed into the second logical model.

*Logical Model 2*: This is our current model. It leaves the active employees table untouched by dealing with heirarchy in the conceptual model differently.


Fullfillment of must-haves and nice-to-haves
============================================
1. We went through all must haves and determined approximately what was needed from home page instructions
2. We added the Files table for file upload/download
3. We will create views to accomodate any other needs if neccessary.


Initial Review
==============
Our initial review presentation is `Initial_review_presentation.odp`. Sorry, LibreOffice is all we had at the time.


Pages and Features (subject to change)
======================================
- [ ] Home
    - [ ] put a shortcut to this page from every other page
    - [ ] select list to choose current user
        - [ ] select user at start of the session and keep track of the user through session
            - [ ] reference as `:p1_select_list_name`
- [ ] Random file upload/download page
    - [x] allow users to upload and download files
    - [ ] Associate user id with uploaded files using select list on home page
- [ ] list membership page
    - [x] add users and lists to list using shuttles
    - [x] search for users
    - [ ] group select lists
    - [ ] Prevent duplicate inserts on list
    - [ ] Prevent cycles on list
    - [ ] Security
    - [ ] Beautify
- [ ] list maintainance
    - [ ] clone membership
    - [ ] remove from list
    - [ ] employee list membership
    - [ ] region display selector to switch between list maintainance and management
- [ ] list management: create/edit/remove lists
- [ ] view
    - [ ] lists
    - [ ] users
    - [ ] admin
    - [ ] use a tree
    - [ ] allow upload of CSV file to load active employees
- [ ] Misc other features
    - [ ] Buttons that return to page correctly
