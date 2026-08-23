# Assignment 1 - Dynamic Programming and Multi-Armed Bandits

## Overview

This assignment explores reinforcement learning concepts through two practical problems:

1. Smart Supplier optimization using Dynamic Programming
2. Clinical Trial optimization using Multi-Armed Bandits

## Part 1 - Smart Supplier using Dynamic Programming

A reinforcement learning agent is developed to help a Smart Supplier decide the optimal production quantities of two products under changing market conditions.

### Key Concepts

- Reinforcement Learning Environment
- State and Action Spaces
- Reward Function
- Dynamic Programming
- Value Iteration
- Optimal Policy
- State-Value Function
- Policy Analysis

### Results

Value Iteration converged after **6 iterations**.

Simulation over 1,000 episodes produced an average total profit of approximately **$122.48**.

---

## Part 2 - Clinical Trial using Multi-Armed Bandits

A Multi-Armed Bandit environment is used to simulate treatment selection in a clinical trial involving different HIV treatment combinations.

### Strategies Implemented

- Random Policy
- Greedy Policy
- Epsilon-Greedy Policy
- Upper Confidence Bound (UCB)

### Key Concepts

- Multi-Armed Bandits
- Exploration vs. Exploitation
- Reward-based Learning
- Treatment Arm Selection
- Cumulative Rewards
- UCB
- Epsilon-Greedy

### Results

Among the evaluated strategies, **UCB achieved the highest total reward of 131** in the reported experiment.

Epsilon-Greedy with **ε = 0.1** achieved a total reward of **126**.

## Technologies Used

- Python
- NumPy
- Pandas
- Matplotlib
- Reinforcement Learning
- Dynamic Programming

## Assignment Files

This folder contains both parts of the submitted Deep Reinforcement Learning Assignment 1, including the Dynamic Programming and Multi-Armed Bandit implementations.
