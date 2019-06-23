---@class turtle
turtle = {}


---@function Craft items using ingredients anywhere in the turtle's inventory and place results in the active slot. If a quantity is specified, it will craft only up to that many items, otherwise, it will craft as many of the items as possible.
---@param quantity number Amount of items to craft, if possible with items in inventory
---@return boolean Success
function turtle.craft( quantity ) end


---@function Try to move the turtle forward.
---@return boolean Success
function turtle.forward() end


---@function Try to move the turtle backward.
---@return boolean Success
function turtle.back() end


---@function Try to move the turtle up.
---@return boolean Success
function turtle.up() end


---@function Try to move the turtle down.
---@return boolean Success
function turtle.back() end


---@function Turn the turtle left.
---@return boolean Success
function turtle.turnLeft() end


---@function Turn the turtle right.
---@return boolean Success
function turtle.turnRight() end


---@function Make the turtle select slot slotNum (1 is top left, 16 (9 in 1.33 and earlier) is bottom right)
---@param slotNum number Slot to select
---@return void
function turtle.select( slotNum ) end


---@function Indicates the currently selected inventory slot
---@return number Slot
function turtle.getSelectedSlot() end


---@function Counts how many items are in the currently selected slot or, if specified, slotNum slot
---@param slotNum number Slot to count
---@return number Count
function turtle.getItemCount( slotNum ) end


---@function Counts how many remaining items you need to fill the stack in the currently selected slot or, if specified, slotNum slot
---@param slotNum number Slot to count
---@return number Count
function turtle.getItemSpace( slotNum ) end


---@function Returns the ID string, count and damage values of currently selected slot or, if specified, slotNum slot
---@param slotNum number Slot to get details of
---@return table|nil Data with info of item(s) or nil if empty
function turtle.getItemDetail( slotNum ) end


---@function Attempts to equip an item in the current slot to the turtle's left side, switching the previously equipped item back into the inventory
---@return boolean Success
function turtle.equipLeft() end


---@function Attempts to equip an item in the current slot to the turtle's right side, switching the previously equipped item back into the inventory
---@return boolean Success
function turtle.equipRight() end


---@function Attacks in front of the turtle.
---@param toolSide string Which tool to use, specify the position of the tool on the turtle
---@return boolean Success
function turtle.attack( toolSide ) end


---@function Attacks above the turtle.
---@param toolSide string Which tool to use, specify the position of the tool on the turtle
---@return boolean Success
function turtle.attackUp( toolSide ) end


---@function Attacks under the turtle.
---@param toolSide string Which tool to use, specify the position of the tool on the turtle
---@return boolean Success
function turtle.attackDown( toolSide ) end


---@function Breaks the block in front. With hoe: tills the dirt in front of it.
---@param toolSide string Which tool to use, specify the position of the tool on the turtle
---@return boolean Success
function turtle.dig( toolSide ) end


---@function Breaks the block above.
---@param toolSide string Which tool to use, specify the position of the tool on the turtle
---@return boolean Success
function turtle.digUp( toolSide ) end


---@function Breaks the block below. With hoe: tills the dirt beneath the space below it.
---@param toolSide string Which tool to use, specify the position of the tool on the turtle
---@return boolean Success
function turtle.digDown( toolSide ) end


---@function Places a block of the selected slot in front. Engrave signText on signs if provided. Collects water or lava if the currently selected slot is an empty bucket.
---@param signText string The text to write on a sign when placing a sign
---@return boolean Success
function turtle.place( signText ) end


---@function Places a block of the selected slot above. Collects water or lava if the currently selected slot is an empty bucket.
---@return boolean Success
function turtle.placeUp() end


---@function Places a block of the selected slot below. Collects water or lava if the currently selected slot is an empty bucket.
---@return boolean Success
function turtle.placeDown() end


---@function Detects if there is a block in front. Does not detect mobs.
---@return boolean Result
function turtle.detect() end


---@function Detects if there is a block above
---@return boolean Result
function turtle.detectUp() end


---@function Detects if there is a block below
---@return boolean Result
function turtle.detectDown() end


---@function Returns the ID string and metadata of the block in front of the Turtle
---@return table|string Data with ID and metadata or an error string
function turtle.inspect() end


---@function Returns the ID string and metadata of the block above the Turtle
---@return table|string Data with ID and metadata or an error string
function turtle.inspectUp() end


---@function Returns the ID string and metadata of the block below the Turtle
---@return table|string Data with ID and metadata or an error string
function turtle.inspectDown() end


---@function Detects if the block in front is the same as the one in the currently selected slot
---@return boolean Result
function turtle.compare() end


---@function Detects if the block above is the same as the one in the currently selected slot
---@return boolean Result
function turtle.compareUp() end


---@function Detects if the block below is the same as the one in the currently selected slot
---@return boolean Result
function turtle.compareDown() end


---@function Compare the current selected slot and the given slot to see if the items are the same. Returns true if they are the same, false if not.
---@param slotNum number Slot to compare the current slot to
---@return boolean Result
function turtle.compareTo( slotNum ) end


---@function Drops all items in the selected slot, or specified, drops count items. [>= 1.4 only:] If there is a inventory on the side (i.e in front of the turtle) it will try to place into the inventory, returning false if the inventory is full.
---@param quantity number Amount of items to drop
---@return boolean Success
function turtle.drop( quantity ) end


---@function Drops all items in the selected slot, or specified, drops count items. [>= 1.4 only:] If there is a inventory on the side (i.e above the turtle) it will try to place into the inventory, returning false if the inventory is full.
---@param quantity number Amount of items to drop
---@return boolean Success
function turtle.dropUp( quantity ) end


---@function Drops all items in the selected slot, or specified, drops count items. [>= 1.4 only:] If there is a inventory on the side (i.e below the turtle) it will try to place into the inventory, returning false if the inventory is full. If above a furnace, will place item in the top slot.
---@param quantity number Amount of items to drop
---@return boolean Success
function turtle.dropDown( quantity ) end


---@function Picks up an item stack of any number, from the ground or an inventory in front of the turtle, then places it in the selected slot. If the turtle can't pick up the item, the function returns false. amount parameter requires ComputerCraft 1.6 or later.
---@param quantity number Amount of items to pick up
---@return boolean Success
function turtle.suck( quantity ) end


---@function Picks up an item stack of any number, from the ground or an inventory above the turtle, then places it in the selected slot. If the turtle can't pick up the item, the function returns false. amount parameter requires ComputerCraft 1.6 or later.
---@param quantity number Amount of items to pick up
---@return boolean Success
function turtle.suckUp( quantity ) end


---@function Picks up an item stack of any number, from the ground or an inventory below the turtle, then places it in the selected slot. If the turtle can't pick up the item, the function returns false. amount parameter requires ComputerCraft 1.6 or later.
---@param quantity number Amount of items to pick up
---@return boolean Success
function turtle.suckDown( quantity ) end


---@function If the current selected slot contains a fuel item, it will consume it to give the turtle the ability to move. Added in 1.4 and is only needed in needfuel mode. If the current slot doesn't contain a fuel item, it returns false. Fuel values for different items can be found at Turtle.refuel#Fuel_Values. If a quantity is specified, it will refuel only up to that many items, otherwise, it will consume all the items in the slot.
---@param quantity number Amount of items to use for refueling
---@return boolean Success
function turtle.refuel( quantity ) end


---@function Returns the current fuel level of the turtle, this is the number of blocks the turtle can move. If turtleNeedFuel = 0 then it returns "unlimited".
---@return number Fuel level
function turtle.getFuelLevel() end


---@function Returns the maximum amount of fuel a turtle can store - by default, 20,000 for regular turtles, 100,000 for advanced. If turtleNeedFuel = 0 then it returns "unlimited".
---@return number Fuel limit
function turtle.getFuelLimit() end


---@function Transfers quantity items from the selected slot to slot. If quantity isn't specified, will attempt to transfer everything in the selected slot to slot.
---@param slot number Slot to transfer items to from current slot
---@param quantity number Amount of items to transfer
---@return boolean Success
function turtle.transferTo( slot, quantity ) end
