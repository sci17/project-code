import ply.lex as lex
import ply.yacc as yacc

tokens = ('VAR', 'AND', 'OR', 'NOT', 'BOOL', 'LPAREN', 'RPAREN')

t_AND   = r'\&'
t_OR   = r'\+'
t_NOT  = r'\!'
t_LPAREN  = r'\('
t_RPAREN  = r'\)'

t_ignore = r' '

def t_VAR(t):
    r'[a-zA-Z]'
    t.type = 'VAR'
    return t

def t_BOOL(t):
    r'\d'
    if t.value not in ('1', '0'):
        t_error(t)
    else:
        return t

def t_error(t):
    print("Illegal character(s) found.")
    t.lexer.skip(1)

lexer = lex.lex()

precedence = (
    ('left', 'OR'),
    ('left', 'AND'),
    ('left', 'NOT')
)

def p_calc(p):
    '''
    calc : expression
         | empty
    '''
    print(run(p[1]))

def p_expression_negate(p):
    '''
    expression : NOT VAR
               | NOT BOOL
               | NOT expression
    '''
    p[0] = (p[1], p[2])

def p_expression_operation(p):
    '''
    expression : expression AND expression
               | expression OR expression
               | LPAREN expression RPAREN
    '''
    if p[1] == '(':
        p[0] = p[2]
    else:
        p[0] = (p[2], p[1], p[3])

def p_expression_var_bool(p):
    '''
    expression : VAR
               | BOOL
    '''

    p[0] = p[1]



def p_error(p):
    print("Syntax error.")

def p_empty(p):
    '''
    empty :
    '''
    p[0] = None
    

parser = yacc.yacc()
        



def run(p):
    
    if type(p) != tuple:
        print(p)
        return p
    elif None in p:
        for i in p:
            if i not in (None, '!', '&', '+'):
                return run(i)
    else:
        
        if p[0] == '&':
            if p[1] == '1':
                print("Identity Law")
                if p[2] != tuple:
                    return run(p[2])
                else:
                    return run(p[2][1], p[2][0], p[2][2])
            elif p[2] == '1':
                print("Identity Law")
                return run(p[1])
                if p[1] != tuple:
                    return run(p[1])
                else:
                    return run(p[1][1], p[1][0], p[1][2])
            

            elif p[2] == '0':
                print("Null Law")
                return run('0')
            elif p[1] == '0':
                print("Null Law")
                return run('0')
            elif p[1] == p[2]:
                print("Idempotent Law")
                return run(p[1])

            elif (p[1][0] == '!' and p[2] == p[1][1]):
                    print("Redundancy theorem")
                    return run('0')
            elif (p[2][0] == '!' and p[1] == p[2][1]):
                    print("Redundancy theorem")
                    return run('0')

            elif type(p[1]) != tuple and type(p[2]) != tuple:
                if len(p[1]) > 2 and len(p[2]) > 2:
                    return f"({p[1]}){p[0]}({p[2]})"
                elif len(p[1]) > 2:
                    return f"({p[1]}){p[0]}{p[2]}"
                elif len(p[2]) > 2:
                    return f"{p[1]}{p[0]}({p[2]})"
                else:
                    return f"{p[1]}{p[0]}{p[2]}"
            
            elif p[1][0] == '+' and (p[1][1] == p[2] or p[1][2] == p[2]):
                print("Absorption Law")
                return run(p[2])
            elif p[2][0] == '+' and (p[2][1] == p[1] or p[2][2] == p[1]):
                print("Absorption Law")
                return run(p[1])

            elif p[1][0] == p[0]:
                print("Commutative Law")
                return run(('&', p[1][2], ('&', p[1][1], p[2])))

            else:
                return run(('&', run(p[1]), run(p[2])))
        elif p[0] == '+':
            # Redundancy             if (p[1][0] == '!' and p[2] == p[1][1] and len(p[1]) < 3):
                    print("Redundancy theorem")
                    return run('1')
        elif (p[2][0] == '!' and p[1] == p[2][1] and len(p[2]) < 3):
                    print("Redundancy theorem")
                    return run('1')
            # Identity
        elif p[1] == '0':
                print("Identity")
                if p[2] != tuple:
                    return run(p[2])
                else:
                    return run((p[2][1], p[2][0], p[2][2]))
        elif p[2] == '0':
                print("Identity")
                if p[1] != tuple:
                    return run(p[1])
                else:
                    return run((p[1][1], p[1][0], p[1][2]))
            
        elif p[1] == '1':
                print("Null")
                return run('1')
        elif p[2] == '1':
                print("Null")
                return run('1')
            
            #idempotent
        elif p[1] == p[2]:
                print("Idempotent")
                return run(p[1])

        elif type(p[1]) != tuple and type(p[2]) != tuple:
                if len(p[1]) > 2 and len(p[2]) > 2:
                    return f"({p[1]}){p[0]}({p[2]})"
        elif len(p[1]) > 2:
                    return f"({p[1]}){p[0]}{p[2]}"
        elif len(p[2]) > 2:
                    return f"{p[1]}{p[0]}({p[2]})"
        else:
                    return f"{p[1]}{p[0]}{p[2]}"
            
        elif p[1][0] == '&' and (p[1][1] == p[2] or p[1][2] == p[2]):
            print("Absorption Law")
                return run(p[2])
        elif p[2][0] == '&' and (p[2][1] == p[1] or p[2][2] == p[1]):
                print("Absorption Law")
                return run(p[1])


            elif p[1][0] == p[0]:
                print("Commutative Law")
                return run(('+', p[1][2], ('+', p[1][1], p[2])))
            
            # Default
            else:
                return run(('+', run(p[1]), run(p[2])))
        


while True:
    try:
        s = input('>> ')
    except EOFError:
        break

    parser.parse(s)