# $NetBSD: Makefile,v 1.18 2014/09/07 12:15:01 wiz Exp $

DISTNAME=		v0.6.10
PKGNAME=		par2-${DISTNAME:S/v//}
CATEGORIES=		misc
MASTER_SITES=		https://github.com/BlackIkeEagle/par2cmdline/archive/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://github.com/BlackIkeEagle/par2cmdline
COMMENT=		PAR 2.0 compatible file verification and repair tool
LICENSE=		gnu-gpl-v2

DIST_SUBDIR=		par2
WRKSRC=			${WRKDIR}/par2cmdline-${DISTNAME:S/v//}

USE_LANGUAGES=		c c++
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		autoconf automake autoreconf
GNU_CONFIGURE=		yes

pre-configure:
	cd ${WRKSRC} && autoreconf -fiv

.include "../../mk/bsd.pkg.mk"
