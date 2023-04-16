THISDIR = $(shell pwd)
all:

clean:

romfs:
	$(ROMFSINST) $(THISDIR)/Advanced_SQM.asp /www/Advanced_SQM.asp
	$(ROMFSINST) $(THISDIR)/sqm.conf /etc_ro/sqm.conf
	chmod -R +x scripts/
	mkdir -p $(INSTALLDIR)/usr/lib/sqm
	$(ROMFSINST) $(THISDIR)/scripts/ /usr/lib/sqm
	$(ROMFSINST) $(THISDIR)/state.js /www/state.js

