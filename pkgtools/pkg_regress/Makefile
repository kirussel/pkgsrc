# $NetBSD: Makefile,v 1.12 2014/03/03 03:30:54 obache Exp $

PKGNAME=	pkg_regress-0.2
CATEGORIES=	pkgtools

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Run pkgsrc infrastructure regression test suite

PKG_INSTALLATION_TYPES=	overwrite pkgviews

WRKSRC=		${WRKDIR}
USE_LANGUAGES=	# empty

INSTALLATION_DIRS=	sbin

.include "../../mk/bsd.prefs.mk"

do-build:
	${SED} -e 's#@MAKE@#${MAKE}#g' \
	  -e 's#@PKGSRCDIR@#${PKGSRCDIR}#g' \
	  -e 's#@SH@#${SH}#g' \
	  -e 's#@EGREP@#${EGREP}#g' \
	  ${FILESDIR}/pkg_regress.sh >${WRKSRC}/pkg_regress.sh

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pkg_regress.sh \
		${DESTDIR}${PREFIX}/sbin/pkg_regress

.include "../../mk/bsd.pkg.mk"
