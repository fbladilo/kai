#tree sitter java madness
pushd /app/hermeto-output/deps/pip/
tar zxvf tree-sitter-0.24.0.tar.gz
mkdir /usr/include/tree_sitter
cp /app/hermeto-output/deps/pip/tree-sitter-0.24.0/tree_sitter/core/lib/src/parser.h /usr/include/tree_sitter
popd
