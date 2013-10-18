# kohana-log-database

A database log writer for Kohana 3.

This is a first version which works in Kohana 3.3. In the future there might be a more beautiful rendering of array data and maybe an easier installation. But for now it does its job.


## Installation

If you add this log writer to your Kohana installation as a module, add the module in your bootstrap.php – and also make sure the database module is added (and configured). Example:

	Kohana::modules(array(
		'database'   => MODPATH.'database',
		'logdb'      => MODPATH.'kohana-log-database',
	));


Manually add the required table to your database. You will find the structure in the file logs-schema-mysql.sql. Your database must be configured in Kohana with the database module.


## Usage

By default Kohana's bootstrap.php contains this line:

	Kohana::$log->attach(new Log_File(APPPATH.'logs'));

You can remove or comment it out if you no longer need it. To enable the database log writer add the following line *after* loading the module via `Kohana::modules()`:

	Kohana::$log->attach(new Log_Database('logs'));

The parameter of the constructor of class `Log_Database` represents the table name used for logging.