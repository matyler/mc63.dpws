SQLITE_SRC =	mc63_dpws.csv
SQLITE_BIN =	mc63_dpws.sqlite
SQLITE_BUILD =	src/build_sqlite.sh

BINS =		$(SQLITE_BIN)


.PHONY:		all install uninstall clean


all:		$(BINS)


$(SQLITE_BIN):	$(SQLITE_SRC)
		$(SQLITE_BUILD) $(SQLITE_SRC) $(SQLITE_BIN)


install:

uninstall:

clean:
		rm -f $(BINS)
