#
# Copyright 2016 Tom Deakin, University of Bristol
#
# This file is part of mega-stream.
#
# mega-stream is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# mega-stream is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with mega-stream.  If not, see <http://www.gnu.org/licenses/>.
#


CC = clang-10
CFLAGS = -std=c11 -O3

FTN = ifort
FFLAGS = -O3

OMP = -fopenmp

default: mega-stream

mega-stream: mega-stream.c
	$(CC) $(CFLAGS) $(OPTIONS) $(OMP) $^ -o $@

mega-stream-ftn: mega-stream.f90
	$(FTN) $(FFLAGS) $(OPTIONS) -align array64byte $(OMP) $^ -o $@

.PHONY: clean

clean:
	rm -f mega-stream mega-stream-ftn

