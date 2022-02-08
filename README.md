# README

I didnt get as much time asl I would have liked to work on this,  so its not complete 
and I wanted to do it in rails so I can re-familiarize myself with it.

I have a simple data model that basicall just included Pages and Content.
the pages are used to generate the menu on the left and Content represents the 
individual artitlce types.   

using the ancestry gem I am giving the pages a hierarchy. And with the 
acts-as-taggable-on gem I am tagging each object with tags to indicate 
what content should be loaded.  I.E  the Interview page will look for content tagged with "Interviews" 
etc..

The content type also uses ancetry to create a heierachy.  This was the book can have chapters etc..

I used single table inheritence to indcicate different types of content,  I would use polymorphic inheritance 
but I am keeping this simple.

I am keeping a list of content that is bookmarked by the user via the bookmark_system gem

the db_diagram.png shows the database schema
mathison.postman_collection.json has the pages and content requests

To run.

0. run on machine with docker and docker-compse installed
1. clone repo
2. run docker-compose run --rm api rails db:create db:migrate db:seed 
3. run docker-compose up 

