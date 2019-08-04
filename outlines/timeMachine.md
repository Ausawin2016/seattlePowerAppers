---
Author: Eric Thomas
Organization: PowerApps.Rocks!
Created Time and Date: Sat Aug 3 10:08:15 PDT 2019
Last Updated: 
Categories: PowerApps Development
Tags: meetup, powerapps, time, conversion, utc, local, date
---

# PowerApps Time Machine: capturing, converting and displaying dates and times

## Introduction

Dates and times are hard, especially for inexperienced developers and databasers. This tool aims to make date/time-based tasks in PowerApps simpler and act as a reference app for all your temporal challenges.

## Date/Time-based solutions included

### Capturing dates and times

- Capturing date and time from user input
- Capturing date and time automatically
    - Timestamps
    - Metadata

### Converting and displaying dates and times

- Converting between Local time and UTC
- Converting between Local and other timezones
- Converting to human friendly formats
- Converting to formal data types
- Diffing two times (same day)
- Diffing two times (spanning days)
- Adding time
- Subtracting time

### Working with dates and times in SQL databases

- Saving as string vs date
- Considerations when saving dates to SQL database
    - Data type compatibility
    - Reporting (breaking out year, month, date, day of week, hour, minute, seconds, timezones, timezone offsets separately)
    - ISO8601
    - Events and metadata

### Questions

- When writing to a database with `date` (or `datetime` or `datetime2`) data type, does PowerApps need to convert a string?
    - How does PowerApps "code" the string to flag it as `date`?
