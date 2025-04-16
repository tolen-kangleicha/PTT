x = 23
print(x)

def func():
    x = 24
    print(x)
    
func()

#value = input( "Enter a number: ")
#print( value )

a = True
b = False
print(a and b)
print(a or b)
print(not a)
print(not b)

a = 10
b = 4
print(a & b)
print(a | b)
print(~a)
print(~b)
print(a >> 2)
print(a << 2)
print(a ^ b)

b <<= a
print(b)

for i in range(2, 10, 1):
    print(i)
    
count = 0
while(count < 10):
    print("tolen")
    count += 1
    
#a, b = input("enter two nos.: ").split()
#print("a = ", a)
#print("b = ", b)

print('tolen', end = " ")
print('sorokhaibam')

l = [2, 3, 5]
print(*l)

import sys
sys.stdout.write("tolen ")
sys.stdout.write("kangleicha")
