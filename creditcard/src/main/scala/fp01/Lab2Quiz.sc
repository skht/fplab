package fp01

import fp01.Lab2Template._

object Lab2Quiz {
  println("Welcome to quiz")                      //> Welcome to quiz
  
  toDigits(12321)                                 //> res0: List[Long] = List(1, 2, 3, 2, 1)
  // !!! wrong implementaton!
  toDigits(-531)                                  //> res1: List[Long] = List(-3, 5, 3, 1)
  
  //toDigits(7.6)
  toDigits(0)                                     //> res2: List[Long] = List(0)
  //toDigits("123")
	toDigits(666)                             //> res3: List[Long] = List(6, 6, 6)
	
	
	toDigitsRev(12321)                        //> res4: List[Long] = List(1, 2, 3, 2, 1)
	// !!! wrong implementation
	toDigitsRev(-531)                         //> res5: List[Long] = List(1, 3, 5, -3)
	
	//toDigitsRev(7.6)
	toDigitsRev(0)                            //> res6: List[Long] = List(0)
	//toDigitsRev("123")
	toDigitsRev(666)                          //> res7: List[Long] = List(6, 6, 6)
	doubleSecond(List())                      //> res8: List[Long] = List()
	doubleSecond(List(5))                     //> res9: List[Long] = List(5)
	doubleSecond(List(2,5))                   //> res10: List[Long] = List(2, 10)
	//doubleSecond(List(1..))
	doubleSecond(List(1,0,1,0,1))             //> res11: List[Long] = List(1, 0, 1, 0, 1)
	sumDigits(List())                         //> res12: Long = 0
	sumDigits(List(-12,12))                   //> res13: Long = 3
	sumDigits(List(0,0,0))                    //> res14: Long = 0
	sumDigits(List(6,66,666))                 //> res15: Long = 36
	
	//isValid(-12786592316)
	//isValid(231753.65121)
	isValid(5256283618614517l)                //> res16: Boolean = true
	isValid(4556945538735694l)                //> res17: Boolean = false
  //isValid(0000000000000000l)
  
  numValid(creditcards)                           //> res18: Long = 94
}