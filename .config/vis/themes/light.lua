-- Eight-color scheme
local lexers = vis.lexers

local color1 = 'fore:#9090D0,bold'
local muted = 'fore:#909090'

lexers.STYLE_DEFAULT = 'back:default,fore:default'
lexers.STYLE_NOTHING = 'back:white'
lexers.STYLE_CLASS = muted
lexers.STYLE_COMMENT = muted
lexers.STYLE_CONSTANT = color1
lexers.STYLE_DEFINITION = muted
lexers.STYLE_ERROR = 'fore:red,italics'
lexers.STYLE_FUNCTION = muted
lexers.STYLE_KEYWORD = muted
lexers.STYLE_LABEL = 'fore:red'
lexers.STYLE_NUMBER = color1
lexers.STYLE_OPERATOR = ''
lexers.STYLE_REGEX = color1
lexers.STYLE_STRING = color1
lexers.STYLE_PREPROCESSOR = muted
lexers.STYLE_TAG = color1
lexers.STYLE_TYPE = muted
lexers.STYLE_VARIABLE = ''
lexers.STYLE_WHITESPACE = ''
lexers.STYLE_EMBEDDED = color1
lexers.STYLE_IDENTIFIER = ''

lexers.STYLE_LINENUMBER = 'fore:black'
lexers.STYLE_LINENUMBER_CURSOR = lexers.STYLE_LINENUMBER
lexers.STYLE_CURSOR = 'reverse'
lexers.STYLE_CURSOR_PRIMARY = lexers.STYLE_CURSOR..',fore:red'
lexers.STYLE_CURSOR_LINE = 'reverse'
lexers.STYLE_COLOR_COLUMN = 'back:red'
lexers.STYLE_SELECTION = 'back:#dddddd,fore:default,reverse'
lexers.STYLE_STATUS = ''
lexers.STYLE_STATUS_FOCUSED = 'fore:default'
lexers.STYLE_SEPARATOR = lexers.STYLE_DEFAULT
lexers.STYLE_INFO = 'fore:default,back:default'
lexers.STYLE_EOF = 'fore:blue'
