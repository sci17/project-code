
import pytest
from unittest.mock import patch
from io import StringIO
from game import Game

def test_get_random_number():
  
    number = Game.get_random_number()
    assert 1 <= number <= 100

def test_guessing_game_correct_guess():

    with patch('game.Game.get_random_number', return_value=42), \
         patch('builtins.input', return_value='42'), \
         patch('builtins.print') as mock_print:
        Game.guessing_game()
        output = [call.args[0] for call in mock_print.mock_calls]
        assert any("Congratulations!" in str(arg) for arg in output)

def test_guessing_game_incorrect_then_correct():

    input_values = ['10', '42']
    input_mock = iter(input_values).__next__
    
    with patch('game.Game.get_random_number', return_value=42), \
         patch('builtins.input', side_effect=input_values), \
         patch('builtins.print') as mock_print:
        Game.guessing_game()
        output = [call.args[0] for call in mock_print.mock_calls]
        assert any("Too low!" in str(arg) for arg in output)
        assert any("Congratulations!" in str(arg) for arg in output)

def test_guessing_game_invalid_input():
 
    input_values = ['invalid', '42']
    
    with patch('game.Game.get_random_number', return_value=42), \
         patch('builtins.input', side_effect=input_values), \
         patch('builtins.print') as mock_print:
        Game.guessing_game()
        output = [call.args[0] for call in mock_print.mock_calls]
        assert any("Invalid input!" in str(arg) for arg in output)
        assert any("Congratulations!" in str(arg) for arg in output)

testgame.py
Ipinapakita ang testgame.py.