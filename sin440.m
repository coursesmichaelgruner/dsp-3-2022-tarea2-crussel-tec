## Copyright (C) 2022 Chris Russell
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} draw (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Chris Russell <Chris Russell@APEIRON>
## Created: 2022-09-29

function retval = sin440 (N)
  fs=N*440;
  t=0:1/fs:1;
  y=sin(2*pi*440*t);

  stem(t(1:N),y(1:N));

  player=audioplayer(y, fs);
  play(player);
  while (isplaying(player))
    pause(1)
  endwhile

endfunction

