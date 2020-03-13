// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';

void main(){

  test("The value of sum & difference should change", (){
    final sumAndDifference = SumAndDifference();

    sumAndDifference.addition(3, 2);
    sumAndDifference.subtraction(3, 2);

    expect(sumAndDifference.sum,"Did you know?, The sum is: 5");
    expect(sumAndDifference.difference,"Did you know?, The difference is: 1");
  });
}

class SumAndDifference{
  String sum = "Did you know?, The sum is: ";
  String difference = "Did you know?, The difference is: ";

  addition(int a, int b){
    int value = a + b;
    sum = sum + value.toString();
  }

  subtraction(int a, int b){
    int value = a - b;
    difference = difference + value.toString();
  }
}
