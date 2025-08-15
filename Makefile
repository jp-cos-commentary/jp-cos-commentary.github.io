default: clean
	catttl cs-commentary cs-basic-advanced > all-`date "+%Y%m%d"`.ttl
	rapper -c -i turtle all-`date "+%Y%m%d"`.ttl
	ls -l all-`date "+%Y%m%d"`.ttl
	ttl2html all-`date "+%Y%m%d"`.ttl

clean:
	rm -f [0-9]*.html [0-9]*.ttl
