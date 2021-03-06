// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class A {
  void f(Object x) {}
}

class B {
  void f(String x) {}
}

class C extends A implements B {
  // No type can be inferred for x since the two inherited interfaces specify
  // different types.
  void f(/*@compile-error=unspecified*/ x) {}
}

void main() {}
