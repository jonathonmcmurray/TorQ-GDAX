# if running the kdb+tick example, change these to full paths
# some of the kdb+tick processes will change directory, and these will no longer be valid
export TORQHOME=${PWD}
export KDBCONFIG=${TORQHOME}/config
export KDBCODE=${TORQHOME}/code
export KDBLOG=${PWD}/logs
export KDBHTML=${TORQHOME}/html
export KDBLIB=${TORQHOME}/lib

#Sets the application specific configuration directory
export KDBAPPCONFIG=${PWD}/appconfig
#export KDBAPPCODE=${PWD}/code
#set KDBBASEPORT to the default value for a TorQ Installation
export KDBBASEPORT=6000
# if using the email facility, modify the library path for the email lib depending on OS
# e.g. linux:
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$KDBLIB/l[32|64]
# e.g. osx:
# export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$KDBLIB/m[32|64]

# SSL verification
if [[ ! -f ${PWD}/certs/cabundle.pem ]]; then
  curl https://curl.haxx.se/ca/cacert.pem > ${PWD}/certs/cabundle.pem
fi
export SSL_CA_CERT_FILE=${PWD}/certs/cabundle.pem
