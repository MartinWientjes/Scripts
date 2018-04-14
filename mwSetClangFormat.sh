# //clang-format -help

# // https://clang.llvm.org/docs/ClangFormatStyleOptions.html
clang-format -style=llvm -dump-config > .clang-format.llvm
clang-format -style=Google -dump-config > .clang-format.Google
clang-format -style=Chromium -dump-config > .clang-format.Chromium
clang-format -style=Mozilla -dump-config > .clang-format.Mozilla
clang-format -style=WebKit -dump-config > .clang-format.WebKit

# BasedOnStyle (string)
# The style used for all options not specifically set in the configuration.

# This option is supported only in the clang-format configuration (both within -style='{...}' and the .clang-format file).

# Possible values:

# LLVM A style complying with the LLVM coding standards
# Google A style complying with Google’s C++ style guide
# Chromium A style complying with Chromium’s style guide
# Mozilla A style complying with Mozilla’s style guide
# WebKit A style complying with WebKit’s style guide