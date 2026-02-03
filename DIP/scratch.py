import pyeda

from pyeda.boolalg.expr import expr
from pyeda.boolalg.minimization import espresso_tts, espresso_exprs #function is used for minimizing

# incompletely specified Boolean functions  , while espresso_exprs is used for minimizing completely specified Boolean functions.
bool_expr = expr('a & b | c & ~d')
minimized_expr = espresso_exprs(bool_expr)
print(minimized_expr)

#token
#function that takes a string (the Boolean expression) as input and returns a list of tokens
def tokenize(expr):
    tokens = []
    #i to iterate over the characters of the input exp
    index = 0
    while index < len(expr):
        char = expr[index]
        if char.isspace(): # to check if the code is a whitespace char
            index += 1
            continue
        elif char.isalnum() or char == '_': #to check if the char is alphanumeric or an underscore
            start = index
            while index < len(expr) and (expr[index].isalnum() or expr[index] == '_'):#nested loop that will only stop if the
                #reaches the end of expression or a non-alphanumeric char is encountered
                index += 1
            tokens.append(expr[start:index])
        elif char in ['(', ')', 'AND', 'OR', 'NOT']:# to check if it is special char
            tokens.append(char)
            index += 1
        else:# if none of the above conditions are true then,
            raise ValueError(f"Invalid character: '{char}'")
    return tokens
#recursive descent parser function that takes the list of tokens as input and constructs an abstract syntax tree (AST) representing the Boolean expression
def parse(tokens):
    def parse_expr():
        left = parse_term() #assigns the result to the left variable from the input tokens
        while tokens and tokens[0] in ['AND', 'OR']:
            op = tokens.pop(0)
            right = parse_term() #assign to the right variable
            left = (op, left, right) #binary operation assigned to left variable
        return left
    #to parse a term from input token

    def parse_term():
        left = parse_factor()
        while tokens and tokens[0] == 'NOT':
            op = tokens.pop(0)
            left = (op, left)
        return left

    def parse_factor(): #to oarse a factor from the input tokens
        if not tokens:
            raise ValueError("Unexpected end of input")
        token = tokens.pop(0)
        if token == '(': #to check if the token is an opening parentheis
            expr = parse_expr()
            if not tokens or tokens.pop(0) != ')':
                raise ValueError(" closing parenthesis is missing")
            return expr
        elif token.isalnum() or token == '_':
            return token
        elif token in ['True', 'False']: #checks if the token is boolean(a true or false)
            return token == 'True'
        else:
            raise ValueError(f"Invalid token: '{token}'")

    return parse_expr()
# a recursive descent parser approach to parse the input tokens into a Boolean expression.
# The parse_expr, parse_term, and parse_factor functions work together to parse the input tokens into a syntax

def minimize_expression(ast):
    """
    Minimizes the given Boolean expression AST using the  Espresso heuristic algorithm.
    """
    # Convert the AST to a suitable input format for the minimization algorithm
    expression = ...

    # Call the minimization algorithm
    minimized_expression = espresso_exprs(expression)

    # Convert the minimized expression back to an AST or any other desired format
    minimized_ast = ...

    return minimized_ast



#def minimized_expression(ast):
   # pass


def main():
    while True:
        try:
            expr = input("Enter a Boolean expression (or 'quit' to exit): ")
            if expr.lower() == 'quit':
                break
            tokens = tokenize(expr)
            ast = parse(tokens)
            minimized_ast = minimized_expression(ast)  # Implement minimize function
            print(f"Minimized expression: {repr(minimized_ast)}")
        except ValueError as e:
            print(f"Error: {e}")

if __name__ == '__main__':

    main()