# $NetBSD: Makefile,v 1.24 2014/06/18 09:28:17 wiz Exp $

DISTNAME=	pycups-${VERSION}
PKGNAME=	${PYPKGPREFIX}-cups-${VERSION}
VERSION=	1.9.66
PKGREVISION=	2
CATEGORIES=	print python
MASTER_SITES=	http://cyberelk.net/tim/data/pycups/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	markd@NetBSD.org
HOMEPAGE=	http://cyberelk.net/tim/software/pycups/
COMMENT=	Python bindings for the CUPS API
LICENSE=	gnu-gpl-v2

CFLAGS+=	-DVERSION=\"${VERSION}\"

SUBST_CLASSES+=		paths
SUBST_MESSAGE.paths=	Fix cups paths.
SUBST_FILES.paths=	cupsconnection.c
SUBST_SED.paths=	-e 's:"/usr/share/cups":"${BUILDLINK_PREFIX.cups}/share/cups/", "/usr/share/cups":'
SUBST_STAGE.paths=	post-patch

.include "../../lang/python/distutils.mk"
.include "../../print/cups15/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
