# $NetBSD: Makefile,v 1.2 2014/05/29 23:36:06 wiz Exp $
#

DISTNAME=	MooseX-Attribute-Chained-1.0.1
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MooseX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MooseX-Attribute-Chained/
COMMENT=	Attribute that returns the instance to allow for chaining
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		# empty
PERL5_MODULE_TYPE=	Module::Build

PERL5_PACKLIST=		auto/MooseX/Attribute/Chained/.packlist

DEPENDS+=		p5-Moose>=0:../../devel/p5-Moose
DEPENDS+=		p5-Try-Tiny>=0:../../devel/p5-Try-Tiny

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
