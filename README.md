Training Wheels
=======================

Put Training Wheels on your Handlebar Templates so they can ride with Ember
-----------------------

## What the?
This is a simple Sprockets engine that wraps your handlebar templates up and puts them into Ember's TEMPLATES global var, so you can access them like this:

```javascript
//= require_tree ./templates
App.NewAuthView = Ember.View.extend({
	layoutName:   "auth/new",
	templateName: "auth/login_form"
});
```

## How to use/install:
Simply install the gem (training_wheels) or include it in your gemfile.

Now you just need to use the "require" or "require_tree" Sprockets directive to load your templates:

```javascript
//= require_tree ./templates
```

And your templates will automatically be available in your Ember views!

## Issues? Problems?

Feel free to submit issues or pull requests!