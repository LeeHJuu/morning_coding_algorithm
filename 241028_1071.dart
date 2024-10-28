void main(List<String> args) {
  String gcdOfStrings(String str1, String str2) {
    if(str1 + str2 == str2 + str1){
        int gcd = 0;

        int a = str1.length;
        int b = str2.length;

        if(a>b){
            for(int i = b; i > 0; i--){
                if(a % i == 0){
                    gcd = (a / i).toInt();
                    break;
                }
            }
        }
        if(a<b){
            for(int i = a; i > 0; i--){
                if(b % i == 0){
                    gcd = (b / i).toInt();
                    break;
                }
            }
        }
        

        return str1.substring(0, gcd);
    } else {
        return '';
    }
  }
}