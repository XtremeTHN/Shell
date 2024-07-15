sources = [
    'App.vala',
    'Utils.vala',
    'Components/TopBar.vala'
]

vala_dependency = [
    dependency('gtk4'),
    dependency('glib-2.0'),
    dependency('libadwaita-1'),
    dependency('gtk4-layer-shell-0')
]

blueprints = custom_target('blueprints',
      input: files(
        'Blueprints/topbar.blp'
      ),
     output: '.',
    command: [find_program('blueprint-compiler'), 'batch-compile', '@OUTPUT@', '@CURRENT_SOURCE_DIR@', '@INPUT@'],
)

sources += gnome.compile_resources(
    'shell-resources', 
    'com.github.XtremeTHN.Shell.gresource.xml', 
    dependencies: blueprints,
          c_name: 'kshell')

executable('kagent', sources,
            dependencies: vala_dependency,
                 install: true,
          )