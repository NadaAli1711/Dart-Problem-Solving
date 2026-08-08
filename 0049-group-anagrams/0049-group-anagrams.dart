class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String , List<String>> map = {};
    for(int i = 0 ; i < strs.length ; i++){
        List<String> letters = strs[i].split('');
        letters.sort();
        String sortedString = letters.join('');
        if(map.containsKey(sortedString)){
        map[sortedString]!.add(strs[i]);
        }else{
            map[sortedString] = [strs[i]];

        }

    }
    return map.values.toList();
  }
}