# $NetBSD: buildlink3.mk,v 1.3 2014/08/29 14:08:40 szptvlfn Exp $

BUILDLINK_TREE+=	hs-transformers-base

.if !defined(HS_TRANSFORMERS_BASE_BUILDLINK3_MK)
HS_TRANSFORMERS_BASE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-transformers-base+=	hs-transformers-base>=0.4.3
BUILDLINK_ABI_DEPENDS.hs-transformers-base+=	hs-transformers-base>=0.4.3
BUILDLINK_PKGSRCDIR.hs-transformers-base?=	../../devel/hs-transformers-base

.include "../../devel/hs-transformers/buildlink3.mk"
.include "../../devel/hs-stm/buildlink3.mk"
.endif	# HS_TRANSFORMERS_BASE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-transformers-base
