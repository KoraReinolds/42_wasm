Compiler = gcc
CmpFlags = -Wall -Wextra -Werror

OUTN = libft

files = main

CFILES = $(files:%=%.c)
OFILES = $(files:%=%.o)

NAME = $(OUTN)

$(NAME): $(OFILES)
	$(Compiler) $(CmpFlags) $(OFILES) -o $(NAME)

%.o: %.c
	$(Compiler) $(CmpFlags) -c $< -o $@

all: $(NAME)

clean:
	rm -f $(NAME) $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re