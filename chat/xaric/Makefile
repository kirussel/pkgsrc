# $NetBSD: Makefile,v 1.22 2014/06/29 06:23:28 dholland Exp $
#

DISTNAME=	xaric-0.13.6
PKGREVISION=	1
CATEGORIES=	chat
MASTER_SITES=	http://xaric.org/software/xaric/releases/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://xaric.org/
COMMENT=	IRC client similar to BitchX and ircII

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	--enable-optimize

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
