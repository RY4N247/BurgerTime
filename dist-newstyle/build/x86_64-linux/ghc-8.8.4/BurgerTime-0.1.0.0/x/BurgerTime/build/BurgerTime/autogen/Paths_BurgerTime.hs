{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_BurgerTime (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/ryanb/.cabal/bin"
libdir     = "/home/ryanb/.cabal/lib/x86_64-linux-ghc-8.8.4/BurgerTime-0.1.0.0-inplace-BurgerTime"
dynlibdir  = "/home/ryanb/.cabal/lib/x86_64-linux-ghc-8.8.4"
datadir    = "/home/ryanb/.cabal/share/x86_64-linux-ghc-8.8.4/BurgerTime-0.1.0.0"
libexecdir = "/home/ryanb/.cabal/libexec/x86_64-linux-ghc-8.8.4/BurgerTime-0.1.0.0"
sysconfdir = "/home/ryanb/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "BurgerTime_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "BurgerTime_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "BurgerTime_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "BurgerTime_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "BurgerTime_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "BurgerTime_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
