rm -r build
mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release ..
make -j 4

echo "\nCopying executables to project main folder..."
cp Experiments/exp ..
cd ..

./exp hash
mv *hash.svg Plots/Hash

./exp trie
mv *trie.svg Plots/TRIE


