def getMatrix(row, col, matrixNo):
    matrix = []
    print(f"\nEnter element for matrix_{matrixNo}: ")
    for i in range(row):
        row = []
        for j in range(col):
            element = int(input())
            row.append(element)
        matrix.append(row)
    return matrix

def addMatrices(matrix_1, matrix_2, row, col):
    result = []
    for i in range(row):
        row = []
        for j in range(col):
            row.append(matrix_1[i][j] + matrix_2[i][j])
        result.append(row)
    return result

def main():
    row = int(input("Enter no. of rows: "))
    col = int(input("Enter no. of columns: "))
    
    matrix_1 = getMatrix(row, col, 1)
    matrix_2 = getMatrix(row, col, 2)
    
    result = addMatrices(matrix_1, matrix_2, row, col)
    
    print("\nThe resultant matrix after addition is: ")
    for row in result:
        print(row)
        
main()