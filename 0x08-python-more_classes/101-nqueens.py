#!/usr/bin/env python3
"""
N-Queens backtracking program to print the coordinates of N queens
on an NxN grid such that they are all in non-attacking positions
"""

from sys import argv

def is_valid(board, row, col):
    """
    Check if it is valid to place a queen at the given position (row, col)
    on the board.
    """
    # Check if there is a queen in the same column
    for i in range(row):
        if board[i] == col:
            return False

    # Check if there is a queen in the upper-left diagonal
    i, j = row - 1, col - 1
    while i >= 0 and j >= 0:
        if board[i] == j:
            return False
        i -= 1
        j -= 1

    # Check if there is a queen in the upper-right diagonal
    i, j = row - 1, col + 1
    while i >= 0 and j < N:
        if board[i] == j:
            return False
        i -= 1
        j += 1

    return True

def solve_nqueens(board, row):
    """
    Recursive function to solve the N-Queens problem using backtracking.
    """
    if row == N:
        # All queens are placed, print the solution
        print(board)
        return

    for col in range(N):
        if is_valid(board, row, col):
            # Place the queen at (row, col)
            board[row] = col
            solve_nqueens(board, row + 1)
            # Backtrack and try the next column
            board[row] = -1

if __name__ == "__main__":
    if len(argv) != 2:
        print("Usage: nqueens N")
        exit(1)
    if not argv[1].isdigit():
        print("N must be a positive integer")
        exit(1)
    N = int(argv[1])
    if N < 4:
        print("N must be at least 4")
        exit(1)

    # Initialize the board with -1 to represent empty cells
    board = [-1] * N

    # Start solving the N-Queens problem
    solve_nqueens(board, 0)
