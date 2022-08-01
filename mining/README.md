# README
*DISCLAIMER: I haven't checked if this complies with STFC TOS. Use at your own risk. For education purposes only.*

## WHAT
1. Starting at a node, given a reset count and a time to spend on the node, the script will make your miner leave and then go back to the node. If the time is set correctly, this should cause a reset.

## PRE-REQUISITES
1. BlueStacks (any version)
1. Shortcuts "L, G, M, R" pre-created. I will provide more details on this with a screenshot, but for now:
    * L: anywhere a little away from the node (bottom left works well)
    * G: on the center of the node
    * M: on the green "Mine" button when you go on a node
    * R: on the recall button when your ship is activated

## USAGE
1. Send your miner to the node you wish mine on.
    * If in hostile space, do the usual trick by sending two ships. Google it if you're unfamiliar.
1. Make sure the "G" shortcut is on the node by moving the screen around
1. Try our the sequence "L -> G -> G -> M" and make sure your ship is able to mine.
1. Calculate how many resets you would need for the desired amount of cargo before recalling -> "reset_count"
1. If a small node (e.g. data), take a look at how long it takes to drain it -> "mining_time"
1. By default, script will not recal. Set to true if you want to return home on its own.
1. Start the script from a PowerShell command window or ISE and observe to make sure it's working well:

`./mine_blue_stacks.ps1 -reset_count 100 -mining_time 20 -recall $true`

## RISKS
* Using this script may get you to be wildly OPC. A player may find your miner and destroy it.
* A hostile may randomly be in the path of one of the shortcuts which may destroy your miner. Fortunately, you wouldn't lose your OPC if destroyed by a hostile.
    *  I added some random jitters at each step but it may still happen.
