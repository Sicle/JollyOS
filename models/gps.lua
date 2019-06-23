---@class gps
gps = {}


---@function Tries to retrieve the computer or turtles own location. On success, returns the location of the turtle’s modem. On failure (if no responses are received for timeout seconds, by default 2), returns nil. If debug is true, debug messages are printed.
---@param timeout number Amount of time in seconds to try for
---@param debug boolean Enable/Disable debugging
---@return number, number, number X, Y, Z Coordinates
locate = function( timeout, debug ) end
