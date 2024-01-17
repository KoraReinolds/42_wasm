include common.mk

Compiler = emcc

OUTN = libft.js
OUTPUT_DIR = ./emcc

CFILES = $(files:%=%.c)
NAME = $(OUTPUT_DIR)/$(OUTN)

$(NAME): $(CFILES)
	@$(Compiler) $(CmpFlags) $(CFILES) -o $(NAME) -s FORCE_FILESYSTEM=1

all: $(OUTPUT_DIR) $(NAME)

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

clean:
	rm -f $(NAME)

fclean: clean
	rm -f $(NAME) $(NAME:.js=.wasm)

re: fclean all

.PHONY: all clean fclean re