ls 
if [ -d hello-world-war ] 
then 
rm -rf *
fi
git clone https://github.com/chetanvishwakarma22/hello-world-war.git
cd hello-world-war
mvn clean package
ls -lrt
