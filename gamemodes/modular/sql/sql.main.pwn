SQL_Connect() {
	g_iHandle = mysql_connect(SQL_HOSTNAME, SQL_USERNAME, SQL_DATABASE, SQL_PASSWORD);

	if (mysql_errno(g_iHandle) != 0) {
	    printf("[SQL] Connection to \"%s\" failed! Please check the connection settings...\a", SQL_HOSTNAME);
	}
	else {
		printf("[SQL] Connection to \"%s\" passed!", SQL_HOSTNAME);
	}
}

stock SQL_ReturnEscaped(const string[])
{
	new
	    entry[256];

	mysql_real_escape_string(string, entry, g_iHandle);
	return entry;
}

stock Float:cache_get_field_float(row, const field_name[])
{
	new
	    str[16];

	cache_get_field_content(row, field_name, str, g_iHandle, sizeof(str));
	return floatstr(str);
}