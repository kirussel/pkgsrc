# $NetBSD: Makefile,v 1.9 2014/08/08 21:28:48 wiz Exp $

USE_LANGUAGES=	c c++

.include "Makefile.common"

COMMENT+=	Bad plugins

.include "../../devel/glib2/schemas.mk"
# bzip2 is likely present anyway, make it default
.include "../../archivers/bzip2/buildlink3.mk"
# same for OpenSSL
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
