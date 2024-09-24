/*
 * Copyright 2024 Canardoux.
 *
 * This file is part of the τ project.
 *
 * τ is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 (GPL3), as published by
 * the Free Software Foundation.
 *
 * τ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with τ.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'dart:js_interop';

class Interop
{
        static final Interop _singleton = Interop._internal();
        
        factory Interop() {
                return _singleton;
        }
  
        Interop._internal();


        JSArray<JSNumber> jsArrayNumber(List<num> listNum)
        {
                var r = JSArray<JSNumber>();
                for (var v in listNum) {
                        r.add(v.toJS);
                }
                return r;
        }
        List<num> listNum(JSArray<JSNumber> j)
        {
                List<num> r = [];
                List<JSNumber> l = j.toDart;
                for (int i = 0; i < l.length; ++i)
                {
                        r.add(l[i].toDartDouble);
                }
                return r;
        }
}