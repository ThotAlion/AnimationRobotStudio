import pypot.robot

my_config = {}
my_config['controllers'] = {}
my_config['controllers']['arm'] = {
    'port': '/dev/ttyAMA0',
    'sync_read': True,
    'attached_motors': ['arm'],
    'protocol': 2,
}
my_config['motorgroups'] = {
    'arm': ['m1','m2','m3','m4','m5','m6']
}
my_config['motors'] = {}
my_config['motors']['m1'] = {
    'id': 1,
    'type': 'XL-320',
    'orientation': 'direct',
    'offset': 0.0,
    'angle_limit': (-90.0, 90.0),
}
my_config['motors']['m2'] = {
    'id': 1,
    'type': 'XL-320',
    'orientation': 'direct',
    'offset': 0.0,
    'angle_limit': (-90.0, 90.0),
}
my_config['motors']['m3'] = {
    'id': 1,
    'type': 'XL-320',
    'orientation': 'direct',
    'offset': 0.0,
    'angle_limit': (-90.0, 90.0),
}
my_config['motors']['m4'] = {
    'id': 1,
    'type': 'XL-320',
    'orientation': 'direct',
    'offset': 0.0,
    'angle_limit': (-90.0, 90.0),
}
my_config['motors']['m5'] = {
    'id': 1,
    'type': 'XL-320',
    'orientation': 'direct',
    'offset': 0.0,
    'angle_limit': (-90.0, 90.0),
}
my_config['motors']['m6'] = {
    'id': 1,
    'type': 'XL-320',
    'orientation': 'direct',
    'offset': 0.0,
    'angle_limit': (-90.0, 90.0),
}

robot = pypot.robot.from_config(my_config)