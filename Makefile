
all:		ffmatch

clean:
	rm -f *~ *.c ffmatch ffmatch.exe ffmatch-compile.sh ffmatch.log ffmatch-icon.o

install:	all
	cp -f ffmatch /usr/local/bin

ffmatch:	ffmatch.trp init.tin lang.tin gui.tin menu.tin kb.tin \
		setup.tin edit.tin update-buttons.tin update-image.tin \
		move-sync.tin move-scd.tin move-spin.tin move-slide.tin \
		move-text1.tin force.tin cfg.tin utils.tin constants.tin \
		scdscan.tin match.tin map.tin sift.tin audio.tin srt.tin \
		permute.tin threads.tin sound.tin clear.tin open.tin \
		project.tin save.tin print.tin play.tin info.tin key.tin \
		history.tin
	trpc -f ffmatch.trp

