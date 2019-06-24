---@class textutils
textutils = {}


---Writes string text at current cursor position, character-by-character. Number argument rate is optional and is defaulted to 20. The higher the value of rate, the faster text is written (passing a value of 1 writes one character per second).
---@param text string Text to write
---@param rate number Characters to write per second
---@return nil
function textutils.slowWrite( text, rate ) end


---Prints string text at current cursor position, character-by-character. Number argument rate is optional and is defaulted to 20. The higher the value of rate, the faster text is printed (passing a value of 1 prints one character per second). This function also prints a newline.
---@param text string Text to print
---@param rate number Characters to print per second
---@return nil
function textutils.slowPrint( text, rate ) end


---Takes input time and formats it in a more readable format. If the second value is true, returns time in twenty-four hour format; if the second value is false, returns time in twelve-hour format, with AM or PM. Default for twentyFourHour is false.
---@param time number Time in epoch seconds??
---@param twentyFourHour boolean True for 24 hour (military) notation
---@return string Formatted time
function textutils.formatTime( time, twentyFourHour ) end


---Prints tables in an ordered form. Each table is a row, the column width is auto-adjusted. If it encounters a number instead of a table then sets the text color to it.
---@param table table Table to print
---@param color number Color for numbers
---@return nil
function textutils.tabulate( table, color, table2, color2, ... ) end


---Prints tables in an ordered form, like textutils.tabulate. However, it waits for confirmation before scrolling down.
---@param table table Table to print
---@param color number Color for numbers
---@return nil
function textutils.pagedTabulate( table, color, table2, color2, ... ) end


---Prints string text onto the screen, but waits for confirmation (after at least freeLines have been scrolled) before scrolling down further. Default for freeLines is 0.
---@param text string Text to print
---@param freeLines number Amount of lines to wait
---@return number Amount of lines printed
function textutils.pagedPrint( text, freeLines ) end


---Returns a string representation of the data data for storage or transmission. Also exists as textutils.serialise under CC 1.6 or later.
---@param data table|string|number|boolean|nil Object or data to serialize
---@return string Serialized data
function textutils.serialize( data ) end


---Returns the data reassembled from string serializedData. Used mainly together with textutils.serialize(). Also exists as textutils.unserialise under CC 1.6 or later.
---@param data string Serialized data
---@return any Unserialized data
function textutils.unserialize( data ) end


---Returns a JSON representation of the data data in a form of a string, mainly for command usage. Also exists as textutils.serialiseJSON. Requires CC 1.7 or later.
---@param data table|string|number|boolean Data to serialize
---@param unquoteKeys boolean When true, removes quotes from keys
---@return string Serialized JSON data
function textutils.serializeJSON( data, unquoteKeys ) end


---Makes a string safe to encode into a url. Spaces are replaced with +s. Unsafe characters such as '\', '£' and '}' are translated into ASCII code and preceded with a % for transmission.
---@param string string String to encode
---@return string Encoded string
function textutils.urlEncode( string ) end


---Returns a list of strings that could be combined with the provided name to produce valid entries in the specified environment. Requires version 1.74 or later.
---@param partialName string Partial name
---@param environment table Table to use for matched entries
---@return table Possible matches
function textutils.complete( partialName, environment ) end
