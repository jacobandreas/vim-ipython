function! IPythonTraceback()
python << EOF
command = """
import sys
import traceback
path, line = traceback.extract_tb(sys.last_traceback)[-1][0:2]
'edit +%d %s' % (line, path)
"""
reply = get_output(command)
vim.command(reply[1:-1])
EOF
endfunction
