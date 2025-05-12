def get_sql_string(filename):
    with open(filename, 'r') as f:
        sql = f.read()
    return sql 