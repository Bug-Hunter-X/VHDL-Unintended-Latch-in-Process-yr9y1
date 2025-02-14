# VHDL Unintended Latch Bug

This repository demonstrates a common VHDL coding error resulting in an unintended latch.  The provided code lacks a default assignment to the `data_out` signal within the process, leading to unexpected behavior when the clock condition isn't met. This can cause unpredictable values to persist and lead to functional issues.

The solution highlights the proper way to handle signal assignments to avoid these latches and ensure deterministic behavior in sequential logic.

## Bug Description
The original code uses a process with a rising_edge(clk) sensitivity. The `data_out` signal is only updated inside the `if` statement.  Without an else case or assignment outside the conditional statement, a latch is implicitly created.  This latch holds the previous value of `data_out`, causing unintended behavior and potential simulation mismatches.

## Solution
The solution demonstrates how to correct this by providing a default assignment within the process to address potential race conditions and ensure consistent signal value changes.