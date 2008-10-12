# Makefile.in generated by automake 1.10.1 from Makefile.am.
# Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
# 2003, 2004, 2005, 2006, 2007, 2008  Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



# Makefile.am
# RL 28/11/04



pkgdatadir = $(datadir)/photoprint
pkglibdir = $(libdir)/photoprint
pkgincludedir = $(includedir)/photoprint
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = x86_64-unknown-linux-gnu
host_triplet = x86_64-unknown-linux-gnu
bin_PROGRAMS = photoprint$(EXEEXT)
check_PROGRAMS = menucheck$(EXEEXT)
subdir = .
DIST_COMMON = README $(am__configure_deps) $(srcdir)/Makefile.am \
	$(srcdir)/Makefile.in $(srcdir)/config.h.in \
	$(top_srcdir)/configure ABOUT-NLS COPYING ChangeLog INSTALL \
	NEWS TODO scripts/config.guess scripts/config.rpath \
	scripts/config.sub scripts/depcomp scripts/install-sh \
	scripts/ltmain.sh scripts/missing scripts/mkinstalldirs
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno config.status.lineno
mkinstalldirs = $(SHELL) $(top_srcdir)/scripts/mkinstalldirs
CONFIG_HEADER = config.h
CONFIG_CLEAN_FILES =
am__installdirs = "$(DESTDIR)$(bindir)" "$(DESTDIR)$(desktopdir)" \
	"$(DESTDIR)$(icondir)"
binPROGRAMS_INSTALL = $(INSTALL_PROGRAM)
PROGRAMS = $(bin_PROGRAMS)
am_menucheck_OBJECTS = menucheck.$(OBJEXT)
menucheck_OBJECTS = $(am_menucheck_OBJECTS)
am__DEPENDENCIES_1 =
menucheck_DEPENDENCIES = effects/libppeffects.la \
	imagesource/libimagesource.la support/libsupport.la \
	profilemanager/libprofilemanager.la \
	stpui_widgets/libstpui_widgets.la \
	stp_support/libstp_support.la \
	pixbufthumbnail/libpixbufthumbnail.la \
	splashscreen/libsplashscreen.la $(am__DEPENDENCIES_1) \
	$(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
	$(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
	$(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
	$(am__DEPENDENCIES_1)
am_photoprint_OBJECTS = dialogs.$(OBJEXT) gprintersettings.$(OBJEXT) \
	layout.$(OBJEXT) layout_imageinfo.$(OBJEXT) \
	layout_carousel.$(OBJEXT) layout_nup.$(OBJEXT) \
	layout_poster.$(OBJEXT) layout_single.$(OBJEXT) \
	photoprint.$(OBJEXT) photoprint_state.$(OBJEXT) \
	pp_cms.$(OBJEXT) pp_imagecontrol.$(OBJEXT) \
	pp_mainwindow.$(OBJEXT) pp_menu_file.$(OBJEXT) \
	pp_menu_edit.$(OBJEXT) pp_menu_layout.$(OBJEXT) \
	pp_menu_image.$(OBJEXT) pp_menu_options.$(OBJEXT) \
	pp_menu_help.$(OBJEXT) pp_layout_carousel.$(OBJEXT) \
	pp_layout_carousel_pageview.$(OBJEXT) pp_layout_nup.$(OBJEXT) \
	pp_layout_nup_pageview.$(OBJEXT) pp_layout_poster.$(OBJEXT) \
	pp_layout_poster_pageview.$(OBJEXT) pp_layout_single.$(OBJEXT) \
	pp_layout_single_pageview.$(OBJEXT) pp_pageextent.$(OBJEXT) \
	pp_printoutput.$(OBJEXT) pp_scaling.$(OBJEXT) \
	pp_sigcontrol.$(OBJEXT) pp_units.$(OBJEXT) \
	pp_imageinfo.$(OBJEXT) print.$(OBJEXT) \
	printerqueueswrapper.$(OBJEXT) printoutput.$(OBJEXT) \
	util.$(OBJEXT)
photoprint_OBJECTS = $(am_photoprint_OBJECTS)
photoprint_DEPENDENCIES = effects/libppeffects.la \
	imagesource/libimagesource.la support/libsupport.la \
	profilemanager/libprofilemanager.la \
	stpui_widgets/libstpui_widgets.la \
	stp_support/libstp_support.la \
	pixbufthumbnail/libpixbufthumbnail.la \
	splashscreen/libsplashscreen.la $(am__DEPENDENCIES_1) \
	$(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
	$(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
	$(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
	$(am__DEPENDENCIES_1)
DEFAULT_INCLUDES = -I.
depcomp = $(SHELL) $(top_srcdir)/scripts/depcomp
am__depfiles_maybe = depfiles
CXXCOMPILE = $(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) \
	$(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CXXFLAGS) $(CXXFLAGS)
LTCXXCOMPILE = $(LIBTOOL) --tag=CXX $(AM_LIBTOOLFLAGS) $(LIBTOOLFLAGS) \
	--mode=compile $(CXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) \
	$(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CXXFLAGS) $(CXXFLAGS)
CXXLD = $(CXX)
CXXLINK = $(LIBTOOL) --tag=CXX $(AM_LIBTOOLFLAGS) $(LIBTOOLFLAGS) \
	--mode=link $(CXXLD) $(AM_CXXFLAGS) $(CXXFLAGS) $(AM_LDFLAGS) \
	$(LDFLAGS) -o $@
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
LTCOMPILE = $(LIBTOOL) --tag=CC $(AM_LIBTOOLFLAGS) $(LIBTOOLFLAGS) \
	--mode=compile $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) \
	$(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(LIBTOOL) --tag=CC $(AM_LIBTOOLFLAGS) $(LIBTOOLFLAGS) \
	--mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) \
	$(LDFLAGS) -o $@
SOURCES = $(menucheck_SOURCES) $(photoprint_SOURCES)
DIST_SOURCES = $(menucheck_SOURCES) $(photoprint_SOURCES)
RECURSIVE_TARGETS = all-recursive check-recursive dvi-recursive \
	html-recursive info-recursive install-data-recursive \
	install-dvi-recursive install-exec-recursive \
	install-html-recursive install-info-recursive \
	install-pdf-recursive install-ps-recursive install-recursive \
	installcheck-recursive installdirs-recursive pdf-recursive \
	ps-recursive uninstall-recursive
am__vpath_adj_setup = srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`;
am__vpath_adj = case $$p in \
    $(srcdir)/*) f=`echo "$$p" | sed "s|^$$srcdirstrip/||"`;; \
    *) f=$$p;; \
  esac;
am__strip_dir = `echo $$p | sed -e 's|^.*/||'`;
desktopDATA_INSTALL = $(INSTALL_DATA)
iconDATA_INSTALL = $(INSTALL_DATA)
DATA = $(desktop_DATA) $(icon_DATA)
RECURSIVE_CLEAN_TARGETS = mostlyclean-recursive clean-recursive	\
  distclean-recursive maintainer-clean-recursive
ETAGS = etags
CTAGS = ctags
DIST_SUBDIRS = $(SUBDIRS)
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)
am__remove_distdir = \
  { test ! -d $(distdir) \
    || { find $(distdir) -type d ! -perm -200 -exec chmod u+w {} ';' \
         && rm -fr $(distdir); }; }
DIST_ARCHIVES = $(distdir).tar.gz
GZIP_ENV = --best
distuninstallcheck_listfiles = find . -type f -print
distcleancheck_listfiles = find . -type f -print
ACLOCAL = ${SHELL} /home/amr/coding/photoprint/scripts/missing --run aclocal-1.10
AMTAR = ${SHELL} /home/amr/coding/photoprint/scripts/missing --run tar
AR = ar
AUTOCONF = ${SHELL} /home/amr/coding/photoprint/scripts/missing --run autoconf
AUTOHEADER = ${SHELL} /home/amr/coding/photoprint/scripts/missing --run autoheader
AUTOMAKE = ${SHELL} /home/amr/coding/photoprint/scripts/missing --run automake-1.10
AWK = mawk
CC = gcc
CCDEPMODE = depmode=gcc3
CFLAGS = -g -O2
CPP = gcc -E
CPPFLAGS = 
CXX = g++
CXXCPP = g++ -E
CXXDEPMODE = depmode=gcc3
CXXFLAGS = -g -O2
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DSYMUTIL = 
ECHO = echo
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = /bin/grep -E
EXEEXT = 
F77 = 
FFLAGS = 
GDKPIXBUF2_CFLAGS = -I/usr/include/gtk-2.0 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include  
GDKPIXBUF2_LIBS = -lgdk_pixbuf-2.0 -lm -lgobject-2.0 -lgmodule-2.0 -ldl -lglib-2.0  
GETOPT_LIBS = 
GETTEXT_MACRO_VERSION = 0.17
GLIB2_CFLAGS = -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include  
GLIB2_LIBS = -lglib-2.0  
GMSGFMT = /usr/bin/msgfmt
GMSGFMT_015 = /usr/bin/msgfmt
GP_CFLAGS = -I/usr/local/include  
GP_LIBS = -L/usr/local/lib -lgutenprint  
GREP = /bin/grep
GTHREAD_CFLAGS = -pthread -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include  
GTHREAD_LIBS = -pthread -lgthread-2.0 -lrt -lglib-2.0  
GTK2_CFLAGS = -DPNG_NO_MMX_CODE -I/usr/include/gtk-2.0 -I/usr/lib/gtk-2.0/include -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/pixman-1  
GTK2_LIBS = -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgdk_pixbuf-2.0 -lm -lpangocairo-1.0 -lpango-1.0 -lcairo -lgobject-2.0 -lgmodule-2.0 -ldl -lglib-2.0  
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
INTLLIBS = 
INTL_MACOSX_LIBS = 
JPEG_LIBS = 
LCMS_CFLAGS =  
LCMS_LIBS = -llcms  
LDFLAGS = 
LIBICONV = -liconv
LIBINTL = 
LIBM_LIBS = -lm
LIBOBJS = 
LIBS = -lcups -lnsl -lpthread -ljpeg 
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LN_S = ln -s
LTLIBICONV = -liconv
LTLIBINTL = 
LTLIBOBJS = 
MAKEINFO = ${SHELL} /home/amr/coding/photoprint/scripts/missing --run makeinfo
MKDIR_P = /bin/mkdir -p
MSGFMT = /usr/bin/msgfmt
MSGFMT_015 = /usr/bin/msgfmt
MSGMERGE = /usr/bin/msgmerge
NMEDIT = 
OBJEXT = o
PACKAGE = photoprint
PACKAGE_BUGREPORT = blackfive@fakenhamweb.co.uk
PACKAGE_NAME = photoprint
PACKAGE_STRING = photoprint 0.4.0
PACKAGE_TARNAME = photoprint
PACKAGE_VERSION = 0.4.0
PATH_SEPARATOR = :
PKG_CONFIG = /usr/bin/pkg-config
POSUB = po
RANLIB = ranlib
SED = /bin/sed
SET_MAKE = 
SHELL = /bin/bash
STRIP = strip
TIFF_LIBS = -ltiff
USE_NLS = yes
VERSION = 0.4.0
XGETTEXT = /usr/bin/xgettext
XGETTEXT_015 = /usr/bin/xgettext
XGETTEXT_EXTRA_OPTIONS = 
abs_builddir = /home/amr/coding/photoprint
abs_srcdir = /home/amr/coding/photoprint
abs_top_builddir = /home/amr/coding/photoprint
abs_top_srcdir = /home/amr/coding/photoprint
ac_ct_CC = gcc
ac_ct_CXX = g++
ac_ct_F77 = 
am__include = include
am__leading_dot = .
am__quote = 
am__tar = ${AMTAR} chof - "$$tardir"
am__untar = ${AMTAR} xf -
bindir = ${exec_prefix}/bin
build = x86_64-unknown-linux-gnu
build_alias = 
build_cpu = x86_64
build_os = linux-gnu
build_vendor = unknown
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
host = x86_64-unknown-linux-gnu
host_alias = 
host_cpu = x86_64
host_os = linux-gnu
host_vendor = unknown
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = $(SHELL) /home/amr/coding/photoprint/scripts/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = $(datadir)/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
mkdir_p = /bin/mkdir -p
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /usr/local
program_transform_name = s,x,x,
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
sysconfdir = ${prefix}/etc
target_alias = 
top_builddir = .
top_srcdir = .
SUBDIRS = po support imagesource stpui_widgets stp_support pixbufthumbnail splashscreen profilemanager effects
AM_CXXFLAGS = -DLOCALEDIR=\"$(localedir)\" -Wall -I./support/ -I./imagesource/ -I./splashscreen -I./profilemanager -I./effects \
	$(LCMS_CFLAGS) $(GP_CFLAGS) $(GTK2_CFLAGS)

photoprint_SOURCES = \
	dialogs.cpp		\
	dialogs.h		\
	gprintersettings.cpp	\
	gprintersettings.h	\
	layoutdb.h		\
	layout.cpp		\
	layout.h		\
	layout_imageinfo.cpp \
	layout_imageinfo.h \
	layout_carousel.cpp	\
	layout_carousel.h	\
	layout_nup.cpp	\
	layout_nup.h	\
	layout_poster.cpp	\
	layout_poster.h	\
	layout_single.cpp	\
	layout_single.h	\
	photoprint.cpp		\
	photoprint_state.cpp	\
	photoprint_state.h	\
	pp_cms.cpp		\
	pp_cms.h		\
	pp_imagecontrol.cpp	\
	pp_imagecontrol.h	\
	pp_mainwindow.cpp	\
	pp_mainwindow.h		\
	pp_menu_file.cpp	\
	pp_menu_file.h	\
	pp_menu_edit.cpp	\
	pp_menu_edit.h	\
	pp_menu_layout.cpp	\
	pp_menu_layout.h	\
	pp_menu_image.cpp	\
	pp_menu_image.h	\
	pp_menu_options.cpp	\
	pp_menu_options.h	\
	pp_menu_help.cpp	\
	pp_menu_help.h	\
	pp_layout_carousel.cpp	\
	pp_layout_carousel.h	\
	pp_layout_carousel_pageview.cpp		\
	pp_layout_carousel_pageview.h		\
	pp_layout_nup.cpp	\
	pp_layout_nup.h	\
	pp_layout_nup_pageview.cpp		\
	pp_layout_nup_pageview.h		\
	pp_layout_poster.cpp	\
	pp_layout_poster.h	\
	pp_layout_poster_pageview.cpp	\
	pp_layout_poster_pageview.h	\
	pp_layout_single.cpp	\
	pp_layout_single.h	\
	pp_layout_single_pageview.cpp	\
	pp_layout_single_pageview.h		\
	pp_pageextent.cpp	\
	pp_pageextent.h	\
	pp_printoutput.cpp	\
	pp_printoutput.h	\
	pp_scaling.cpp	\
	pp_scaling.h	\
	pp_sigcontrol.cpp	\
	pp_sigcontrol.h		\
	pp_units.cpp \
	pp_units.h \
	pp_imageinfo.cpp	\
	pp_imageinfo.h	\
	print.cpp		\
	print.h			\
	printerqueueswrapper.cpp	\
	printerqueueswrapper.h	\
	printoutput.cpp		\
	printoutput.h		\
	util.cpp		\
	util.h	\
	gettext.h

photoprint_LDADD = \
	effects/libppeffects.la	\
	imagesource/libimagesource.la	\
	support/libsupport.la	\
	profilemanager/libprofilemanager.la	\
	stpui_widgets/libstpui_widgets.la	\
	stp_support/libstp_support.la \
	pixbufthumbnail/libpixbufthumbnail.la	\
	splashscreen/libsplashscreen.la	\
	$(LIBINTL) $(LIBM_LIBS) $(GETOPT_LIBS) $(JPEG_LIBS) $(PNM_LIBS) $(TIFF_LIBS) $(LCMS_LIBS) $(GP_LIBS) $(GTK2_LIBS)

menucheck_SOURCES = menucheck.cpp
menucheck_LDADD = \
	effects/libppeffects.la	\
	imagesource/libimagesource.la	\
	support/libsupport.la	\
	profilemanager/libprofilemanager.la	\
	stpui_widgets/libstpui_widgets.la	\
	stp_support/libstp_support.la \
	pixbufthumbnail/libpixbufthumbnail.la	\
	splashscreen/libsplashscreen.la	\
	$(LIBINTL) $(LIBM_LIBS) $(GETOPT_LIBS) $(JPEG_LIBS) $(PNM_LIBS) $(TIFF_LIBS) $(LCMS_LIBS) $(GP_LIBS) $(GTK2_LIBS)

desktopdir = $(datadir)/applications
desktop_DATA = fotoprint.desktop
icondir = $(datadir)/icons/hicolor/48x48/apps/
icon_DATA = fotoprint.png
EXTRA_DIST = COPYING README INSTALL TODO photoprint.1 fotoprint.desktop fotoprint.png
all: config.h
	$(MAKE) $(AM_MAKEFLAGS) all-recursive

.SUFFIXES:
.SUFFIXES: .cpp .lo .o .obj
am--refresh:
	@:
$(srcdir)/Makefile.in:  $(srcdir)/Makefile.am  $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      echo ' cd $(srcdir) && $(AUTOMAKE) --foreign '; \
	      cd $(srcdir) && $(AUTOMAKE) --foreign  \
		&& exit 0; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --foreign  Makefile'; \
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --foreign  Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    echo ' $(SHELL) ./config.status'; \
	    $(SHELL) ./config.status;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck

$(top_srcdir)/configure:  $(am__configure_deps)
	cd $(srcdir) && $(AUTOCONF)
$(ACLOCAL_M4):  $(am__aclocal_m4_deps)
	cd $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)

config.h: stamp-h1
	@if test ! -f $@; then \
	  rm -f stamp-h1; \
	  $(MAKE) $(AM_MAKEFLAGS) stamp-h1; \
	else :; fi

stamp-h1: $(srcdir)/config.h.in $(top_builddir)/config.status
	@rm -f stamp-h1
	cd $(top_builddir) && $(SHELL) ./config.status config.h
$(srcdir)/config.h.in:  $(am__configure_deps) 
	cd $(top_srcdir) && $(AUTOHEADER)
	rm -f stamp-h1
	touch $@

distclean-hdr:
	-rm -f config.h stamp-h1
install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	test -z "$(bindir)" || $(MKDIR_P) "$(DESTDIR)$(bindir)"
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  p1=`echo $$p|sed 's/$(EXEEXT)$$//'`; \
	  if test -f $$p \
	     || test -f $$p1 \
	  ; then \
	    f=`echo "$$p1" | sed 's,^.*/,,;$(transform);s/$$/$(EXEEXT)/'`; \
	   echo " $(INSTALL_PROGRAM_ENV) $(LIBTOOL) $(AM_LIBTOOLFLAGS) $(LIBTOOLFLAGS) --mode=install $(binPROGRAMS_INSTALL) '$$p' '$(DESTDIR)$(bindir)/$$f'"; \
	   $(INSTALL_PROGRAM_ENV) $(LIBTOOL) $(AM_LIBTOOLFLAGS) $(LIBTOOLFLAGS) --mode=install $(binPROGRAMS_INSTALL) "$$p" "$(DESTDIR)$(bindir)/$$f" || exit 1; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  f=`echo "$$p" | sed 's,^.*/,,;s/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/'`; \
	  echo " rm -f '$(DESTDIR)$(bindir)/$$f'"; \
	  rm -f "$(DESTDIR)$(bindir)/$$f"; \
	done

clean-binPROGRAMS:
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  f=`echo $$p|sed 's/$(EXEEXT)$$//'`; \
	  echo " rm -f $$p $$f"; \
	  rm -f $$p $$f ; \
	done

clean-checkPROGRAMS:
	@list='$(check_PROGRAMS)'; for p in $$list; do \
	  f=`echo $$p|sed 's/$(EXEEXT)$$//'`; \
	  echo " rm -f $$p $$f"; \
	  rm -f $$p $$f ; \
	done
menucheck$(EXEEXT): $(menucheck_OBJECTS) $(menucheck_DEPENDENCIES) 
	@rm -f menucheck$(EXEEXT)
	$(CXXLINK) $(menucheck_OBJECTS) $(menucheck_LDADD) $(LIBS)
photoprint$(EXEEXT): $(photoprint_OBJECTS) $(photoprint_DEPENDENCIES) 
	@rm -f photoprint$(EXEEXT)
	$(CXXLINK) $(photoprint_OBJECTS) $(photoprint_LDADD) $(LIBS)

mostlyclean-compile:
	-rm -f *.$(OBJEXT)

distclean-compile:
	-rm -f *.tab.c

include ./$(DEPDIR)/dialogs.Po
include ./$(DEPDIR)/gprintersettings.Po
include ./$(DEPDIR)/layout.Po
include ./$(DEPDIR)/layout_carousel.Po
include ./$(DEPDIR)/layout_imageinfo.Po
include ./$(DEPDIR)/layout_nup.Po
include ./$(DEPDIR)/layout_poster.Po
include ./$(DEPDIR)/layout_single.Po
include ./$(DEPDIR)/menucheck.Po
include ./$(DEPDIR)/photoprint.Po
include ./$(DEPDIR)/photoprint_state.Po
include ./$(DEPDIR)/pp_cms.Po
include ./$(DEPDIR)/pp_imagecontrol.Po
include ./$(DEPDIR)/pp_imageinfo.Po
include ./$(DEPDIR)/pp_layout_carousel.Po
include ./$(DEPDIR)/pp_layout_carousel_pageview.Po
include ./$(DEPDIR)/pp_layout_nup.Po
include ./$(DEPDIR)/pp_layout_nup_pageview.Po
include ./$(DEPDIR)/pp_layout_poster.Po
include ./$(DEPDIR)/pp_layout_poster_pageview.Po
include ./$(DEPDIR)/pp_layout_single.Po
include ./$(DEPDIR)/pp_layout_single_pageview.Po
include ./$(DEPDIR)/pp_mainwindow.Po
include ./$(DEPDIR)/pp_menu_edit.Po
include ./$(DEPDIR)/pp_menu_file.Po
include ./$(DEPDIR)/pp_menu_help.Po
include ./$(DEPDIR)/pp_menu_image.Po
include ./$(DEPDIR)/pp_menu_layout.Po
include ./$(DEPDIR)/pp_menu_options.Po
include ./$(DEPDIR)/pp_pageextent.Po
include ./$(DEPDIR)/pp_printoutput.Po
include ./$(DEPDIR)/pp_scaling.Po
include ./$(DEPDIR)/pp_sigcontrol.Po
include ./$(DEPDIR)/pp_units.Po
include ./$(DEPDIR)/print.Po
include ./$(DEPDIR)/printerqueueswrapper.Po
include ./$(DEPDIR)/printoutput.Po
include ./$(DEPDIR)/util.Po

.cpp.o:
	$(CXXCOMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ $<
	mv -f $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Po
#	source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXXCOMPILE) -c -o $@ $<

.cpp.obj:
	$(CXXCOMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ `$(CYGPATH_W) '$<'`
	mv -f $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Po
#	source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(CXXCOMPILE) -c -o $@ `$(CYGPATH_W) '$<'`

.cpp.lo:
	$(LTCXXCOMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ $<
	mv -f $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Plo
#	source='$<' object='$@' libtool=yes \
#	DEPDIR=$(DEPDIR) $(CXXDEPMODE) $(depcomp) \
#	$(LTCXXCOMPILE) -c -o $@ $<

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

distclean-libtool:
	-rm -f libtool
install-desktopDATA: $(desktop_DATA)
	@$(NORMAL_INSTALL)
	test -z "$(desktopdir)" || $(MKDIR_P) "$(DESTDIR)$(desktopdir)"
	@list='$(desktop_DATA)'; for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  f=$(am__strip_dir) \
	  echo " $(desktopDATA_INSTALL) '$$d$$p' '$(DESTDIR)$(desktopdir)/$$f'"; \
	  $(desktopDATA_INSTALL) "$$d$$p" "$(DESTDIR)$(desktopdir)/$$f"; \
	done

uninstall-desktopDATA:
	@$(NORMAL_UNINSTALL)
	@list='$(desktop_DATA)'; for p in $$list; do \
	  f=$(am__strip_dir) \
	  echo " rm -f '$(DESTDIR)$(desktopdir)/$$f'"; \
	  rm -f "$(DESTDIR)$(desktopdir)/$$f"; \
	done
install-iconDATA: $(icon_DATA)
	@$(NORMAL_INSTALL)
	test -z "$(icondir)" || $(MKDIR_P) "$(DESTDIR)$(icondir)"
	@list='$(icon_DATA)'; for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  f=$(am__strip_dir) \
	  echo " $(iconDATA_INSTALL) '$$d$$p' '$(DESTDIR)$(icondir)/$$f'"; \
	  $(iconDATA_INSTALL) "$$d$$p" "$(DESTDIR)$(icondir)/$$f"; \
	done

uninstall-iconDATA:
	@$(NORMAL_UNINSTALL)
	@list='$(icon_DATA)'; for p in $$list; do \
	  f=$(am__strip_dir) \
	  echo " rm -f '$(DESTDIR)$(icondir)/$$f'"; \
	  rm -f "$(DESTDIR)$(icondir)/$$f"; \
	done

# This directory's subdirectories are mostly independent; you can cd
# into them and run `make' without going through this Makefile.
# To change the values of `make' variables: instead of editing Makefiles,
# (1) if the variable is set in `config.status', edit `config.status'
#     (which will cause the Makefiles to be regenerated when you run `make');
# (2) otherwise, pass the desired values on the `make' command line.
$(RECURSIVE_TARGETS):
	@failcom='exit 1'; \
	for f in x $$MAKEFLAGS; do \
	  case $$f in \
	    *=* | --[!k]*);; \
	    *k*) failcom='fail=yes';; \
	  esac; \
	done; \
	dot_seen=no; \
	target=`echo $@ | sed s/-recursive//`; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    dot_seen=yes; \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	  || eval $$failcom; \
	done; \
	if test "$$dot_seen" = "no"; then \
	  $(MAKE) $(AM_MAKEFLAGS) "$$target-am" || exit 1; \
	fi; test -z "$$fail"

$(RECURSIVE_CLEAN_TARGETS):
	@failcom='exit 1'; \
	for f in x $$MAKEFLAGS; do \
	  case $$f in \
	    *=* | --[!k]*);; \
	    *k*) failcom='fail=yes';; \
	  esac; \
	done; \
	dot_seen=no; \
	case "$@" in \
	  distclean-* | maintainer-clean-*) list='$(DIST_SUBDIRS)' ;; \
	  *) list='$(SUBDIRS)' ;; \
	esac; \
	rev=''; for subdir in $$list; do \
	  if test "$$subdir" = "."; then :; else \
	    rev="$$subdir $$rev"; \
	  fi; \
	done; \
	rev="$$rev ."; \
	target=`echo $@ | sed s/-recursive//`; \
	for subdir in $$rev; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	  || eval $$failcom; \
	done && test -z "$$fail"
tags-recursive:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  test "$$subdir" = . || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) tags); \
	done
ctags-recursive:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  test "$$subdir" = . || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) ctags); \
	done

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonemtpy = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	mkid -fID $$unique
tags: TAGS

TAGS: tags-recursive $(HEADERS) $(SOURCES) config.h.in $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	if ($(ETAGS) --etags-include --version) >/dev/null 2>&1; then \
	  include_option=--etags-include; \
	  empty_fix=.; \
	else \
	  include_option=--include; \
	  empty_fix=; \
	fi; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    test ! -f $$subdir/TAGS || \
	      tags="$$tags $$include_option=$$here/$$subdir/TAGS"; \
	  fi; \
	done; \
	list='$(SOURCES) $(HEADERS) config.h.in $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonempty = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	if test -z "$(ETAGS_ARGS)$$tags$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	    $$tags $$unique; \
	fi
ctags: CTAGS
CTAGS: ctags-recursive $(HEADERS) $(SOURCES) config.h.in $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	list='$(SOURCES) $(HEADERS) config.h.in $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonempty = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	test -z "$(CTAGS_ARGS)$$tags$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$tags $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && cd $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) $$here

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags

distdir: $(DISTFILES)
	$(am__remove_distdir)
	test -d $(distdir) || mkdir $(distdir)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -pR $(srcdir)/$$file $(distdir)$$dir || exit 1; \
	    fi; \
	    cp -pR $$d/$$file $(distdir)$$dir || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
	list='$(DIST_SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    test -d "$(distdir)/$$subdir" \
	    || $(MKDIR_P) "$(distdir)/$$subdir" \
	    || exit 1; \
	    distdir=`$(am__cd) $(distdir) && pwd`; \
	    top_distdir=`$(am__cd) $(top_distdir) && pwd`; \
	    (cd $$subdir && \
	      $(MAKE) $(AM_MAKEFLAGS) \
	        top_distdir="$$top_distdir" \
	        distdir="$$distdir/$$subdir" \
		am__remove_distdir=: \
		am__skip_length_check=: \
	        distdir) \
	      || exit 1; \
	  fi; \
	done
	-find $(distdir) -type d ! -perm -777 -exec chmod a+rwx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r $(distdir)
dist-gzip: distdir
	tardir=$(distdir) && $(am__tar) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

dist-bzip2: distdir
	tardir=$(distdir) && $(am__tar) | bzip2 -9 -c >$(distdir).tar.bz2
	$(am__remove_distdir)

dist-lzma: distdir
	tardir=$(distdir) && $(am__tar) | lzma -9 -c >$(distdir).tar.lzma
	$(am__remove_distdir)

dist-tarZ: distdir
	tardir=$(distdir) && $(am__tar) | compress -c >$(distdir).tar.Z
	$(am__remove_distdir)

dist-shar: distdir
	shar $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).shar.gz
	$(am__remove_distdir)

dist-zip: distdir
	-rm -f $(distdir).zip
	zip -rq $(distdir).zip $(distdir)
	$(am__remove_distdir)

dist dist-all: distdir
	tardir=$(distdir) && $(am__tar) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	case '$(DIST_ARCHIVES)' in \
	*.tar.gz*) \
	  GZIP=$(GZIP_ENV) gunzip -c $(distdir).tar.gz | $(am__untar) ;;\
	*.tar.bz2*) \
	  bunzip2 -c $(distdir).tar.bz2 | $(am__untar) ;;\
	*.tar.lzma*) \
	  unlzma -c $(distdir).tar.lzma | $(am__untar) ;;\
	*.tar.Z*) \
	  uncompress -c $(distdir).tar.Z | $(am__untar) ;;\
	*.shar.gz*) \
	  GZIP=$(GZIP_ENV) gunzip -c $(distdir).shar.gz | unshar ;;\
	*.zip*) \
	  unzip $(distdir).zip ;;\
	esac
	chmod -R a-w $(distdir); chmod a+w $(distdir)
	mkdir $(distdir)/_build
	mkdir $(distdir)/_inst
	chmod a-w $(distdir)
	dc_install_base=`$(am__cd) $(distdir)/_inst && pwd | sed -e 's,^[^:\\/]:[\\/],/,'` \
	  && dc_destdir="$${TMPDIR-/tmp}/am-dc-$$$$/" \
	  && cd $(distdir)/_build \
	  && ../configure --srcdir=.. --prefix="$$dc_install_base" \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && $(MAKE) $(AM_MAKEFLAGS) distuninstallcheck_dir="$$dc_install_base" \
	        distuninstallcheck \
	  && chmod -R a-w "$$dc_install_base" \
	  && ({ \
	       (cd ../.. && umask 077 && mkdir "$$dc_destdir") \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" install \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" uninstall \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" \
	            distuninstallcheck_dir="$$dc_destdir" distuninstallcheck; \
	      } || { rm -rf "$$dc_destdir"; exit 1; }) \
	  && rm -rf "$$dc_destdir" \
	  && $(MAKE) $(AM_MAKEFLAGS) dist \
	  && rm -rf $(DIST_ARCHIVES) \
	  && $(MAKE) $(AM_MAKEFLAGS) distcleancheck
	$(am__remove_distdir)
	@(echo "$(distdir) archives ready for distribution: "; \
	  list='$(DIST_ARCHIVES)'; for i in $$list; do echo $$i; done) | \
	  sed -e 1h -e 1s/./=/g -e 1p -e 1x -e '$$p' -e '$$x'
distuninstallcheck:
	@cd $(distuninstallcheck_dir) \
	&& test `$(distuninstallcheck_listfiles) | wc -l` -le 1 \
	   || { echo "ERROR: files left after uninstall:" ; \
	        if test -n "$(DESTDIR)"; then \
	          echo "  (check DESTDIR support)"; \
	        fi ; \
	        $(distuninstallcheck_listfiles) ; \
	        exit 1; } >&2
distcleancheck: distclean
	@if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	@test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left in build directory after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
	$(MAKE) $(AM_MAKEFLAGS) $(check_PROGRAMS)
check: check-recursive
all-am: Makefile $(PROGRAMS) $(DATA) config.h
installdirs: installdirs-recursive
installdirs-am:
	for dir in "$(DESTDIR)$(bindir)" "$(DESTDIR)$(desktopdir)" "$(DESTDIR)$(icondir)"; do \
	  test -z "$$dir" || $(MKDIR_P) "$$dir"; \
	done
install: install-recursive
install-exec: install-exec-recursive
install-data: install-data-recursive
uninstall: uninstall-recursive

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-recursive
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-recursive

clean-am: clean-binPROGRAMS clean-checkPROGRAMS clean-generic \
	clean-libtool mostlyclean-am

distclean: distclean-recursive
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
distclean-am: clean-am distclean-compile distclean-generic \
	distclean-hdr distclean-libtool distclean-tags

dvi: dvi-recursive

dvi-am:

html: html-recursive

info: info-recursive

info-am:

install-data-am: install-desktopDATA install-iconDATA

install-dvi: install-dvi-recursive

install-exec-am: install-binPROGRAMS

install-html: install-html-recursive

install-info: install-info-recursive

install-man:

install-pdf: install-pdf-recursive

install-ps: install-ps-recursive

installcheck-am:

maintainer-clean: maintainer-clean-recursive
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf $(top_srcdir)/autom4te.cache
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-recursive

mostlyclean-am: mostlyclean-compile mostlyclean-generic \
	mostlyclean-libtool

pdf: pdf-recursive

pdf-am:

ps: ps-recursive

ps-am:

uninstall-am: uninstall-binPROGRAMS uninstall-desktopDATA \
	uninstall-iconDATA

.MAKE: $(RECURSIVE_CLEAN_TARGETS) $(RECURSIVE_TARGETS) install-am \
	install-strip

.PHONY: $(RECURSIVE_CLEAN_TARGETS) $(RECURSIVE_TARGETS) CTAGS GTAGS \
	all all-am am--refresh check check-am clean clean-binPROGRAMS \
	clean-checkPROGRAMS clean-generic clean-libtool ctags \
	ctags-recursive dist dist-all dist-bzip2 dist-gzip dist-lzma \
	dist-shar dist-tarZ dist-zip distcheck distclean \
	distclean-compile distclean-generic distclean-hdr \
	distclean-libtool distclean-tags distcleancheck distdir \
	distuninstallcheck dvi dvi-am html html-am info info-am \
	install install-am install-binPROGRAMS install-data \
	install-data-am install-desktopDATA install-dvi install-dvi-am \
	install-exec install-exec-am install-html install-html-am \
	install-iconDATA install-info install-info-am install-man \
	install-pdf install-pdf-am install-ps install-ps-am \
	install-strip installcheck installcheck-am installdirs \
	installdirs-am maintainer-clean maintainer-clean-generic \
	mostlyclean mostlyclean-compile mostlyclean-generic \
	mostlyclean-libtool pdf pdf-am ps ps-am tags tags-recursive \
	uninstall uninstall-am uninstall-binPROGRAMS \
	uninstall-desktopDATA uninstall-iconDATA


imagesource/libimagesource.la:
	cd imagesource
	$(MAKE) libimagesource.la

support/libsupport.la:
	cd support
	$(MAKE) libsupport.la

profilemanager/libprofilemanager.la:
	cd profilemanager
	$(MAKE) libprofilemanager.la

stpui_widgets/libstpui_widgets.la:
	cd stpui_widgets
	$(MAKE) libstpui_widgets.la

stp_support/libstp_support.la:
	cd stp_support
	$(MAKE) libstp_support.la

pixbufthumbnail/libpixbufthumbnail.la:
	cd pixbufthumbnail
	$(MAKE) libpixbufthumbnail.la

effects/libppeffects.la:
	cd effects
	$(MAKE)	libppeffects.la

splashscreen/libsplashscreen.la:
	cd splashscreen
	$(MAKE) libsplashscreen.la
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
