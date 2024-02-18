SRC := $(wildcard *.c)
SRC += $(wildcard vendor/*.c)
OBJS := $(patsubst %.c,build/%.o,$(notdir $(SRC)))

example: build/ $(OBJS)
	@echo "  CC \t\033[35;1m$(notdir $@)\033[0m"
	@$(CC) $(OBJS) -o $@ -lm

build/:
	@mkdir -p build

build/%.o: %.c
	@echo "  CC \t$(notdir $@)"
	@$(CC) $(CCPARAMS) -o $@ -c $< -I include/ -I .

build/%.o: vendor/%.c
	@echo "  CC \t$(notdir $@)"
	@$(CC) $(CCPARAMS) -o $@ -c $< -I include/ -I .

run: example
	@./example

clean:
	@rm -rf build/ example