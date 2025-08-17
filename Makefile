default: clean
	bundle exec catttl cs-commentary cs-commentary-medadata cs-basic-advanced > all-`date "+%Y%m%d"`.ttl
	rapper -c -i turtle all-`date "+%Y%m%d"`.ttl
	ls -l all-`date "+%Y%m%d"`.ttl
	bundle exec ttl2html all-`date "+%Y%m%d"`.ttl

clean:
	rm -rf [0-9][0-9]/ Elementary/
