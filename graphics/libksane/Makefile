# $NetBSD: Makefile,v 1.25 2014/08/22 11:24:26 wiz Exp $

DISTNAME=	libksane-${_KDE_VERSION}
PKGREVISION=	4
CATEGORIES=	graphics
COMMENT=	SANE Library interface for KDE

.include "../../meta-pkgs/kde4/Makefile.kde4"

PKGCONFIG_OVERRIDE+=    libksane.pc.cmake

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/sane-backends/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
