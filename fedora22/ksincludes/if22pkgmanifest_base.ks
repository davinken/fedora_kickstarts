###########################################################################
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# |i|f|2|2|p|k|g|m|a|n|i|f|e|s|t|_|b|a|s|e|.|k|s|
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# if22pkgmanifest_base.ks
# 25sep2015/David Ramirez
# Manifest of RPM packages / package groups to be installed.
#   Package groups (prepend with @)
#   Individual packages (prepend with - to exclude/remove).
#
# List assembled based on previous F20 selections, plus some lookup from
# samples found in GitHub.
###########################################################################

#############################################################################
# Environment declaration (only one possible)
# @^Fedora-Workstation  COMMENT THIS OUT. DOESNT LIKE WITH OR W/O DASH.
#                       AND IS POORLY DOCUMENTED.
#############################################################################

# Now the actual package groups:
@admin-tools
@authoring-and-publishing
@base-x
@c-development
@core
@desktop-debugging
@development-tools
@directory-client
@eclipse
@fedora-release-nonproduct
@fonts
@gnome-apps
@gnome-desktop
@guest-agents
@guest-desktop-agents
@input-methods
@internet-browser
@java-platform
@libreoffice
@multimedia
@network-file-system-client
@online-docs
@printing
@rpm-development-tools
@sound-and-video
@standard
@text-internet

# (this makes a good bulk of > 1000 pgs).
## END OF BASE PACKAGE MANIFEST
