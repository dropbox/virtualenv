set -eux

cd $(dirname $0)

SETUPTOOLS=setuptools-12.0.5-py2.py3-none-any
rm -f $SETUPTOOLS.whl
cd $SETUPTOOLS
find -name '*.pyc' -delete
zip ../$SETUPTOOLS.whl -r *
cd ..

PIP=pip-6.0.8-py2.py3-none-any
rm -f $PIP.whl
cd $PIP
find -name '*.pyc' -delete
zip ../$PIP.whl -r *
cd ..
