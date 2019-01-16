# 1) Download all schemas from https://github.com/Masa331/pohoda_xsd/

# 2) install scaffold_parser - gem install scaffold_parser

# 3) run following in directory with schemas:
# scaffold_parser meta.xsd --namespace Pohoda;

# 4) run follwing here with adjusted paths
# rm lib/pohoda/parsers/* -rf;
# cp ~/code/other/pohoda_xsd/tmp/parsers/* ../lib/pohoda/parsers/ -r;
# rm lib/pohoda/builders/* -rf;
# cp ~/code/other/pohoda_xsd/tmp/builders/* ../lib/pohoda/builders/ -r;
# cp ~/code/other/pohoda_xsd/tmp/requires.rb ../lib/pohoda/
# rm lib/pohoda/parsers -rf;
# rm lib/pohoda/builders -rf;
# cp ~/code/other/pohoda_xsd/tmp/* ../lib/pohoda/ -r
