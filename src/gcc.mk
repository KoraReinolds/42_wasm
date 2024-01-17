include common.mk

Compiler = gcc

OUTN = libft
OUTPUT_DIR = ./gcc

CFILES = $(files:%=%.c)
OFILES = $(files:%=./gcc/%.o)
NAME = $(OUTPUT_DIR)/$(OUTN)

$(NAME): $(OFILES)
	@$(Compiler) $(CmpFlags) $(OFILES) -o $(NAME)

./gcc/%.o: %.c
	@$(Compiler) $(CmpFlags) -c $< -o $@

all: $(NAME)

clean:
	rm -f $(NAME) $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re