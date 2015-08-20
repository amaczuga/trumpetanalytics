YML_FILES := $(wildcard *.yml)
YMLTEST := $(YML_FILES:.yml=.ymltest)

all: $(YMLTEST)

%.ymltest: %.yml
	ruby -ryaml -e 'YAML::load(STDIN.read)' <$<
