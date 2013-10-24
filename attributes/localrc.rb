default['devstack']['localrc'] = {
  host_ip:               '127.0.0.1',
  admin_password:        'password',
  database_password:     'password',
  rabbit_password:       'password',
  service_token:         'password',
  service_password:      'password',
  dest:                  '/opt/stack',
  # reclone:               'yes',
  keystone_token_format: 'PKI',
  swift_replicas:        1,
  swift_hash:            '011688b44136573e209e',
  logfile:               '/opt/stack/logs/stack.sh.log',
  verbose:               true,
  log_color:             true,
  screen_logdir:         '/opt/stack/logs',
  enabled_services:  [
    'rabbit', # 'zeromq', 'qpid'
    'mysql',
    'key',               # Keystone
    'horizon',           # Horizon
    'n-api',             # Nova
    'n-crt',
    'n-obj',
    'n-cpu',
    'n-cond',
    'n-sch',
    'g-api',             # Glance
    'g-reg',
    # 's-proxy',         # Swift
    # 's-obj',
    # 's-container',
    # 's-account',
    'q-svc',             # Neutron
    'q-agt',
    'q-dhcp',
    'q-l3',
    'q-meta',
    'neutron',
    'q-lbaas',           # Neutron extensions
    'q-fwaas',
    # 'q-vpn',           # this effectively disables q-l3
    'cinder',            # Cinder
    'c-api',
    'c-vol',
    'c-sch',
    'heat',              # Heat
    'h-api',
    'h-api-cfn',
    'h-api-cw',
    'h-eng',
    'ceilometer-acompute',
    'ceilometer-acentral',
    'ceilometer-collector',
    'ceilometer-api',
    'ceilometer-alarm-notify',
    'ceilometer-alarm-eval'
    ],
  horizon_repo: 'https://github.com/openstack/horizon',
  horizon_branch:        'master',
  q_plugin:              'ml2',
  enable_tenant_tunnels: true,
  apache_enabled_services: 'keystone' # [ 'keystone', 'swift']
}
