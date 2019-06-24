---@class vector
vector = {}


---Create a new vector
---@param x number X
---@param y number Y
---@param z number Z
---@return vector
function vector.new( x, y, z ) end


---Adds vectorB to vectorA and returns the resulting vector. Can also be used by writing vectorA + vectorB.
---@param vectorB vector Vector to add
---@return vector Result
function vector:add( vectorB ) end


---Subtracts vectorB from vectorA and returns the resulting vector. Can also be used by writing vectorA - vectorB.
---@param vectorB vector Vector to subtract
---@return vector Result
function vector:sub( vectorB ) end


---Scalar multiplies vectorA with n and returns the resulting vector. Can also be used by writing vectorA * n.
---@param factor number Factor to use for multiplication
---@return vector Result
function vector:mul( factor ) end


---Returns the dot product of vectorA and vectorB.
---@param vectorB vector Vector to use for dot product
---@return vector Result
function vector:dot( vectorB ) end


---Returns the vector which resulted in the cross product of vectorA and vectorB.
---@param vectorB vector Vector to use for cross product
---@return vector Result
function vector:cross( vectorB ) end


---Returns the vector's length.
---@return number Length
function vector:length() end


---Normalizes the vector and returns the result as a new vector.
---@return vector Normalized vector
function vector:normalize() end


---Rounds the vector coordinates to the nearest integers and returns the result as a new vector.
---@return vector Rounded vector
function vector:round() end


---Returns a string representation of the vector in the form of "x,y,z".
---@return string String
function vector:tostring() end
