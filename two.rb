# Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Game
  # State: Turn
  # Behaviour: Ask Question, Change Player Turn
# Player
  # State: Lives
  # Behaviour: Lose Life, Answer Question
# Question
  # State: Prompt, Answer
