def getMatrix(row, col, matrixNo):
    matrix = []
    print(f"\nEnter elements for matrix_{matrixNo}: ")
    for i in range(row):
        row = []
        for j in range(col):
            element = int(input())
            row.append(element)
        matrix.append(row)
    return matrix

def multMatrices(matrix_1, matrix_2, row, col, common):
    result = [[0 for _ in range(col)] for _ in range(row)]

    for i in range(row):
        for j in range(col):
            for k in range(common):
                result[i][j] += matrix_1[i][k] * matrix_2[k][j]
    return result

def main():
    row1 = int(input("Enter no. of rows for matrix_1: "))
    col1 = int(input("Enter no. of columns for matrix_1: "))
    
    row2 = int(input("\nEnter no. of rows for matrix_2: "))
    col2 = int(input("Enter no. of columns for matrix_2: "))
    
    if col1 != row2:
        print("\nThe two matrices cannot be multiplied")
    
    matrix_1 = getMatrix(row1, col1, 1)
    matrix_2 = getMatrix(row2, col2, 2)
    
    result = multMatrices(matrix_1, matrix_2, row1, col2, col1)
    
    print("\nThe resultant matrix after multiplication is")
    for row in result:
        print(row)
        
main()