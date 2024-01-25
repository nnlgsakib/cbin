#!/bin/bash

# Command to run each node process in the background
node l1 &
node l2 &
node l3 &
node l4 &
node l5 &
node l6 &
node l7 &
node l8 &
node l9 &
node l10 &

# Wait for all background processes to finish
wait

echo "All nodes have been started."
