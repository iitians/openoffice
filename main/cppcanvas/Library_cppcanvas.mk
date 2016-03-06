#*************************************************************************
#
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
# 
# Copyright 2000, 2011 Oracle and/or its affiliates.
#
# OpenOffice.org - a multi-platform office productivity suite
#
# This file is part of OpenOffice.org.
#
# OpenOffice.org is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License version 3
# only, as published by the Free Software Foundation.
#
# OpenOffice.org is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License version 3 for more details
# (a copy is included in the LICENSE file that accompanied this code).
#
# You should have received a copy of the GNU Lesser General Public License
# version 3 along with OpenOffice.org.  If not, see
# <http://www.openoffice.org/license.html>
# for a copy of the LGPLv3 License.
#
#*************************************************************************

$(eval $(call gb_Library_Library,cppcanvas))

$(eval $(call gb_Library_add_package_headers,cppcanvas,cppcanvas_inc))

$(eval $(call gb_Library_add_precompiled_header,cppcanvas,$(SRCDIR)/cppcanvas/inc/precompiled_cppcanvas))

$(eval $(call gb_Library_add_api,cppcanvas,\
	udkapi \
	offapi \
))

$(eval $(call gb_Library_set_include,cppcanvas,\
	-I$(SRCDIR)/cppcanvas/inc \
	-I$(SRCDIR)/cppcanvas/inc/pch \
	-I$(SRCDIR)/cppcanvas/source/inc \
	$$(INCLUDE) \
))

$(eval $(call gb_Library_set_defs,cppcanvas,\
	$$(DEFS) \
	-DCPPCANVAS_DLLIMPLEMENTATION \
))

$(eval $(call gb_Library_add_linked_libs,cppcanvas,\
	tl \
	cppu \
	sal \
	vcl \
	stl \
	comphelper \
	canvastools \
	cppuhelper \
	basegfx \
	i18nisolang1 \
    $(gb_STDLIBS) \
))

$(eval $(call gb_Library_add_exception_objects,cppcanvas,\
	cppcanvas/source/mtfrenderer/bitmapaction \
	cppcanvas/source/mtfrenderer/cachedprimitivebase \
	cppcanvas/source/mtfrenderer/implrenderer \
	cppcanvas/source/mtfrenderer/lineaction \
	cppcanvas/source/mtfrenderer/mtftools \
	cppcanvas/source/mtfrenderer/pointaction \
	cppcanvas/source/mtfrenderer/polypolyaction \
	cppcanvas/source/mtfrenderer/textaction \
	cppcanvas/source/mtfrenderer/transparencygroupaction \
	cppcanvas/source/tools/canvasgraphichelper \
	cppcanvas/source/tools/tools \
	cppcanvas/source/wrapper/basegfxfactory \
	cppcanvas/source/wrapper/implbitmap \
	cppcanvas/source/wrapper/implbitmapcanvas \
	cppcanvas/source/wrapper/implcanvas \
	cppcanvas/source/wrapper/implcolor \
	cppcanvas/source/wrapper/implcustomsprite \
	cppcanvas/source/wrapper/implfont \
	cppcanvas/source/wrapper/implpolypolygon \
	cppcanvas/source/wrapper/implsprite \
	cppcanvas/source/wrapper/implspritecanvas \
	cppcanvas/source/wrapper/impltext \
	cppcanvas/source/wrapper/vclfactory \
))

# vim: set noet sw=4 ts=4:
