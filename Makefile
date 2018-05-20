SRC_NAME =	hello_world.s \
			ft_bzero.s \
			ft_strlen.s \
			ft_strcat.s

OBJ_PATH = ./objs/

NAME = lib

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
	$(CC) $(CFLAGS) -o $@ $<

$(NAME) : $(OBJ)
	$(LINKER) -lc $^ -o $@

clean:
	@/bin/rm -f $(OBJ)
	@/bin/rm -rf $(OBJ_PATH)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all

.PHONY : all clean fclean re
