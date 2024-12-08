{
    "type": "MySQLNotebook",
    "version": "1.0",
    "caption": "Script",
    "content": "-- File: 010_create_database.sql\n-- Purpose: Create the Akvarakle database and set up initial parameters.\n\nCREATE DATABASE IF NOT EXISTS Akvarakle\nCHARACTER SET utf8mb4\nCOLLATE utf8mb4_unicode_ci;\n\nUSE Akvarakle;\n\n-- Optionally set database-specific settings\nSET GLOBAL sql_mode = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';\n\n-- Log creation\nSELECT 'Database Akvarakle created or already exists.' AS status;\n",
    "options": {
        "tabSize": 4,
        "indentSize": 4,
        "insertSpaces": true,
        "defaultEOL": "LF",
        "trimAutoWhitespace": true
    },
    "viewState": null,
    "contexts": [
        {
            "state": {
                "start": 1,
                "end": 15,
                "language": "mysql",
                "currentSet": 1,
                "statements": [
                    {
                        "delimiter": ";",
                        "span": {
                            "start": 0,
                            "length": 196
                        },
                        "contentStart": 107,
                        "state": 0
                    },
                    {
                        "delimiter": ";",
                        "span": {
                            "start": 196,
                            "length": 16
                        },
                        "contentStart": 198,
                        "state": 0
                    },
                    {
                        "delimiter": ";",
                        "span": {
                            "start": 212,
                            "length": 114
                        },
                        "contentStart": 259,
                        "state": 0
                    },
                    {
                        "delimiter": ";",
                        "span": {
                            "start": 326,
                            "length": 83
                        },
                        "contentStart": 344,
                        "state": 0
                    },
                    {
                        "delimiter": ";",
                        "span": {
                            "start": 409,
                            "length": 1
                        },
                        "contentStart": 408,
                        "state": 3
                    }
                ]
            },
            "data": []
        }
    ]
}