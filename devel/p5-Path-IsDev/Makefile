# $NetBSD: Makefile,v 1.1 2014/09/12 12:52:12 wen Exp $

DISTNAME=	Path-IsDev-1.001002
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/K/KE/KENTNL/}

MAINTAINER=	pkgsrc@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Path-IsDev/
COMMENT=	Perl extension to determine if path resembles dev source tree
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/Path/IsDev/.packlist

DEPENDS+=	p5-Path-Tiny>=0.004:../../filesystems/p5-Path-Tiny
DEPENDS+=	p5-Class-Tiny>=0.010:../../devel/p5-Class-Tiny
DEPENDS+=	p5-File-HomeDir>0:../../devel/p5-File-HomeDir
DEPENDS+=	p5-Module-Runtime>0:../../devel/p5-Module-Runtime
DEPENDS+=	p5-Role-Tiny>0:../../devel/p5-Role-Tiny
DEPENDS+=	p5-Sub-Exporter>0:../../devel/p5-Sub-Exporter

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
