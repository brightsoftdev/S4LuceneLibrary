#!/bin/sh
if [ -e "build/Release-iphoneos/libS4LuceneLib.a" ] ; then
	if [ -e "build/Debug-iphonesimulator/libS4LuceneLib.a" ] ; then
		lipo -create "build/Release-iphoneos/libS4LuceneLib.a" "build/Debug-iphonesimulator/libS4LuceneLib.a" -output "dist/libS4LuceneLib.a"
		cp Classes/Lucene/*.h dist/Headers/
		cp Resources/* dist/Resources
	fi
fi

