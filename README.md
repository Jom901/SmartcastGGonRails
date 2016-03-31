##README


* Rails version: 4.2.3

* Ruby 2.2.1

* Visit at www.smartcast.gg

##Deployment instructions

Simply type in

```shell
bundle install
```
in the project folder to install all rails dependencies. As of right now,
I'm simply using Postgres, figaro, jquery, font-awesome and bootstrap gems.


On a special note, Figaro allows you to easy set environment variables with sensitive information.

For example:
```ruby
pass = ENV['YOUR_PASSWORD']
```

More information at [Figaro](https://github.com/laserlemon/figaro).

Note: Paperclip is configured to work with Environment variables. Attempting to upload images will result in errors unless you setup your AWS information with figaro.

In order to view the website, start up your rails server with

```shell
rails server
```

and visit the localhost presented to you in your terminal window.

##Current features

* Fully responsive front end
* SASS pipline
* Helper that checks if a given stream is online (I.E. SCGG sponsored streams)
* An administrative model that handles information for the DB
* A page that shows all workers currently associated with SmartcastGG with data from the DB
