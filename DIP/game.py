
import random

class Game():
    @staticmethod
    def get_random_number():
        return random.randint(1, 100)
    
    @staticmethod
    def guessing_game():
        print("Welcome to the Guessing Game!")
        target_number = Game.get_random_number()
        attempts = 0

        while True:
            try:
                guess = int(input("Enter your guess (between 1 and 100): "))
                if guess < 1 or guess > 100:
                    print("Please enter a number within the valid range!")
                    continue

                attempts += 1

                if guess < target_number:
                    print("Too low! Try again.")
                elif guess > target_number:
                    print("Too high! Try again.")
                else:
                    print(f"Congratulations! You've guessed the number in {attempts} attempts.")
                    break

            except ValueError:
                print("Invalid input! Please enter a valid integer.")
            
if __name__ == '__main__':
    Game.guessing_game()
game.py
Ipinapakita ang game.py.