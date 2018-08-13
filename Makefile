sniff:
	vendor/bin/phpcs --colors -p --standard=src/theAverage/deruleset.xml src

beautify:
	vendor/bin/phpcbf --colors -p --standard=ruleset.xml src
