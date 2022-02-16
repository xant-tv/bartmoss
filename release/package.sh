cd ..
rm -f release/bartmoss.zip
zip -r release/bartmoss.zip . -x 'docs/*' -x 'release/*' -x @.gitignore -x *.gitignore -x *.sh -x *.md
cd release
mkdir -p 'bin/x64/plugins/cyber_engine_tweaks/mods/bartmoss'
unzip bartmoss.zip -d 'bin/x64/plugins/cyber_engine_tweaks/mods/bartmoss'
rm -f bartmoss.zip
zip -r bartmoss.zip . -x *.sh -x *.zip
rm -rf 'bin'