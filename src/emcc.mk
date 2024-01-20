include common.mk

Compiler = emcc

OUT_NAME = index.js
OUTPUT_DIR = ./emcc/$(FILLIT_NAME)

CFILES = $(FILLIT_DIR)/$(files:%=%.c)
NAME = $(OUTPUT_DIR)/$(OUT_NAME)

$(NAME): $(CFILES)
	@mkdir -p $(OUTPUT_DIR)
	@$(Compiler) $(CmpFlags) $(CFILES) -o $(NAME) -s FORCE_FILESYSTEM=1

all: $(OUTPUT_DIR) $(NAME)

fclean:
	rm -f $(NAME) $(NAME:.js=.wasm)

re: fclean all

.PHONY: all fclean re