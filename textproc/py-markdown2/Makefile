# $NetBSD: Makefile,v 1.10 2014/09/28 03:05:47 obache Exp $

DISTNAME=	markdown2-2.2.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	textproc
MASTER_SITES=	http://pypi.python.org/packages/source/m/markdown2/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/trentm/python-markdown2
COMMENT=	Fast and complete Python implementation of Markdown
LICENSE=	mit

USE_LANGUAGES=	# none

PYTHON_SELF_CONFLICT=		yes

REPLACE_PYTHON=		lib/markdown2.py

do-test:
	${RUN}cd ${WRKSRC}/test; ${SETENV} ${TEST_ENV} ${PYTHONBIN} test.py

.include "../../lang/python/application.mk"
.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
