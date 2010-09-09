
Overview:

Lucene is a high-performance, full-featured text search engine library. It is a 
technology suitable for nearly any application that requires full-text search.
I intend to take this code in a significantly different direction.  iPads and to a more limited extent, iPhone 4 and up iOS devices provide an interesting platform for full text search capabilities.  I wish to adapt Lucene to support the iOS platform more directly (the opposite of portability??) and to integrate it more fully with my S4iOSLib.


Purpose:

S4LuceneLib is an iOS native version of Apache's Lucene project.  The S4LuceneLib directory contains an XCode project that will build an iOS static library for inclusion in your project.  The iPhoneLuceneSearch directory contains a sample iPhone application using the library - it is intended for testing purposes at this point.  In fact, the sample application is not working properly at the initial commit to Github.  I understand the issues and will fix it shortly.


Usage (iOS):

    * git clone this project.
    * git clone the S4iOSLib project from my repositories.  Make sure the the "S4LuceneLibrary" and "S4iOSLibrary" directories
       are in the same directory, at the same level.
    * Build the S4iOSLib project.  You will need to build 'Simulator/Debug' and 'Device/Release' to populate the 'dist' directory
       with headers, resources, and the static library.
    * Add the needed headers and the static library from the S4iOSLib "dist" directory to your project.
    * Build the S4LuceneLib project.  You will need to build 'Simulator/Debug' and 'Device/Release' to populate the 'dist' directory
       with headers, resources, and the static library.
    * Add the needed headers and the static library from the S4LuceneLib "dist" directory to your project.
    * Add the following frameworks to Linked Libraries:
          o CoreGraphics.framework
          o Foundation.framework
          o UIKit.framework
    * Under 'Other Linker Flags' in the Test target, add -ObjC and -all_load


Origins:

Étoilé LuceneKit
=============

This version of Lucene is based upon the work of the Étoilé project:

http://etoileos.com/etoile/

and the source can be obtained via subversion with the following command:

svn co svn://svn.gna.org/svn/etoile/trunk/Etoile/Frameworks/LuceneKit/

Maintainer: Yen-Ju Chen <yjchenx at gmail dot com>
Authors: Yen-Ju Chen, Quentin Mathe, Manuel Guesdon
License: Apache License 2.0


tcurdt / lucenekit
=========================

Torsten Curdt has placed a copy of Étoilé's LuceneKit here on Github:

http://github.com/tcurdt/lucenekit

I have decided not  to fork the Github version as I have taken Torsten's version and merged it with the trunk version of Étoilé's LuceneKit as of revision 6331.


Apache Lucene
============

The original project is hosted at the Apache Software Foundation  Apache Lucene is an open source project available for free download at:

http://lucene.apache.org/