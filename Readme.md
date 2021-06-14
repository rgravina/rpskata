# Rock Paper Scissors Kata

The purpose of this coding kata is to learn basic Test Driven Development and refactoring.

This can be done completed in many programming langauges. See directories for starter projects. We currently have starter projects in this repository for:

* Java

# The Game

Rock Paper Scissors (RPS) is a two player game where each player choses one of rock, paper or scissors. The winner of the game is determined by these rules.

- Rock beats scissors.
- Paper beats rock.
- Scissors beats paper.
- Any two of the same kind is a draw.

We will write test cases and code that when given the throw of the two players, will return the outcome.

E.g. Assuming an enum exists for `Throw` and `Result`

```java
play(ROCK, SCISSORS) # Returns P1_WINS
```

# The First Test Cases

Let's start with the Rock vs. Scissors tests and implementation.

```
Given Player 1 is rock.
And Player 2 is scissors.
Then Player 1 wins.
```

```
Given Player 1 is scissors.
And Player 2 is rock.
Then Player 2 wins.
```

Questions:
- How would you write a test to show rock beats paper?

```java
public class RPSKataTest {
    @Test
    public void rockVsScissors() {
        assertEquals(P1_WINS, play(ROCK, SCISSORS));
    }
}
```

- What is the simplest code that makes it pass? 

It's tempting to implement logic for the game here, but there's a really simple way to get this test to pass. Returning Player 1 wins! This may feel like cheating, but it's a core part of TDD. Do the simplest thing to make the tests pass.

```java
class RPS {
    static Result play(Throw p1, Throw p2) {
        return P1_WINS;
    }
}
```

- How would you change this code now to handle the second test case, scissors v.s. rock?

# The Later Test Cases

The test cases for other combinations will be similar. Write test cases for all the other win and loss scenarios. Don't worry about draws for now.

| P1 | P2 | Winner |
|---|---|---|
| R | P | P2 |
| R | S | P1 |
| P | R | P1 |
| P | S | P2 |
| S | R | P2 |
| S | P | P1 |

Questions:

- Once the test cases are all passing, can you think of ways to refactor the code to increase readability, reduce duplication etc.?

# The Draw Test Cases

The draw test cases will be similar to the win/lose tests cases. You will need to implement handling draws while keeping the previous test cases passing.

| P1 | P2 | Winner |
|---|---|---|
| R | R | - |
| P | P | - |
| S | S | - |

# The Edge Test Cases

Depending on the programming language used, you may be able to pass erroneous values instead of a `Throw` to the `play` method. Think of as many edge cases as you can, and write test cases for them.

 * (Java) What if either `Throw` is `null`?
 * (Javascript): What if one of the throws is a `number` or a `string`?
