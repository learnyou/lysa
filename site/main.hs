{-# LANGUAGE OverloadedStrings #-}

-- |This file builds and/or serves the site. To see the available
-- options run the command "runhaskell main.hs help".
-- 
-- You need to install Hakyll before running this. "cabal install
-- hakyll" will do the trick. If that doesn't work, please see
-- https://github.com/bitemyapp/learnhaskell for installation
-- instructions, then run the command again. If that still doesn't
-- work, please open an issue on
-- https://github.com/pharpend/lyse/issues .
-- 
-- You'll also need SASS to compile the stylesheets. You can get SASS
-- by running "gem install sass". If that doesn't work, please install
-- Ruby, then run the command again. If that still doesn't work,
-- please open an issue on https://github.com/pharpend/lyse/issues .
-- 
-- Once you have installed all of the dependencies, you can either
-- compile the program with "ghc main.hs", and then run "./main". The
-- resulting binary will be marginally faster, but the compilation
-- will create a plethora of stupid files in the working
-- directory. For that reason, I recommend simply running the script
-- with "runhaskell main.hs serve".
-- 
-- Copyright (C) 2014, Various Contributors.
-- 
-- For a list of contributors, please see the CONTRIBUTORS file in the
-- root directory in this repository.
-- 
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-- General Public License for more details.
-- 
-- Note that this particular file is licensed under the GPL, but the
-- input and output of this program is not. The input and output files
-- are licensed under the Creative Commons ShareAlike-4.0 license. If
-- you want to read that license, see the LICENSE file in the project
-- root.

import       Data.ByteString.Lazy (ByteString)
import       Data.ByteString.Lazy.Char8 (unpack)
import       Data.Monoid (mappend)
import       Hakyll
import       System.Posix.Resource
import       Text.Pandoc

sass = getResourceLBS
  >>= withItemBody (unixFilterLBS "sass" ["--stdin", "--style", "expanded"])
  >>= return . fmap unpack

main :: IO ()
main = hakyll $ do
  match "LICENSE" $ do
    route idRoute
    compile copyFileCompiler

  match "images/*" $ do
    route idRoute
    compile copyFileCompiler

  match "fonts/*" $ do
    route idRoute
    compile copyFileCompiler

  match "stylesheets/*" $ do
    route $ setExtension "css"
    compile sass

  match "pages/*" $ do
    route $ 
      gsubRoute "pages/" (const "") `composeRoutes`
      setExtension "html"
    defaultCompile

  match "chapters/*" $ do
    route $ setExtension "html"
    defaultCompile

  match "templates/*" $ compile templateCompiler

defaultCompile = compile $ pandocCompilerWith def
                             (def { writerHTMLMathMethod = MathJax
                                                             "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"
                                  }) >>= loadAndApplyTemplate "templates/default.html"
                                           defaultContext >>= relativizeUrls
