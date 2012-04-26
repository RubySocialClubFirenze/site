ruby-firenze
============

	git clone git@github.com:RubySocialClubFirenze/site.git ruby-firenze
	cd ruby-firenze
	git remote add heroku git@heroku.com:ruby-firenze.git
	heroku domains:add firenze.ruby-it.org  #solo la prima volta

Per generare un post

	title="Sono un nuovo post" rake post
