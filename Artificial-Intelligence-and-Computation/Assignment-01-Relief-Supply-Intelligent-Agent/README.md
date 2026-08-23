# Assignment 1 - Relief Supply Intelligent Agent

## Overview

This assignment implements an **intelligent relief supply delivery agent** designed to navigate between cities while minimizing travel cost and considering efficient delivery.

## AI Agent Design

The intelligent agent is defined using the **PEAS framework**:

* **Performance:** Minimize cost, optimize battery life, and ensure uninterrupted delivery
* **Environment:** Static, discrete, deterministic map with path costs
* **Actuators:** Movement across safe paths and delivery of supplies
* **Sensors:** Battery status and path-cost feedback

## Algorithms Implemented

### Random Restart Hill Climbing

A local search approach that explores different starting states to reduce the possibility of getting trapped in local optima.

### A* Search Algorithm

An informed search algorithm that uses:

`f(n) = g(n) + h(n)`

where:

* `g(n)` = actual path cost
* `h(n)` = estimated cost to the goal

## Implementation

The assignment includes:

* Python implementation
* Graph-based city representation
* Path-cost calculation
* Heuristic-based search
* Random Restart Hill Climbing
* A* search
* Algorithm execution for different starting cities
* Time and space complexity analysis

## Technologies Used

* Python
* Artificial Intelligence Search Algorithms
* Graph Search
* Heuristic Search

## Assignment Files

This folder contains the submitted assignment documentation and associated implementation files.
