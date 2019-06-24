local _pos = {}
_pos.x, _pos.y, _pos.z = gps.locate()

facingDirections =
{

}


local _getOrientation = function()
    local loc1 = vector.new( gps.locate( 2, false ) )
    local heading = 0
    local facing = 0

    if turtle.forward() then
        local loc2 = vector.new( gps.locate( 2, false ) )
        turtle.back()

        heading = loc2 - loc1

        facing = ( ( heading.x + math.abs( heading.x ) * 2 ) +
                   ( heading.z + math.abs( heading.z ) * 3 ) ) + 1
    elseif turtle.back() then
        local loc2 = vector.new( gps.locate( 2, false ) )
        turtle.forward()

        heading = loc1 - loc2

        facing = ( ( heading.x + math.abs( heading.x ) * 2 ) +
                   ( heading.z + math.abs( heading.z ) * 3 ) ) + 1
    end

    if facing > 4 then
        facing = 1
    end

    return facing
end

print( _getOrientation() )


local _Move = function( x, y, z )
    for i = 1, x do
        print( i )
    end
end


Position =
{
    Move = _Move
}

setmetatable( Position, {
    __index = function( table, key )
        if key == 'x' or key == 'y' or key == 'z' then
            return _pos[ key ]
        end
    end,

    __newindex = function( table, key, value )
        if key == 'x' or key == 'y' or key == 'z' then
            return _pos[ key ]
        else
            table[ key ] = value
        end
    end
})


print( "Position: " .. Position.x .. ", " .. Position.y .. ", " .. Position.z )
print( "Position module loaded" )
