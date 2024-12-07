# ADR 005: Database Design Principles

## Status
Accepted

## Context
The database design follows relational principles to ensure scalability, normalization, and data integrity.

## Decision
- Normalize the database to at least 3NF.
- Use surrogate keys (auto-increment integers) for primary keys.
- Employ appropriate indexing for performance optimization.

## Considerations
- Normalization ensures minimal data redundancy.
- Surrogate keys simplify relationships and migrations.

## Consequences
- Complex queries may require joins, impacting performance for large datasets.
- Proper indexing strategy is critical for maintaining query performance.
