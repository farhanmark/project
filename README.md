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
    - [x] select list to choose current user
        - [x] select user at start of the session and keep track of the user through session
            - [x] reference as `:p1_select_list_name`
- [x] Random file upload/download page
    - [x] Allow users to upload and download files
    - [x] Associate user id with uploaded files using select list on home page
- [x] list membership page
    - [x] Add users and lists to list using shuttles
    - [x] Search for users
    - [x] Group select lists (group lists by division)
    - [x] Prevent duplicate inserts on list
    - [ ] view list membership as read only for lists of a different lab (?)
    - [ ] Show users already on list in the shuttle (?)
    - [x] Prevent cycles on list
    - [x] Security
        - [x] Require a user to be logged in
        - [x] Enforce proper permissions
    - [ ] Beautify
- [ ] list maintainance
    - [ ] clone membership
    - [ ] remove from list
    - [ ] employee list membership
    - [ ] region display selector to switch between list maintainance and management
- [ ] list management: create/edit/remove lists
- [ ] view
    - [ ] lists
        - [ ] list membership (view only, no editing)
    - [ ] users
    - [ ] admin
    - [ ] use a tree
    - [ ] allow upload of CSV file to load active employees
- [ ] Misc other features
    - [ ] Buttons that return to page correctly
