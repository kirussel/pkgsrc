# $NetBSD: Makefile,v 1.8 2014/05/29 23:38:01 wiz Exp $

DISTNAME=	CGI-Session-Serialize-yaml-4.26
EXTRACT_SUFX=	.tgz
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/CGI-Session-Serialize-yaml/
COMMENT=	Serializer for CGI::Session
LICENSE=	artistic

DEPENDS+=	p5-CGI-Session>=4.30:../../www/p5-CGI-Session

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/CGI/Session/Serialize/yaml/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
