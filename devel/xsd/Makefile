# $NetBSD: Makefile,v 1.19 2014/08/13 10:57:35 adam Exp $

DISTNAME=		xsd-3.2.0+dep
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		xsd-3.2.0
PKGREVISION=		10
CATEGORIES=		devel textproc
MASTER_SITES=		http://www.codesynthesis.com/download/xsd/3.2/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.codesynthesis.com/products/xsd/
COMMENT=		W3C XML Schema to C++ data binding compiler
LICENSE=		gnu-gpl-v2

USE_TOOLS+=		bash gmake gm4
USE_LANGUAGES+=		c++

SUBST_CLASSES+=		rpath
SUBST_STAGE.rpath=	post-configure
SUBST_FILES.rpath=	*/*/*/configuration-dynamic.make
SUBST_SED.rpath=	-e 's|cxx_rpath[ ]*:=[ ]*n|cxx_rpath := y|g'

do-build:
	# XXX: rpath needs a better hack. TODO: add optimization
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} LDFLAGS="-Wl,-rpath,${PREFIX}/lib" ./build.sh

do-install:
	cd ${WRKSRC} && MAKEFLAGS="install_prefix=${DESTDIR}${PREFIX} \
	install_man_dir=${DESTDIR}${PREFIX}/man" ./build.sh install

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../textproc/xerces-c/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
