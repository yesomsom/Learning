fun main() {
    fun sum(no: Int): Int {
        var sum = 0
        for (i in 1..no) {
            sum += i
        }
        return sum
    }
    val name: String = "kkang"
    println("name : $name, sum : ${sum(10)}, plus : ${10+20}")
    //name : kkang, sum : 55, plus : 30

    val a = 1
    val str1 = "a = $a"
    val str2 = "a = ${a + 2}"
    println("str1: \"$str1\", str2: \"$str2\"")
    //name : kkang, sum : 55, plus : 30

    val s1 = "a is $a"
    println(s1)
    //a is 1
}
