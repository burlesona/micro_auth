# Micro Auth

An absolutely tiny session-based authentication gem, for when you need to add basic admin capability to a single-user Rails app.

Need something more powerful? I recommend Sorcery for Authentication and CanCan for Authorization.

## Setup

Micro Auth sets up a simple administrator login for your app. To set the username
and password just define environment variables: `LOGIN_NAME` and `PASSWORD`.

If you don't provide these environment variables the login name will be `example`, and the password will be `secret`.

## Usage

Micro Auth adds a few simple methods to your app:

    authenticate # Use this in controllers as a before_filter to require login
    admin? # Use this in controllers or views to see if the admin is logged in

Micro Auth also adds two self explanatory named routes, `login` and `logout`.

Tying it all together, anywhere in your app, you could do this:

    - unless admin?
    	= link_to 'Login', login_path
    - if admin?
    	= link_to 'Logout', logout_path

## Custom login forms

Micro Auth provides a default login view for your convenience, however you can stick your own login form anywhere you want. Your form just needs to post `:login` and `:pass` to `micro_auth_sessions_path` to work. Here's the most basic example.

	= form_tag micro_auth_sessions_path do
		= label_tag :login, "Login Name"
		= text_field_tag :login
		= label_tag :pass, "Password"
		= text_field_tag :pass
		= submit_tag

## That's it!

This readme file takes up about as much text as the entire plugin, it's really simple. If you want to override the way it works... you might as well just implement it directly in your app.

Note: this works perfectly. However this is my first effort making a plugin that touches the controller layer, so I haven't figured out how to write automated tests for it yet. I'll get to that someday soon.

In the mean time feel free to fork the plugin, tweak it, and submit pull requests... perhaps if your pull requests include a test suite that will help me figure out how to do automated testing on a controller plugin.

Enjoy!