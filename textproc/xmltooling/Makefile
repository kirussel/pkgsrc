# $NetBSD: Makefile,v 1.18 2014/08/13 10:57:38 adam Exp $

DISTNAME=	xmltooling-1.5.3
PKGREVISION=	6
CATEGORIES=	textproc
MASTER_SITES=	http://www.shibboleth.net/downloads/c++-opensaml/${PKGVERSION_NOREV}/

MAINTAINER=	pettai@NetBSD.org
HOMEPAGE=	http://shibboleth.net/
COMMENT=	High level interface for XML processing library
LICENSE=	apache-2.0

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-doxygen-doc

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/log4shib/buildlink3.mk"
.include "../../security/xml-security-c/buildlink3.mk"
.include "../../textproc/xerces-c/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
