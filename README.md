# README

## Environment

* Ruby version 2.4.1p111
* Rails version 5.1.6
* Sqlite3 version 3.22.0

## Welcome to SimpleBlog

This is a simplified blog application. It has Users, Articles, and Comments.

### Inside the black box

The Devise open source library is used to create login accounts. Login accounts are used for authentication and authorization.

There is a parent/child data relationship between articles and comments. Deleting an article will also delete all its comments.

An HTML snippet is used to create a reusable UI for login/logout/etc. It appears as a header on all pages.

### How to use

To use, first create a login account and sign in. 

Signed-in users can create articles, and edit and delete articles they've created. 

All users (whether signed-in or not) can view articles and add comments to articles.

### Demo Available

To see this web app in action, go to [SimpleBlog on Heroku](https://dugol-simpleblog.herokuapp.com/).




