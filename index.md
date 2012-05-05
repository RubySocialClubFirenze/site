---
layout: page
title: Ruby Social Club 
tagline: Firenze 
---
{% include JB/setup %}

<img id="logo" src="/assets/images/logo.png" />

## Prossimo Evento

{% for post in site.posts %}
{% if post.is_the_next %}
{% if post.google_maps %}
<div id="next_event_map" style="float: right; padding: 5px;">
<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="{{ post.google_maps }}">
</iframe>
<br />
<small>
	<a href="{{ post.google_maps }}" style="color:#0000FF;text-align:left">View Larger Map</a>
</small>
</div>
{% endif %}
{{ post.content }}
{% endif %}
{% endfor %}

<div style="clear: both;"/>

## Come funziona il Ruby Social Club a Firenze

Il Ruby Social Club di Firenze nasce come un incontro informale per gli 
appassionati di Ruby, solitamente si svolge in un PUB in orario da aperitvo.
Ci si trova nel locale e si mangia qualcosa insieme, dopodiché si inizia 
con la scaletta dei talk organizzati, poi segue una _hacking session_.

L'idea dell'hacking session è quella di analizzare un tema seguendo le
domande dei presenti anziché una track specifica.
Si comincia a trattare un argomento e si seguono tutte le domande dei presenti;
ognuno può intervenire e dire la sua. Lo scopo è quello di avere una specie di 
talk che sia tarato automaticamente sul livello di preparazione dei presenti
e che permetta a tutti di partecipare.

Che succede se nessuno sa rispondere alla domanda? 
Semplice! Si guarda il codice ;)

## Organizzazione eventi

Per l'organizzazione del Ruby Social Club utilizziamo una [mailing list](https://lists.lilik.it/wws/subscribe/ruby), passa a salutarci!
    
## Eventi Passati

Lo storico degli incontri

<ul class="posts">
  {% for post in site.posts %}
    {% unless post.is_the_next %}
      <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
    {% endunless %}
  {% endfor %}
</ul>

<script type="text/javascript">
{% if site.safe %}mixpanel.track("Homepage loaded");{% endif %}

// $(function(){
// 	//sposta la mappa
// 	$(".map").css('float', 'right');
// });
</script>



