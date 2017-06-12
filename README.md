Shypwright Website
=============

# How to use

To build docker container:
```make build```

To buld jekyll site and run locally:
```make start```

To view website:
```localhost:8015```

### Github pages

Make sure the repo is named:
```<name>/<name>.github.io```

And checked into ```master```

Furthermore, the _config.yml file needs to be updated properly:
```url: https://<name>/<name>.github.io```

Once _config.yml is updated, you must rebuild the site
```make restart``` and checkin the changes to the repo.

To see this website in action:
https://shypwrights.github.io

# Jekyll Notes

Agency theme based on [Agency bootstrap theme ](http://startbootstrap.com/templates/agency/)

### Portfolio 

Portfolio projects are in '/_posts'

Images are in '/img/portfolio'

### About

Images are in '/img/about/'

### Team

Team members and info are in '_config.yml'

Images are in '/img/team/'

## Demo

View this jekyll theme in action [here](https://y7kim.github.io/agency-jekyll-theme)
For more details, read [documentation](http://jekyllrb.com/)
