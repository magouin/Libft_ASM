SRC_NAME =	ft_bzero.s \
			ft_strlen.s \
			ft_strcat.s \
			ft_isalpha.s \
			ft_isdigit.s \
			ft_isalnum.s \
			ft_isascii.s \
			ft_isprint.s \
			ft_memcpy.s \
			ft_puts.s \
			ft_strdup.s

OBJ_PATH = ./objs/

NAME = lib.a

NAME_TEST = main_test

CC = /Users/magouin/brew/Cellar/nasm/2.13.03/bin/nasm

LINKER = gcc -m64

CFLAGS = -f macho64

SRC_PATH = ./srcs/

OBJ_NAME = $(SRC_NAME:.s=.o)

SRC = $(addprefix $(SRC_PATH),$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH),$(OBJ_NAME))

all : $(NAME)

$(OBJ_PATH)%.o: $(SRC_PATH)%.s
	@mkdir $(OBJ_PATH) 2> /dev/null || echo "" > /dev/null
	$(CC) -I /lib/ld-linux.so.2 $(CFLAGS) -o $@ $<

$(NAME) : $(OBJ)
	ar rc $(NAME) $^
	gcc main.c $(NAME) -o $(NAME_TEST)

clean:
	@/bin/rm -f $(OBJ)
	@/bin/rm -rf $(OBJ_PATH)

fclean: clean
	@/bin/rm -f $(NAME)
	@/bin/rm -f $(NAME_TEST)

re: fclean all

.PHONY : all clean fclean re
