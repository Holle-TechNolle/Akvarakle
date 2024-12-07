# ADR 001: Database Platform Choice

## Status
Accepted

## Context
We have chosen MySQL as the database platform for the project due to its free availability, robust support, and suitability for both development and production environments.

## Decision
1. Use MySQL locally for development.
2. Use Oracle OCI Free Tier for hosting in production.

## Considerations
- MySQL is easy to set up and integrates well with Python via mysql-connector.
- Oracle OCI offers free hosting for MySQL with scalability options.

## Consequences
- Compatibility between local and remote MySQL versions must be ensured.
- Migrating to another database platform in the future will require significant effort.
