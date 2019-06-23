gps =
{
    locate = function( timeout, debug ) end
}


---@class turtle
turtle =
{
    ---@function Craft items using ingredients anywhere in the turtle's inventory and place results in the active slot. If a quantity is specified, it will craft only up to that many items, otherwise, it will craft as many of the items as possible.
    ---@param quantity number Amount of items to craft, if possible with items in inventory
    craft = function( quantity ) end,

    ---@function Try to move the turtle forward.
    forward = function() end,
    ---@function Try to move the turtle backward.
    back = function() end,
    ---@function Try to move the turtle up.
    up = function() end,
    ---@function Try to move the turtle down.
    down = function() end,
    ---@function Turn the turtle left.
    turnLeft = function() end,
    ---@function Turn the turtle right.
    turnRight = function() end,

    select = function( slotNum ) end,
    getSelectedSlot = function() end,
    getItemCount = function( slotNum ) end,
    getItemSpace = function( slotNum ) end,
    getItemDetail = function( slotNum ) end,

    equipLeft = function() end,
    equipRight = function() end,

    attack = function( toolSide ) end,
    attackUp = function( toolSide ) end,
    attackDown = function( toolSide ) end,

    dig = function( toolSide ) end,
    digUp = function( toolSide ) end,
    digDown = function( toolSide ) end,

    place = function( signText ) end,
    placeUp = function() end,
    placeDown = function() end,

    detect = function() end,
    detectUp = function() end,
    detectDown = function() end,

    inspect = function() end,
    inspectUp = function() end,
    inspectDown = function() end,

    compare = function() end,
    compareUp = function() end,
    compareDown = function() end,
    compareTo = function( slotNum ) end,

    drop = function( quantity ) end,
    dropUp = function( quantity ) end,
    dropDown = function( quantity ) end,

    suck = function( quantity ) end,
    suckUp = function( quantity ) end,
    suckDown = function( quantity ) end,

    refuel = function( quantity ) end,
    getFuelLevel = function() end,
    getFuelLimit = function() end,

    transferTo = function( slot, quantity ) end
}
