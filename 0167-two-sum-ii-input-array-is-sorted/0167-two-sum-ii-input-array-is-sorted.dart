class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    Map<int,int> map = {};
    for(int i = 0 ; i < numbers.length ; i ++){
        if(map.containsKey(target - numbers[i])){
            return [map[target - numbers[i]]!, i + 1];
        }else{
            map[numbers[i]] = i + 1;
        }
    }
    return [];
  }
}