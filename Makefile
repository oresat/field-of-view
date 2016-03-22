site: index.md
	jekyll build

index.md: field-of-view.ipynb
	jupyter nbconvert --execute --to=markdown --template="jupyter-jekyll.tpl" $^
	mv field-of-view.md index.md

clean:
	rm -f index.md
	rm -rf _site
