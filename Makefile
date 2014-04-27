#! @file Makefile
#
# Copyright (c) 2014 Edward Lam
#
# All rights reserved. This software is distributed under the
# Mozilla Public License, v. 2.0 ( http://www.mozilla.org/MPL/2.0/ ).
#
# Redistributions of source code must retain the above copyright
# and license notice and the following restrictions and disclaimer.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

.ONESHELL:
.PHONY: all docs style

DOXYGEN := doxygen
ASTYLE := astyle

all:
	@echo This makefile is used only to automate some common tasks.
	@echo Current available targets are:
	@echo - clean: clean generated files
	@echo - docs: make doxygen documentation
	@echo - style: reformat source code using astyle

clean:
	rm -rf *~ */*~ examples/*.xll examples/*.suo examples/Debug examples/Release
docs:
	rm -rf ../xlkit-html/docs
	$(DOXYGEN) docs/doxygen.cfg

style:
	$(ASTYLE) --options=astylerc xlkit/*
