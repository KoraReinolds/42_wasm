include common.mk

all:
	$(MAKE) -C $(FILLIT_DIR)

clean:
	$(MAKE) -C $(FILLIT_DIR) clean

fclean: clean
	$(MAKE) -C $(FILLIT_DIR) fclean

re: fclean all

.PHONY: all clean fclean re