Rails Web App
===

Vagrant
---

Before you can do anything else you need Vagrant and VirtualBox.

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant 1.1+](http://vagrantup.com)

Then build the box with `vagrant up` and log in with `vagrant ssh`.


Bundler
---

The provisioning doesn't run bundler, so run this on your own:

```
cd blocks
bundle install
```


Rails
---

Just run these commands to get the rails server running.

```
cd blocks
rake db:migrate
rails server
```


FrontEnd - Compiling bundle
---

From /vagrant

    $ npm start


Database
---

After you connect to the VM with `vagrant ssh`, you con connect to postgres with this command:

    PGUSER=vagrant PGPASSWORD=root psql -h localhost blocks

If you want to drop the entire blocks database and start from scratch, do this:

    sudo su - postgres -c "psql -c 'DROP DATABASE blocks'"
    sudo su - postgres -c "psql -c 'CREATE DATABASE blocks WITH OWNER vagrant'"

If rails generate ever hangs on your run

    spring stop

any rails command will restart it


Pushing
---

To push to staging (`stage.herokuapp.com`) just run:

    sh heroku.sh

AFTER you have pushed there and you have tested the home page and
at least one player page, do a push to production:

    sh heroku.sh prod



FrontEnd - Compiling bundle
---

From /vagrant

    $ npm start
