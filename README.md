# PostgreSQL Customer Support Ticket Analysis

A small PostgreSQL project that models a customer support ticket system and demonstrates relational database design and SQL querying.

## Project Overview

This database tracks customer support tickets, the agents assigned to them, ticket priority, status, and resolution times.

The project demonstrates:

- PostgreSQL table creation
- Primary and foreign keys
- INSERT statements
- JOIN operations
- Aggregate functions
- GROUP BY
- Filtering and sorting
- Basic reporting queries

## Database Structure

### agents
Stores information about support agents.

### customers
Stores customer information.

### tickets
Stores support cases and connects customers with the agents handling their issues.

## Example Analysis

The included queries answer questions such as:

- How many tickets has each agent handled?
- What is the average resolution time?
- Which ticket categories occur most often?
- How many high-priority tickets are currently open?
- Which agents have resolved the most cases?

## Technologies

- PostgreSQL
- SQL

## Purpose

I created this project to practice PostgreSQL and relational database concepts while modeling a workflow similar to customer support and escalation environments I have worked with professionally.
