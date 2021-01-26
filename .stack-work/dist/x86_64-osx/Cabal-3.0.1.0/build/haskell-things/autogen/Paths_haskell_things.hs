{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_haskell_things (
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

bindir     = "/Users/willlane/dev/haskell-things/.stack-work/install/x86_64-osx/0f31877803bbeb7698701ecdbd449cc61a4bd35da357b3d76bc4887441b4c198/8.8.4/bin"
libdir     = "/Users/willlane/dev/haskell-things/.stack-work/install/x86_64-osx/0f31877803bbeb7698701ecdbd449cc61a4bd35da357b3d76bc4887441b4c198/8.8.4/lib/x86_64-osx-ghc-8.8.4/haskell-things-0.1.0.0-FGG0XzB0rU6LJoQM1gZIY4-haskell-things"
dynlibdir  = "/Users/willlane/dev/haskell-things/.stack-work/install/x86_64-osx/0f31877803bbeb7698701ecdbd449cc61a4bd35da357b3d76bc4887441b4c198/8.8.4/lib/x86_64-osx-ghc-8.8.4"
datadir    = "/Users/willlane/dev/haskell-things/.stack-work/install/x86_64-osx/0f31877803bbeb7698701ecdbd449cc61a4bd35da357b3d76bc4887441b4c198/8.8.4/share/x86_64-osx-ghc-8.8.4/haskell-things-0.1.0.0"
libexecdir = "/Users/willlane/dev/haskell-things/.stack-work/install/x86_64-osx/0f31877803bbeb7698701ecdbd449cc61a4bd35da357b3d76bc4887441b4c198/8.8.4/libexec/x86_64-osx-ghc-8.8.4/haskell-things-0.1.0.0"
sysconfdir = "/Users/willlane/dev/haskell-things/.stack-work/install/x86_64-osx/0f31877803bbeb7698701ecdbd449cc61a4bd35da357b3d76bc4887441b4c198/8.8.4/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_things_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_things_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "haskell_things_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "haskell_things_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_things_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_things_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
