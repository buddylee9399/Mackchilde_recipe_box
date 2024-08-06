# THINGS IN HERE

- got the rails 7 fix from here
- https://rutikkpatel.medium.com/cocoon-gem-in-ruby-on-rails-7-784b00e06bc2

## GEMS

```
gem "sassc-rails"
gem "image_processing", "~> 1.2"
gem 'haml', '~> 6.0', '>= 6.0.7'
gem 'simple_form'
gem 'bootstrap-sass'
gem 'cocoon'
gem 'devise'
gem 'aws-sdk'
# gem 'paperclip', '~> 4.2.0'
```
- didnt use aws-sdk
- used haml instead of erb
- sass rails for .scss files
- image processing for storage
- used simple form
- no paperclip needed
- i didnt use bootstrap sass
- devise set for turbo, rails 7
- from: https://dev.to/efocoder/how-to-use-devise-with-turbo-in-rails-7-9n9
- haml for devise links

```
      - if user_signed_in?
        %ul.nav.navbar-nav.navbar-right
          %li= link_to "New Recipe", new_recipe_path
          %li= link_to "Sign Out", destroy_user_session_path, method: :delete
      - else
        %ul.nav.navbar-nav.navbar-right
          %li= link_to "Sign Up", new_user_registration_path
          %li= link_to "Sign In", new_user_session_path

```

### using cocoon with rails 7
- added jquery with cdn - https://releases.jquery.com/
- in app.js added this code to see if jquery was working, and it was
```
if(jQuery) alert('jQuery is loaded');
```

- followed these instructions to get it working: https://stackoverflow.com/questions/71645732/cocoon-gem-issue-in-rails-7

## MODELS
- devise user: has many recipes
- recipes: belongs to user, has ingredients, has directions, accepts nested attributes via cocoon
- validation

```
validates :title, :description, :image, presence: true
```
- attached an image

## OTHER
- he did his own styling
- views are in haml

