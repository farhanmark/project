A note about models
===================
- Our conceptual and logical models are in the models directory
- The conceptual model from class is also there, but we only used it as a starting point
- Our first logical model is `logical_model`, and it was abandoned in favor of a model that did not mangle the active employees table.


Steps taken to ensure fullfillment of must-haves and nice-to-haves
==================================================================
- Went through all must haves and determined approximately what was needed from home page instructions
- Added the Files table for file upload/download
- Plan to create views to accomodate any other needs, such as trees.


Initial Review
==============
Our initial review presentation is `Initial_review_presentation.odp`. Sorry, LibreOffice is
all we had at the time.


TODO
====
- rerun parser files
- use existing trigger for form on `nl_file`
- use `file_data` field properties on form to fill in the file metadata
- add "NOT" user type


Pages in our Webapp (subject to change)
=======================================
- Random file upload page
    - upload and download files

- list membership page
    - add users and lists to list
        - shuttle
    - search for users
        - search bar

    - group select lists

- list maintainance
    - clone membership
    - remove from list
    - employee list membership
    - region display selector to switch between list maintainance and management

- list management
    - create/edit/remove lists

- views for
    - lists
    - users
    - admin

    - tree

    - allow upload of CSV file to load active employees

- Home
    - put a shortcut to this page from every other page
    - select list to choose current user
        - select user at start of the session and keep track of the user through session
            - reference as `:p1_select_list_name`

- Misc other features
    - Buttons that return to page correctly
