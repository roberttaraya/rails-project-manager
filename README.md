rails-project-manager
=====================

Project Manager Rails App

To-dos:

1. Create the Task model and controller. A task should have a name, description, and
difficulty_level (which can just be an integer). Projects should "have many" tasks. From
the project “show” page, you should be able to see all of the tasks for the project, their
difficulty level, and a link to edit each one.

Note: using “rails generate scaffold” is totally acceptable for this task -- you can use
whatever generators you want here.

2. AJAX-ify the Task list. When you view the projects show page (e.g. /projects/:id), the
task list should populate via AJAX (using jQuery) instead of within the Rails template,
e.g. by hitting /projects/:id/tasks.json. You should also be able to delete a task via AJAX,
so that when you click “delete” from the task list, it deletes the task from the database
and also removes the “task” element from the frontend without reloading the page.

3. Limit project access:
Only project owners should be able to edit or delete a project
Only project owners and viewers should be able to view a project
When you create a project, you should automatically be added as an "owner"

Hint: to do this, you should use the “complicated version” of linking projects to users
that is commented out in the project.rb class.

4. Anyone who has a user role of "admin" (user.role == User::ROLE[:admin]) should be able
to view, create, and edit any projects. Create a user and set yourself to be an admin
using the rails console.

5. Use twitter bootstrap dropdown to create a nicer looking user menu (for logged-in users)
in the top right:
http://twitter.github.io/bootstrap/components.html#dropdowns
It should look more like Twitter.com's user menu (see screenshot below), with a settings
cog icon:
http://fortawesome.github.io/Font-Awesome/#icon/icon-cog
When you click on the cog, you should see the dropdown with the options:
-- Logged in as [user's name]
-- My Account (takes you to /users/edit)
-- Sign out

If the javascript is not working, you may need to edit application.js to properly include
twitter/bootstrap.
