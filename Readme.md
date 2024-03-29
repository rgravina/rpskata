# Rock Paper Scissors Kata

The purpose of this coding kata is to learn basic Test Driven Development and refactoring.

This can be done completed in many programming langauges. See directories for starter projects. We currently have starter projects in this repository for:

* Java
* Kotlin
* Swift

# The Game

Rock Paper Scissors (RPS) is a two player game where each player choses one of rock, paper or scissors. The winner of the game is determined by these rules.

- Rock beats scissors.
- Paper beats rock.
- Scissors beats paper.
- Any two of the same kind is a draw.

# The Wiring Test

To ensure tests are setup correctly, we can write a first wiring test.

## Java

```java
public class RPSKataTest {
    @Test
    public void wiring() {
        assertTrue(play());
    }
}
```
```java
class RPS {
    static Boolean play() {
        return true;
    }
}
```
## Kotlin

```kotlin
class RPSKataTest {
    @org.junit.jupiter.api.Test
    internal fun wiring() {
        assertTrue(true)
    }
}
```
```kotlin
fun play(): Boolean {
    return true
}
```


## Swift

```swift
import XCTest
@testable import RPS

final class RPSTests: XCTestCase {
    func testWiring() {
        XCTAssertTrue(RPS().play())
    }
}
```
```swift
public struct RPS {
    func play() -> Bool {
        return true
    }
}
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

E.g. Assuming an enum exists for `Throw` and `Result`

## Java
```java
public class RPSKataTest {
    @Test
    public void rockVsScissors() {
        assertEquals(P1_WINS, play(ROCK, SCISSORS));
    }
}
```

## Kotlin
```kotlin
class RPSKataTest {
    @Test
    fun rockVsScissors() {
        assertEquals(P1_WINS, play(ROCK, SCISSORS))
    }
}
```

## Swift
```swift
import XCTest
@testable import RPS

final class RPSTests: XCTestCase {
    func testRockVsScissors() {
        XCTAssertEqual(RPS().play(p1: .rock, p2: .scissors), .p1wins)
    }
}
```

- What is the simplest code that makes it pass? 

It's tempting to implement logic for the game here, but there's a really simple way to get this test to pass. Returning Player 1 wins! This may feel like cheating, but it's a core part of TDD. Do the simplest thing to make the tests pass.

## Java
```java
class RPS {
    static Result play(Throw p1, Throw p2) {
        return P1_WINS;
    }
}
```
## Kotlin
```kotlin
fun play(p1: Throw, p2: Throw): Result {
    return Result.P1_WINS
}
```
## Swift
```swift
public struct RPS {
    func play(p1: Throw, p2: Throw) -> GameResult {
        return .p1wins
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
