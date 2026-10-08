# Reflection & Quiz Preparation

## 1. PL/SQL GOTO Statement

- **Purpose**: Transfers control unconditionally to a labeled block (`<<label_name>>`).
- **Restrictions**:
  - Cannot jump into an `IF`, `CASE`, or `LOOP` statement from outside.
  - Cannot jump into a sub-block or transfer control out of a subprogram.
- **Best Practice**: Limit or eliminate `GOTO` usage in modern database applications as it reduces code readability and maintainability. Standard structured statements (`IF-THEN-ELSE`, `CASE`, `LOOP`) should be preferred.

## 2. Stored Functions vs. Procedures

- **Stored Function**: Must return a single value using the `RETURN` keyword and can be called directly within SQL statements (`SELECT`, `WHERE`, `ORDER BY`), provided it does not violate purity rules (e.g., modifying table state/DML).
- **Stored Procedure**: Performs an action/transaction, does not strictly require a return value, and cannot be invoked directly within standard SQL queries.

## 3. Exception Handling

- Handling `NO_DATA_FOUND` prevents unexpected runtime exceptions when performing SQL lookups inside functions, allowing the function to return a graceful fallback value rather than terminating execution abruptly.

## AI Usage Disclosure

- AI Assistant was used to structure PL/SQL scripts, generate test cases, and verify syntax alignment for SQL Developer and Oracle 23ai/XE Docker execution.
