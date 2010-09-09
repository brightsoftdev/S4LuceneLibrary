#!/bin/sh
if [ -e "dist/libS4LuceneLib.a" ] ; then
  rm dist/libS4LuceneLib.a
fi

if [ -e "dist/Headers/Analysis.h" ] ; then
  rm dist/Headers/*.h
fi

if [ -e "dist/Resources/Lucene.png" ] ; then
  rm dist/Resources/*.png
fi

if [ -e "dist/Resources/S4WebView.xib" ] ; then
  rm dist/Resources/*.xib
fi

