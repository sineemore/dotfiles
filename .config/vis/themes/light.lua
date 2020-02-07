-- Eight-color scheme
local lexers = vis.lexers
-- light
lexers.STYLE_DEFAULT = 'back:default,fore:default'
lexers.STYLE_NOTHING = 'back:white'
lexers.STYLE_CLASS = 'fore:red,bold'
lexers.STYLE_COMMENT = 'fore:blue'
lexers.STYLE_CONSTANT = 'fore:red,bold'
lexers.STYLE_DEFINITION = 'fore:blue,bold'
lexers.STYLE_ERROR = 'fore:red,italics'
lexers.STYLE_FUNCTION = 'fore:blue,bold'
lexers.STYLE_KEYWORD = 'fore:red,bold'
lexers.STYLE_LABEL = 'fore:red,bold'
lexers.STYLE_NUMBER = 'fore:red,bold'
lexers.STYLE_OPERATOR = ''
lexers.STYLE_REGEX = 'fore:red,bold'
lexers.STYLE_STRING = 'fore:red,bold'
lexers.STYLE_PREPROCESSOR = 'fore:blue,bold'
lexers.STYLE_TAG = 'fore:red,bold'
lexers.STYLE_TYPE = 'fore:red,bold'
lexers.STYLE_VARIABLE = 'fore:blue,bold'
lexers.STYLE_WHITESPACE = ''
lexers.STYLE_EMBEDDED = 'back:blue,bold'
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
lexers.STYLE_INFO = 'fore:default,back:default,bold'
lexers.STYLE_EOF = 'fore:blue'