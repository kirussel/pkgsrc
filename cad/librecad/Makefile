# $NetBSD: Makefile,v 1.24 2014/08/13 10:57:33 adam Exp $
#

DISTNAME=	LibreCAD-LibreCAD-v1.0.2-0-ga6826ad
PKGNAME=	librecad-1.0.2
PKGREVISION=	16
CATEGORIES=	cad
MASTER_SITES=	-http://nodeload.github.com/LibreCAD/LibreCAD/legacy.tar.gz/v1.0.2

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://librecad.org/
COMMENT=	Free Open Source personal CAD application
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/LibreCAD-LibreCAD-a5c34b2
USE_LANGUAGES=	c c++
USE_TOOLS+=	bash pax

REPLACE_BASH=	scripts/postprocess-unix.sh

SUBST_CLASSES+=		qtdir
SUBST_STAGE.qtdir=	pre-configure
SUBST_MESSAGE.qtdir=	Set qt4/bin
SUBST_FILES.qtdir+=	scripts/postprocess-unix.sh
SUBST_VARS.qtdir+=	QTDIR

SUBST_CLASSES+=		prefix
SUBST_STAGE.prefix=	pre-configure
SUBST_MESSAGE.prefix=	Fix hardcoded path
SUBST_FILES.prefix+=	src/lib/engine/rs_system.cpp
SUBST_SED.prefix+=	-e 's,/usr/share/,${PREFIX}/share/,g'

LIBRECADDIR=		share/librecad

INSTALLATION_DIRS+=	bin ${LIBRECADDIR}

do-configure:
	 cd ${WRKSRC} && QTDIR=${QTDIR} ${QTDIR}/bin/qmake librecad.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unix/librecad \
		${DESTDIR}${PREFIX}/bin
	cd ${WRKSRC}/unix/resources && \
		pax -rw -pmp fonts library patterns qm \
		${DESTDIR}${PREFIX}/${LIBRECADDIR}

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../math/muparser/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
BUILDLINK_DEPMETHOD.qt4-tools=	full
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
