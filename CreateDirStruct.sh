mkdir MWtestHierachie
cd MWtestHierachie

mkdir L1a
mkdir L1b
mkdir L1c

cd L1a 
touch fileL1a{1..10}
mkdir L2a
mkdir L2b
mkdir L2c
touch L2a/fileL2a{1..10}
touch L2b/fileL2b{1..10}
touch L2c/fileL2c{1..10}
cd ..

cd L1b
touch fileL1b{1..10}
mkdir L2d
mkdir L2e
mkdir L2f
touch L2d/fileL2d{1..10}
touch L2e/fileL2e{1..10}
touch L2f/fileL2f{1..10}
cd ..

cd L1c
touch fileL1c{1..10}
mkdir L2g
mkdir L2h
mkdir L2i
touch L2g/fileL2g{1..10}
touch L2h/fileL2h{1..10}
touch L2i/fileL2i{1..10}
cd ..
