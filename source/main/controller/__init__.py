from source import app

from source.main.function.__init__ import *

app.add_url_rule('/', view_func=reader)

app.add_url_rule('/refresh_token', methods=['POST'], view_func=jwt_required(refresh=True)(refresh_token))