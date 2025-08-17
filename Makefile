default: clean
	bundle exec catttl files/cs-commentary files/cs-commentary-medadata files/cs-basic-advanced > files/all-`date "+%Y%m%d"`.ttl
	rapper -c -i turtle files/all-`date "+%Y%m%d"`.ttl
	ls -l files/all-`date "+%Y%m%d"`.ttl
	bundle exec ttl2html files/all-`date "+%Y%m%d"`.ttl

clean:
	rm -rf [0-9][0-9]/ Elementary/
