(*
 * BatFilename - Extended Filename module
 * Copyright (C) 1996 Xavier Leroy
 *               2008 David Teller, LIFO, Universite d'Orleans
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version,
 * with the special exception on linking described in file LICENSE.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *)

include Filename

let split_extension s =
  remove_extension s, extension s

(*$= split_extension & ~printer:(IO.to_string (Tuple2.print String.print String.print))
  ("/foo/bar", ".baz") (split_extension "/foo/bar.baz")
  ("/foo/bar", "")    (split_extension "/foo/bar")
  ("/foo/bar", ".")   (split_extension "/foo/bar.")
  ("/foo/.rc", "")    (split_extension "/foo/.rc")
  ("", "")            (split_extension "")
*)
