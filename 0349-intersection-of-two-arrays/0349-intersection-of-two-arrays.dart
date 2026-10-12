class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    List<int> freq1 = List.filled(1001,0);
    List<int> freq2 = List.filled(1001,0);
    List<int> res = [];
    for(int i = 0 ; i < nums1.length ; i++){
        freq1[nums1[i]]++;
    }
    for(int i = 0 ; i < nums2.length ; i++){
        freq2[nums2[i]]++;
    }
    for(int i = 0 ; i < 1001 ; i++){
        if(freq1[i] > 0 && freq2[i] > 0){
            res.add(i);
        }
    }
    return res;
  }
}