SQLITE_SRC =	mc63_dpws.csv
SQLITE_BIN =	mc63_dpws.sqlite


BINS =		$(SQLITE_BIN)


.PHONY:		all install uninstall clean


all:		$(BINS)


$(SQLITE_BIN):	$(SQLITE_SRC)
		src/build_sqlite.sh $(SQLITE_SRC) $(SQLITE_BIN)


install:

uninstall:

clean:
		rm -f $(BINS) *.tmp
