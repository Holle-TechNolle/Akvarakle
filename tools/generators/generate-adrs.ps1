# Set the directory for the ADRs
$adrDirectory = "repos\Akvarakle\docs\adr"

# Ensure the directory exists
if (!(Test-Path -Path $adrDirectory)) {
    New-Item -ItemType Directory -Path $adrDirectory
}

# Define ADRs and their content
$adrs = @(
    @{
        FileName = "001-database-platform-choice.md"
        Content = @"
# ADR 001: Database Platform Choice

## Status
Accepted

## Context
We have chosen MySQL as the database platform for the project due to its free availability, robust support, and suitability for both development and production environments.

## Decision
1. Use MySQL locally for development.
2. Use Oracle OCI Free Tier for hosting in production.

## Considerations
- MySQL is easy to set up and integrates well with Python via `mysql-connector`.
- Oracle OCI offers free hosting for MySQL with scalability options.

## Consequences
- Compatibility between local and remote MySQL versions must be ensured.
- Migrating to another database platform in the future will require significant effort.
"@
    },
    @{
        FileName = "002-development-language.md"
        Content = @"
# ADR 002: Development Language

## Status
Accepted

## Context
Python has been chosen as the primary development language for the project due to its widespread adoption, extensive library support, and suitability for data-driven applications.

## Decision
- Use Python for all API, data processing, and related backend tasks.

## Considerations
- Python’s ecosystem includes tools like Flask/FastAPI for APIs and MkDocs for documentation.
- The language is highly readable and beginner-friendly, enabling easier onboarding.

## Consequences
- Dependency on Python libraries requires maintaining compatibility with current versions.
- Performance optimizations may be necessary for compute-intensive tasks.
"@
    },
    @{
        FileName = "003-documentation-tool.md"
        Content = @"
# ADR 003: Documentation Tool

## Status
Accepted

## Context
MkDocs was chosen as the documentation tool for its simplicity, markdown support, and ability to generate static documentation sites.

## Decision
- Use MkDocs for all project documentation.
- Employ the Material for MkDocs theme for enhanced UI.

## Considerations
- MkDocs is easy to integrate with version control systems.
- The Material theme adds a professional look with minimal customization.

## Consequences
- Maintaining consistent markdown formatting is critical for seamless updates.
- Extensions or plugins might be required for advanced features.
"@
    },
    @{
        FileName = "004-virtual-environments.md"
        Content = @"
# ADR 004: Virtual Environments

## Status
Accepted

## Context
To ensure isolated development environments and avoid conflicts between dependencies, virtual environments will be used.

## Decision
- Use `venv` for managing virtual environments locally.

## Considerations
- Virtual environments simplify dependency management for Python projects.
- Each environment is self-contained, avoiding conflicts across projects.

## Consequences
- Developers must ensure the virtual environment is activated during development.
- Dependencies must be explicitly declared in `requirements.txt` for reproducibility.
"@
    },
    @{
        FileName = "005-database-design-principles.md"
        Content = @"
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
"@
    },
    @{
        FileName = "006-api-architecture.md"
        Content = @"
# ADR 006: API Architecture

## Status
Accepted

## Context
The API will follow RESTful principles to provide a structured and scalable interface for data access and manipulation.

## Decision
- Use FastAPI for its asynchronous capabilities and built-in OpenAPI support.

## Considerations
- FastAPI simplifies the creation of high-performance APIs.
- OpenAPI support ensures documentation is generated automatically.

## Consequences
- Developers must be familiar with asynchronous programming in Python.
- Testing and validation tools are essential to maintain API integrity.
"@
    }
)

# Generate ADR files
foreach ($adr in $adrs) {
    $filePath = Join-Path -Path $adrDirectory -ChildPath $adr.FileName
    $adr.Content | Out-File -FilePath $filePath -Encoding UTF8
    Write-Host "Created ADR: $filePath"
}
