# 15-745 Final Project

This project is on using distinctness analysis for optimizing program execution via non-temporal memory instructions

# How
- backward DFA on load/store insts to figure out memory accesses after a certain inst
- pairwise between each 2 accesses where the first is a storeinst (to same base pointer in SCEV) compute the reuse distance by using loop trip counts
- for each store where every access after has a high enough reuse distance, convert to nontemporal

### Reports
`./reports` has all of the documents produced as a part of this project
This includes a proposal, milestone report, and final report

### Code
`./code` contains all of the code for this project
The README located at `./code/README.md` contains information about the code

Authors: Frank Fan and William Liu
