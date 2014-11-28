package fp01

object Lab2Sheet {
  val lab2 = Lab2Template                         //> lab2  : fp01.Lab2Template.type = fp01.Lab2Template$@a750bb9
  lab2.toDigits(1234l)                            //> res0: List[Long] = List(1, 2, 3, 4)
  lab2.toDigitsRev(1234l)                         //> res1: List[Long] = List(4, 3, 2, 1)
  1234l.toString.map(_.asDigit).toList            //> res2: List[Int] = List(1, 2, 3, 4)
  lab2.eval(lab2.toDigits(1234l))                 //> res3: Long = 1234
  lab2.evalRev(lab2.toDigitsRev(1234l))           //> res4: Long = 1234
	lab2.doubleSecond(List(8, 7, 6, 5))       //> res5: List[Long] = List(8, 14, 6, 10)
	val list = List(8,7,6,5).zipWithIndex     //> list  : List[(Int, Int)] = List((8,0), (7,1), (6,2), (5,3))
  list.map({case(x,y) => if((y+1)%2 == 0) x*2 else x })
                                                  //> res6: List[Int] = List(8, 14, 6, 10)
	list(0)._2                                //> res7: Int = 0
	lab2.doubleSecond(List(8, 7, 6, 5))       //> res8: List[Long] = List(8, 14, 6, 10)
	lab2.sumDigits(List(8, 14, 6, 10))        //> res9: Long = 20
	lab2.sumDigits(List(3, 9, 4, 15, 8))      //> res10: Long = 30
	lab2.doubleSecond(List(8,7,6,5)).map(lab2.toDigits(_).sum)
                                                  //> res11: List[Long] = List(8, 5, 6, 1)
	lab2.isValid(4012888888881881l)           //> res12: Boolean = true


}