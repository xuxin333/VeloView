# This maintains the links for all sources used by this superbuild.
# Simply update this file to change the revision.
# One can use different revision on different platforms.
# e.g.
# if (UNIX)
#   ..
# else (APPLE)
#   ..
# endif()

if (WIN32)
  add_revision(python
    URL "http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tgz"
    URL_MD5 "2cf641732ac23b18d139be077bd906cd")
else()
  add_revision(python
    URL "http://paraview.org/files/v3.98/dependencies/Python-2.7.2.tgz"
    URL_MD5 "0ddfe265f1b3d0a8c2459f5bf66894c7")
endif()

add_revision(qt
  URL "http://releases.qt-project.org/qt4/source/qt-everywhere-opensource-src-4.8.2.tar.gz"
  URL_MD5 3c1146ddf56247e16782f96910a8423b)

add_revision(pythonqt
  GIT_REPOSITORY git://github.com/commontk/PythonQt.git
  GIT_TAG patched-3)

add_revision(paraview
  GIT_REPOSITORY git://github.com/patmarion/ParaView.git
  GIT_TAG PythonQtPlugin)

add_revision(velodyneviewer
  GIT_REPOSITORY git://kwsource.kitwarein.com/miscellaneousprojectsuda/velodyneviewer.git
  GIT_TAG pat-wip)

if (WIN32)
  add_revision(pcap
    GIT_REPOSITORY git://github.com/patmarion/winpcap.git
    GIT_TAG master)
else()
  add_revision(pcap
    URL "http://www.tcpdump.org/release/libpcap-1.4.0.tar.gz"
    URL_MD5 "56e88a5aabdd1e04414985ac24f7e76c")
endif()

add_revision(boost
  URL "http://downloads.sourceforge.net/project/boost/boost/1.50.0/boost_1_50_0.tar.gz"
  URL_MD5 dbc07ab0254df3dda6300fd737b3f264)