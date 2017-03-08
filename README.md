![List of Ingredients](https://i.imgur.com/30bgJWe.png)

# List of Ingredients (with Administrate)

This repo serves as a continuation of the concepts covered in the tutorial [Rails 5 API + ActiveAdmin + create-react-app on Heroku, over on Medium](https://medium.com/superhighfives/rails-5-api-activeadmin-create-react-app-on-heroku-de5481b7ec0b), except using [Administrate](https://github.com/thoughtbot/administrate) on the back end. The end result should look something like this:

![An example of the List of Ingredients app](http://i.imgur.com/as3HMYP.png)

It was inspired by [this post by Carlos Ramirez III](http://www.carlosramireziii.com/using-administrate-with-a-rails-5-api-application.html), which covers the updates required to get Administrate working with Rails 5 API.

## Getting started

``` shell
git clone https://github.com/superhighfives/list-of-ingredients-administrate.git
cd list-of-ingredients-administrate
bundle
cd client
npm install
cd ..
rake start
```

Once you're ready to deploy to [Heroku](https://surge.sh), run:

``` shell
heroku apps:create
heroku buildpacks:add heroku/nodejs --index 1
heroku buildpacks:add heroku/ruby --index 2
git push heroku master
heroku run rake db:migrate
heroku run rake db:seed
heroku open
```

Success!

## Suggestions, problems, typos?

Let me know in the [issues](https://github.com/superhighfives/list-of-ingredients/issues).
