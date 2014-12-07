package fp01

object Lab4Template {

  def triangle(size:Int):Int = 
    size match {
    case 0 => 0
    case x => x + triangle(size-1)
    }
  
  def euclide(n:Int, m:Int):Int = 
    if(n == m) n
    else if(n > m) euclide(n-m,m)
    else euclide(n,m-n)
    
}