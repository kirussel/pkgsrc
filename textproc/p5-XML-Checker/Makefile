# $NetBSD: Makefile,v 1.25 2014/05/29 23:37:45 wiz Exp $

DISTNAME=	XML-Checker-0.13
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	11
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/XML-Checker/
COMMENT=	Perl module for validating XML
LICENSE=	${PERL5_LICENSE}

CONFLICTS+=	p5-libxml-enno-[0-9]*

DEPENDS+=	p5-XML-DOM-[0-9]*:../../textproc/p5-XML-DOM

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/XML/Checker/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
