Redmine::Plugin.register :redmine_reports do
  name 'Redmine Reports plugin'
  author 'IdeaCrew, Inc'
  description ''
  version '0.0.1'
  url 'https://github.com/dchbx/redmine_reports'
  author_url 'http://ideacrew.com'
  menu :top_menu, :reports, { :controller => 'dchbxreports', :action => 'index' }, :caption => 'Reports'
  settings :default => {
    'slaShowProgressTime'  =>  7*24*60*60,
    'slas' => [
      {
        'type'          =>  'trackers',
        'id'            =>  '22',
        'timeToResolve' =>  2*24*60*60
      },
      {
        'type'          =>  'enumerations',
        'id'            =>  '16',
        'timeToResolve' =>  2*24*60*60
      },
      {
        'type'          =>  'enumerations',
        'id'            =>  '17',
        'timeToResolve' =>  5*24*60*60
      },
      {
        'type'          =>  'enumerations',
        'id'            =>  '18',
        'timeToResolve' =>  10*24*60*60
      },
      {
        'type'          =>  'enumerations',
        'id'            =>  '19',
        'timeToResolve' =>  30*24*60*60
      },
      {
        'type'          =>  'enumerations',
        'id'            =>  '20',
        'timeToResolve' =>  90*24*60*60
      }
    ]
  }, :partial => 'settings/report_settings'
end
