# Welcome to Zenith News! 

Our website was designed for the avid, social amateur astronomer. Read articles, share articles you find, learn what everyone is interested in these days. To use the app, it is best to sign up (and have your friends sign up too!). Then you can post articles, 'like' articles, bookmark to read later, and participate in discussions. If you choose not to sign up, you can still read articles and comments that others have posted. 

## Getting Started

### Sinatra Installation

Ensure you have Ruby installed. I have Ruby v.2.0.0. 
Install Sinatra - this only needs to be done once on your machine:

```bash
$ gem install sinatra
$ gem install bundler
```

## Running The App

```bash
$ rake db:create
$ rake db:migrate
$ bundle install
$ shotgun -p 3000 -o 0.0.0.0
```

Visit `http://localhost:3000/` in your browser
