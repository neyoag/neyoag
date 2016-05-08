rm -rf public
rm -f config.toml
cp -a config.toml.public config.toml
hugo --theme=hugo_theme_harb
cd ../neyoag/
ls -a | grep -v -E '\.$' | grep -v -E '.git' | xargs rm -rf
cp -aR ../blog/public/* ./
git add .
git commit -m "build"
git push origin master
