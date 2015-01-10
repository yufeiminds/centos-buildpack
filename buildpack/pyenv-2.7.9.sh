#!/bin/bash  

# system packages
yum -y install python-devel openssl openssl-devel gcc sqlite sqlite-devel mysql-
devel libxml2-devel libxslt-devel  

# Python 
wget http://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz  
tar -xzf Python-2.7.9.tgz  
cd Python-2.7.9  
./configure --prefix=/usr/local/python2.7 --with-threads --enable-shared  
make && make install  
ln -s /usr/local/python2.7/lib/libpython2.7.so /usr/lib  
ln -s /usr/local/python2.7/lib/libpython2.7.so.1.0 /usr/lib  
ln -s /usr/local/python2.7/bin/python2.7 /usr/bin  

# Fix the bug that yum not working on python2.7
rm /usr/bin/python
ln -s /usr/bin/python2.7 /usr/bin/python  
sed -i '1 s/python$/python2.6/g' /usr/bin/yum
/sbin/ldconfig -v

# easyinstall and pip 
wget http://pypi.python.org/packages/source/d/distribute/distribute-0.6.9.tar.gz
 --no-check-certificate  
tar xf distribute-0.6.9.tar.gz  
cd distribute-0.6.9  
python2.7 setup.py install  
/usr/local/python2.7/bin/easy_install pip  
ln -s /usr/local/python2.7/bin/pip /usr/bin  

# preinstall packages 
pip install mysql-python ipython requests readline beautifulsoup4 html5lib  
ln -s /usr/local/python2.7/bin/ipython /usr/bin  

# Done
echo rm dirs
rm Python-2.7.9 Python-2.7.9.tgz -r -f 
rm distribute-0.6.9 distribute-0.6.9.tar.gz -r -f
echo Finish Install
python2.7 -V
