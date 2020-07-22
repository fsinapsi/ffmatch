
all:		ffmatch

clean:
	rm -f *~ *.c ffmatch ffmatch-compile.sh ffmatch.log *.exe

install:	all
	cp -f ffmatch /usr/local/bin

ffmatch:	ffmatch.trp init.tin lang.tin gui.tin cfg.tin utils.tin \
		constants.tin supervision.tin scdscan.tin match.tin map.tin \
		sift.tin audio.tin permute.tin threads.tin
	trpc -f ffmatch.trp

