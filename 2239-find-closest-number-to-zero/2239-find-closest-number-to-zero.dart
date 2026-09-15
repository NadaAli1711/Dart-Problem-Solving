class Solution {
  int findClosestNumber(List<int> nums) {
    int closest = nums[0];
    for(int i = 1 ; i < nums.length ; i++){
        if(closest.abs() > nums[i].abs()){
            closest = nums[i];
        }else if(closest.abs() == nums[i].abs() && closest < nums[i]){
            closest = nums[i];
        }
    }
    return closest;
    
  }
}