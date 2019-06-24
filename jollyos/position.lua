local _pos = vector.new( gps.locate() )
local _facing = 0

facingDirections =
{
    vector.new(  0, 0,  1 ),
    vector.new( -1, 0,  0 ),
    vector.new(  0, 0, -1 ),
    vector.new(  1, 0,  0 )
}


turtle._forward = turtle.forward;
turtle.forward = function()
    if turtle._forward() then
        _pos = _pos + facingDirections[ _facing ]
    end
end

turtle._back = turtle.back;
turtle.back = function()
    if turtle._back() then
        _pos = _pos - facingDirections[ _facing ]
    end
end

turtle._up = turtle.up;
turtle.up = function()
    if turtle._up() then
        _pos.y = _pos.y + 1
    end
end

turtle._down = turtle.down;
turtle.down = function()
    if turtle._down() then
        _pos.y = _pos.y - 1
    end
end

turtle._turnRight = turtle.turnRight;
turtle.turnRight = function()
    if turtle._turnRight() then
        _facing = _facing + 1
        if _facing == 5 then
            _facing = 1
        end
    end
end

turtle._turnLeft = turtle.turnLeft;
turtle.turnLeft = function()
    if turtle._turnLeft() then
        _facing = _facing - 1
        if _facing == 0 then
            _facing = 4
        end
    end
end


---Get the current facing of the turtle
---@return number Facing
function turtle.getFacing()
    return _facing
end

---Set the current facing of the turtle, it will use the least amount of turns
---@param facing number The facing to turn to
---@return boolean Success
function turtle.face( facing )
    if facing < _facing or ( _facing == 1 and facing == 4 ) then
        while _facing ~= facing do
            if not turtle.turnLeft() then
                return false
            end
        end
    elseif facing > _facing or ( _facing == 4 and facing == 1 ) then
        while _facing ~= facing do
            if not turtle.turnRight() then
                return false
            end
        end
    end

    return true
end


local _getOrientation = function()
    local posA = vector.new( gps.locate( 2, false ) )
    local heading = 0
    local facing = 0

    if turtle._forward() then
        local posB = vector.new( gps.locate( 2, false ) )
        turtle._back()

        heading = posB - posA

        facing = ( ( heading.x + math.abs( heading.x ) * 2 ) +
                   ( heading.z + math.abs( heading.z ) * 3 ) ) + 1
    elseif turtle._back() then
        local posB = vector.new( gps.locate( 2, false ) )
        turtle._forward()

        heading = posA - posB

        facing = ( ( heading.x + math.abs( heading.x ) * 2 ) +
                   ( heading.z + math.abs( heading.z ) * 3 ) ) + 1
    else
        turtle._turnRight()

        if turtle._forward() then
            local posB = vector.new( gps.locate( 2, false ) )
            turtle._back()

            heading = posB - posA

            facing = ( ( heading.x + math.abs( heading.x ) * 2 ) +
                     ( heading.z + math.abs( heading.z ) * 3 ) ) + 1
        elseif turtle._back() then
            local posB = vector.new( gps.locate( 2, false ) )
            turtle._forward()

            heading = posA - posB

            facing = ( ( heading.x + math.abs( heading.x ) * 2 ) +
                     ( heading.z + math.abs( heading.z ) * 3 ) ) + 1
        end

        turtle._turnLeft()
    end

    if facing > 4 then
        facing = 1
    end

    return facing
end

_facing = _getOrientation()



local _Move = function( offset )
    for i = 1, offset.x do
        print( i )
    end
    return true
end


Position = {}


---Move the turtle to current position + 'offset'
---@param offset vector Offset to move
---@return boolean Success
function Position.Move( offset )
    return _Move( offset )
end


setmetatable( Position, {
    __index = function( table, key )
        if key == 'x' or key == 'y' or key == 'z' then
            return _pos[ key ]
        elseif key == 'facing' or key == 'f' then
            return _facing
        end
    end,

    __newindex = function( table, key, value )
        if key == 'x' or key == 'y' or key == 'z' then
            return _pos[ key ]
        elseif key == 'facing' or key == 'f' then
            return _facing
        else
            table[ key ] = value
        end
    end
})


print( "Position: " .. Position.x .. ", " .. Position.y .. ", " .. Position.z )
print( "Position module loaded" )
