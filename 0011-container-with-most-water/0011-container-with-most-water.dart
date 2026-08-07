class Solution {
  int maxArea(List<int> height) {
    int left = 0;
    int right = height.length - 1;
    int maxArea = 0;
    while(left != right){
        int temp = min(height[left], height[right]) * (right - left);
        maxArea = max(maxArea,temp);
        if(height[left] < height[right]){
            left++;
        }else right--;
    }
    return maxArea;    
  }

}