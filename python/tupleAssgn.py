# Function to append an item to the end of a tuple
def appendTuple(T, x):
    L = list(T)
    L.append(x)
    return tuple(L)

# Function to insert an item at the ith index of a tuple
def insertTuple(T, i, x):
    L = list(T)  
    L.insert(i, x)
    return tuple(L)

# Function to modify the item at the ith index of a tuple
def modifyTuple(T, i, x):
    L = list(T)  
    L[i] = x  
    return tuple(L)

# Function to pop the last item from a tuple and return the last item and modified tuple
def popTuple(T):
    L = list(T)  
    last_item = L.pop()
    return last_item, tuple(L)

# Main functions
if __name__ == "__main__":
    T = ('Rose', 15)
    print("Original Tuple:", T)
    
    T = appendTuple(T, 'NewItem')
    print("After appendTuple:", T)

    T = insertTuple(T, 1, 'InsertedItem')
    print("After insertTuple:", T)

    T = modifyTuple(T, 2, 'ModifiedItem')
    print("After modifyTuple:", T)

    last_item, T = popTuple(T)
    print("Last item:", last_item)
    print("After popTuple:", T)
