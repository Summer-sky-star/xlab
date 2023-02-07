#! /bin/sh
#
# Xmanager.sh version 1.3 by NetSarang Computer.
#
# copy this file to SUN host and run it at the xterm command prompt.
#
#	Usage: Xmanager.sh -display hostname:0
#
# openwin shell script for Solaris 2.5
# @(#)openwin 23.50 92/10/23

# environment variables that this shell script sets/changes:
export DISPLAY HELPPATH LD_LIBRARY_PATH LANG
export MANPATH OPENWINHOME PATH XFILESEARCHPATH XAPPLRESDIR

# look in /usr/openwin if OPENWINHOME is not set.
OPENWINHOME="${OPENWINHOME-/usr/openwin}"
LD_LIBRARY_PATH=$OPENWINHOME/lib:/usr/lib
XAPPLRESDIR=$OPENWINHOME/lib/X11/app-defaults

# error message function
err () {
	echo "`basename $0`: $@" 1>&2
	exit 1
}

# Help message function
HelpMessage() {
	echo "This script supports the following command line options"
	echo "-display          used to specify the display name"
	echo "-lang             used to specify the locale name"
	echo "-wm               used to specify the name of the window manager"
	echo "-noclock          if specified, xclock is not started"
	echo "-includedemo      if specified, adds $OPENWINHOME/bin/demo to your path"
	echo "-help             this message"
	echo "Any other arguments are just ignored."
}

# don't bother to continue if X is not installed.
if [ ! -f $OPENWINHOME/bin/X ]; then
	err \
"OpenWindows is not installed correctly in $OPENWINHOME.
Set the environment variable \$OPENWINHOME to the directory
where OpenWindows is installed."
fi

## IF $OPENWINHOME is not set to /usr/openwin...
##	print error message and then exit
if [ $OPENWINHOME != "/usr/openwin" ]; then

##  IF /usr/openwin does not exist...
##	create link to $OPENWINHOME
    if [ ! -r /usr/openwin ]; then
	echo ""
	echo "	OpenWindows is not installed in the default location"
	echo "	of /usr/openwin.  As root, type the following command:"
	echo ""
	echo "		# ln -s $OPENWINHOME /usr/openwin"

##  ELSE /usr/openwin exists...
##	move it aside
##	create link to $OPENWINHOME
    else
	echo ""
	echo "	OpenWindows is not installed in the default location"
	echo "	of /usr/openwin.  As root, type the following commands:"
	echo ""
	echo "		# mv /usr/openwin /usr/openwin.save"
	echo "		# ln -s $OPENWINHOME /usr/openwin"
    fi

##  set $OPENWINHOME to /usr/openwin
    echo ""
    echo "	As yourself, set OPENWINHOME to /usr/openwin and restart"
    echo "	OpenWindows.  See the Solaris Getting Started guide for"
    echo "	more details."
    echo ""
    exit 1
fi

INCLUDEDEMOPATH=0
NOCLOCK=0
LANG=ko

# Parse command line args.
while [ $# -gt 0 ]; do
    case "$1" in
	-includedemo)
	    INCLUDEDEMOPATH=1
	    ;;
	-display)
	    if [ $# -lt 2 ]; then
		err "$1 option requires a display name"
	    fi
	    shift
	    DISPLAY="$1"
	    ;;
	-lang)
	    if [ $# -lt 2 ]; then
		err "$1 option requires a locale name"
	    fi
	    shift
	    LANG="$1"
	    ;;
	:*)
	    err "You should use \"hostname:0\" instead of \"$1\""
	    ;;
	-wm)
	    if [ $# -lt 2 ]; then
		err "$1 option requires a window manager command"
	    fi
	    shift
	    OW_WINDOW_MANAGER="$1"
	    export OW_WINDOW_MANAGER
	    ;;
	-noclock)
	    NOCLOCK=1
	    ;;
	-help)
	    HelpMessage
	    exit 0
	    ;;
	*)
	    ;;
    esac
    shift
done

# complain if $DISPLAY doesn't begin with a hostname.
case "$DISPLAY" in
    :*)
	err \
"The display name \"$DISPLAY\" is not allowed in the Xmanager program.
You should use \"/absolute-path/Xmanager.sh -display \$DISPLAY\"
in your Xremocon program."
	;;
    "")
	err \
"The display environment variable \$DISPLAY is not specified.
You should use \"/absolute-path/Xmanager.sh -display \$DISPLAY\"
in your Xremocon program."
	;;
    *)
	;;
esac

# Add to the path variable named by $1 the component $2.  $3 must be
# "append" or "prepend" to indicate where the component is added.
addpath () {
    eval value=\"\$$1\"
    case "$value" in
	*:$2:*|*:$2|$2:*|$2)
	    result="$value"
	    ;;
	"")
	    result="$2"
	    ;;
	*)
	    case "$3" in
		p*)
		    result="$2:${value}"
		    ;;
		*)
		    result="${value}:$2"
		    ;;
	    esac
    esac
    eval $1=$result
    unset result value
}

# convenience routine which appends a string to a path.
append () {
    addpath "$1" "$2" append
}

# convenience routine which prepends a string to a path.
prepend () {
    addpath "$1" "$2" prepend
}

# add $OPENWIN/mumble to several related environment variables.
[ $INCLUDEDEMOPATH -eq 1 ] && prepend PATH $OPENWINHOME/demo

append	HELPPATH	$OPENWINHOME/lib/locale
append	HELPPATH	$OPENWINHOME/lib/help
prepend XFILESEARCHPATH	$OPENWINHOME/lib/locale/%L/%T/%N%S
append	XFILESEARCHPATH	$OPENWINHOME/lib/%T/%N%S
prepend PATH		$OPENWINHOME/bin

if [ -d $OPENWINHOME/share/man ]; then
    case "$MANPATH" in
    "") MANPATH="$OPENWINHOME/share/man:/usr/man" ;;
    *)  prepend MANPATH $OPENWINHOME/share/man ;;
    esac
fi

# Get rid of our function definitions because a bug in some versions of
# the SunOS sh will turn their names into environment variables otherwise.
unset err addpath append prepend

# The first X app prevents Xmanager reset.
# Don't delete the next line.
if [ $NOCLOCK -eq 0 -f $OPENWINHOME/bin/xclock ]; then
    $OPENWINHOME/bin/xclock -iconic -geom -0+0 &
fi

xrdb -retain $OPENWINHOME/lib/Xdefaults	# Load Default X11 resource database
if [ -f $HOME/.Xdefaults ]; then
    xrdb -retain -merge $HOME/.Xdefaults # Load Users X11 resource database
fi

if [ "$OW_WINDOW_MANAGER" ]; then	    # Alternate Window Manager
    $OW_WINDOW_MANAGER &		    # Start Alt Window Manager
    xsetroot -def			    # Clear root window
    dsdm &				    # OpenLook Drop Site Database
    unset OW_WINDOW_MANAGER
else
    olwm -3 &
fi

if [ -x $HOME/.openwin-init ]; then
    $HOME/.openwin-init	&		# Custom OpenWindows tools
else
    $OPENWINHOME/lib/openwin-init &  	# Default OpenWindows tools
fi

exit 0
