void main(List<String> args) {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    // 심을 수 있는 갯수
    int count = 0;
    // 결과값 기본 false;
    bool answer = false;

    // for문 돌리며 심을 수 있는 갯수 체크. n보다 크면 종료.

    for (var i = 0; i < flowerbed.length; i++) {
      if (flowerbed[i] == 1) {
        continue;
      }

      if (flowerbed[i] == 0 &&
          flowerbed[i + 1] == 0 &&
          (flowerbed[i + 2] == 0 || flowerbed.length == i + 2)) {
        flowerbed[i + 1] = 1;
        count += 1;
      }

      if (count >= n) {
        answer = true;
        break;
      }
    }

    return answer;
  }
}
