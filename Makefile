#	@(#)Makefile	8.1 (Berkeley) 6/6/93
# $FreeBSD: src/usr.sbin/portmap/Makefile,v 1.7.2.1 2001/04/25 12:10:33 ru Exp $

PROG=	portmap
MAN8=	portmap.8
SRCS=	portmap.c from_local.c pmap_check.c
SUBDIR= pmap_set pmap_dump

CFLAGS+= -DHOSTS_ACCESS -mdynamic-no-pic
DPADD=	${LIBWRAP}
LDADD=	-lwrap

.include <bsd.prog.mk>
