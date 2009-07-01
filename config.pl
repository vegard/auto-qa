# Example configuration file -- this will typically be customized for each
# machine. We try to provide sane defaults, however.

my $logger_config = {
	# serial devices to log from
	'serial-console' => [
		{
			device => 'ttyS0',
			baud => 115200,
		},
	],

	# network devices to log from
	'network-console' => [
		{
			port => 6666,
		},
	],
};

my $tester_config = {
	# serial device to log to (there can be just one)
	'serial-console' => {
		device => 'ttyS0',
		baud => 115200,
	},

	# network device to log to (multiple allowed)
	'network-console' => [
		{
			'target-ip' => '192.168.0.2',
			'target-port' => 6666,
		},
	],
};
