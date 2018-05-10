//: Practice Hour #1 - deduplication
// Join us for the next Practice Hour at https://learnappmaking.com/live

import Foundation

/**
 * Iteration 1: this function loops over the items, finds them in the `uniques` array
 * by looping over it. When it's found a duplicate, it skips to the next item. When no
 * duplicate is found, the `continue` isn't reached, so the item is added to `uniques`.
 *
 * Complexity: O(n*n) or O(n^2) -- this is pretty bad, we'd fail our interview... ;-)
 */
func dedupe_1(items: [Int]) -> [Int]
{
    var uniques = [Int]()
    
    outer: for item in items
    {
        for unique_item in uniques
        {
            if item == unique_item {
                continue outer
            }
        }
        
        uniques += [item]
    }
    
    return uniques
}

/**
 * Iteration 2: This function loops over the items once, and then uses the `contains` function to check
 * if the `item` exists in the `uniques` array. If it doesn't, it's added to it, effectively adding only
 * uniques to the resulting array. Note that `contains()` will loop over `uniques` to find `item`, so
 * the complexity of this function is still O(n^2). The advantage of this function is that it's easier to read
 * and more descriptive: "for every item in items, add item to uniques if it's not contained in uniques."
 */
func dedupe_2(items: [Int]) -> [Int]
{
    var uniques = [Int]()
    
    for item in items
    {
        if !uniques.contains(item) {
            uniques += [item]
        }
    }
    
    return uniques
}

/**
 * Iteration 3: This function loops over items, but instead of using `contains()` to check if `item` exists
 * in `uniques`, it uses the key of the `uniques` dictionary. When `item` doesn't exist, it's `nil`, and the
 * item is added to `uniques`. We can directly access dictionary keys if they're known, and this operation
 * has complexity O(1) (= constant time), so the resulting complexity of this function is O(n) (= linear).
 */
func dedupe_3(items: [Int]) -> [Int]
{
    var uniques = [Int: Bool]()
    
    for item in items
    {
        if uniques[item] == nil {
            uniques[item] = true
        }
    }
    
    return Array(uniques.keys)
}


var numbers = [3, 4, 9, 55, 27, 55, 38, 4]

print(dedupe_1(items: numbers))
print(dedupe_2(items: numbers))
print(dedupe_3(items: numbers))
