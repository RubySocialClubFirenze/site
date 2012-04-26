---
layout: page
title: Ruby Social Club 
tagline: Firenze 
---
{% include JB/setup %}

## Prossimo Evento

Il prossimo Ruby Social Club si terrà mercoledì 2 maggio 2012.

Questa è una lista dei possibili talk:
* "I wanna be an actor too - Painless multithreaded programming with Celluloid" (nolith)
* Puppet (quick) 
* "Fare il proprio blog con jekyll" (magari anche con
la migrazione da wordpress) (tommyblue)
* "Ma perché non emacs? - a caccia di feature che sicuramente esistono
già" (sciamp)

## Organizzazione eventi

Per l'organizzazione del Ruby Social Club utilizziamo una [mailing list](https://lists.lilik.it/wws/subscribe/ruby), passa a salutarci!
    
## Eventi Passati

Lo storico degli incontri

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>



