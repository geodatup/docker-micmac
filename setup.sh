echo "*******************************************************"
echo "**********        DOWNLOADING MICMAC         **********"
echo "**********  (This may take several minutes)  **********"
echo "**********         user : culture3d          **********"
echo "**********       password : culture3d        **********"
echo "*******************************************************"
cd /home
git clone https://github.com/micmacIGN/micmac
echo "*******************************************************"
echo "************       MICMAC DOWNLOADED       ************"
echo "*******************************************************"
echo " "
echo " "
echo " "
echo "*******************************************************"
echo "********          BUILDING  SOFTWARE          *********"
echo "*******************************************************"
cd micmac
mkdir build
cd build
cmake \
	-DWITH_QT5=1 \
	-DBUILD_POISSON=1 \
	-DBUILD_RNX2RTKP=1 \
	-DWITH_OPENCL=ON  \
	-DWITH_OPEN_MP=ON \
	-DWITH_ETALONPOLY=ON \
	-DWITH_DOXYGEN=ON \
	../
NBRP=$(cat /proc/cpuinfo | grep processor | wc -l)
make -j$NBRP
make install
echo "*******************************************************"
echo "************       SOFTWARE BUILDING       ************"
echo "*******************************************************"
echo "*******************************************************"
echo "*******************************************************"
echo "********    MicMac should now be set up     **********"
echo "********  Please report any inconvenience   **********"
echo "******** http://forum-micmac.forumprod.com  **********"
echo "******** Edit by Sylvain POULAIN for Docker **********"
echo "********    <sylvain.poulain@giscan.com>    **********"
echo "********     and Hugo ROUSSAFFA for RPI     ***********"
echo "********        <contact@geodatup.fr>        **********"
echo "*******************************************************"
