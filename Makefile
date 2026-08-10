help:	## Show this help and exit.
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'

# due to privacy concerns, download the font and ship it with the theme instead of using a Google CDN
get-fonts:	## Download fonts
	@echo "Downloading fonts..."
	curl -LOJ https://github.com/vercel/geist-font/releases/download/1.5.0/geist-font-1.5.0.zip
	unzip geist-font-1.5.0.zip -d ./tmp
	mv ./tmp/geist-font-1.5.0/fonts/Geist/webfonts/Geist[wght].woff2 ./assets/fonts/
	rm -rf ./tmp
	rm geist-font-1.5.0.zip

