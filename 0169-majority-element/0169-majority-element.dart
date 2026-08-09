class Solution {
  int majorityElement(List<int> nums) {
    Map<int , int> map = {};
    print(nums.length / 2);
    for(int i = 0; i < nums.length ; i++){
        map[nums[i]] = (map[nums[i]] ?? 0) + 1 ;
        print(map[nums[i]]);

        if(map[nums[i]]! > (nums.length ~/ 2)){
            return nums[i];

        }
    } 
    return - 1;

    
  }
}