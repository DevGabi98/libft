//HEADER

Library = libft

files = ft_memset\
		ft_bzero\
		ft_memcpy\
		ft_memccpy\
		ft_memmove\
		ft_memchr\
		ft_memcmp\
		ft_strlen\
		ft_strdup\
		ft_strcpy\
		ft_strncpy\
		ft_strcat\
		ft_strncat\
		ft_strlcat\
		ft_strchr\
		ft_strrchr\
		ft_strstr\
		ft_strnstr\
		ft_strcmp\
		ft_strncmp\
		ft_atoi\
		ft_isalpha\
		ft_isdigit\
		ft_isalnum\
		ft_isascii\
		ft_isprint\
		ft_toupper\
		ft_tolower\
	//additional
		ft_memalloc\
		ft_memdel\
		ft_strnew\
		ft_strdel\
		ft_strclr\
		ft_striter\
		ft_striteri\
		ft_strmap\
		ft_strmapi\
		ft_strequ\
		ft_strnequ\
		ft_strsub\
		ft_strjoin\
		ft_strtrim\
		ft_strsplit\
		ft_itoa\
		ft_putchar\
		ft_putstr\
		ft_putendl\
		ft_putnbr\

Compiler = gcc

CmpFlags = -Wall -Werror -Wextra

OUTN = $(Library).a

CFILES = $(files:%=%.c)

OFILES = $(files:&=&.o)

NAME = $(OUTN)

$(NAME):
	$(Compiler) $(CmpFlags) -c $(CFILES) -I./
	ar -rc $(OUTN) $(OFILES)

all: $(NAME)

clean:
		rm -f $(NAME)
		rm -f $(OFILES)

re: fclean all

.PHONY: all, clean, flcean, re
