#!/bin/bash
# --------------------------------------------------------------------------------------------------
# Exocortex Bootloader
# (c) 2025 Phext, Inc.
# License: MIT
# --------------------------------------------------------------------------------------------------
EXO_PATH="/etc/exocortex"
if [ ! -d $EXO_PATH ]; then
  mkdir -p $EXO_PATH
fi
SAAP_CONF="$EXO_PATH/saap.conf"
if [ ! -f $SAAP_CONF ]; then
  cargo install sq phext-shell
  HAVE_RUST_PATH=`echo $PATH |sed 's/:/\n/g' |grep -c 'cargo'`
  if [ $HAVE_RUST_PATH -eq 0 ]; then
    export PATH="$PATH:/root/.cargo/bin"
  fi
  HAVE_PHEXT_POWERS=`phext-shell help |grep -c 'subspace'`
  echo "phext_shell=$HAVE_PHEXT_POWERS" >$SAAP_CONF
else
  HAVE_PHEXT_POWERS=`cat $SAAP_CONF |sed 's/phext_shell=//g'`
fi
if [ $HAVE_PHEXT_POWERS -ne 2 ]; then
  echo
  echo "WARNING:"
  echo
  echo "You appear to be running on a system without Rust and/or the Internet."
  echo "Your path will be a little bumpy, but it is manageable."
  echo "Your first step is to build a copy of libphext and phext-shell."
  echo "We'll assume that you only have a C compiler..."
  echo "(Failing that, we will build tinycc by hand."
  echo
fi
echo "Welcome, to the Exocortex."
exit 0
#!/bin/bash
echo "Hello from 1.1.1/1.1.1/1.1.2"
exit 0#!/bin/bash
echo "Hello from 1.1.1/1.1.1/1.1.3"
exit 0#!/bin/bash
echo "Hello from 1.1.1/1.1.1/1.2.1"
exit 0#!/bin/bash
echo "Hello from 1.1.1/1.1.1/3.1.1"
exit 0#!/bin/bash
echo "Hello from 1.1.1/1.1.4/1.2.1"
exit 0#!/bin/bash
echo "Hello from 1.1.1/1.5.4/2.2.2"
exit 0
#!/bin/bash
echo "Hello from 1.1.1/2.5.4/1.1.1"
exit 0
#!/bin/bash
echo "Hello from 1.1.2/2.5.4/1.1.1"
exit 0
#!/bin/bash
echo "Hello from 1.2.2/2.5.4/1.1.1"
exit 0
#!/bin/bash
echo "Hello from 2.2.2/2.5.4/1.1.1"
exit 0
