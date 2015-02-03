#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aemebiku <aemebiku@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/06/26 15:32:35 by aemebiku          #+#    #+#              #
#    Updated: 2014/06/26 15:32:36 by aemebiku         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

SOURCES =	ft_memset.c				\
			ft_isascii.c \
			ft_isprint.c \
			ft_isalpha.c \
			ft_isalnum.c \
			ft_isdigit.c \
			ft_putchar_fd.c \
			ft_putendl_fd.c \
			ft_putstr_fd.c \
			ft_putnbr_fd.c \
			ft_memalloc.c \
			ft_putendl.c \
			ft_bzero.c				\
			ft_memcpy.c				\
			ft_memccpy.c			\
			ft_memmove.c			\
			ft_memchr.c				\
			ft_memcmp.c				\
			ft_strlen.c				\
			ft_strdup.c				\
			ft_strndup.c			\
			ft_strcpy.c				\
			ft_strncpy.c			\
			ft_strcat.c				\
			ft_strncat.c			\
			ft_strlcat.c			\
			ft_strchr.c				\
			ft_strrchr.c			\
			ft_strstr.c				\
			ft_strnstr.c			\
			ft_strcmp.c				\
			ft_strncmp.c			\
			ft_atoi.c				\
			ft_toupper.c			\
			ft_tolower.c			\
			ft_memdel.c				\
			ft_strnew.c				\
			ft_strdel.c				\
			ft_strclr.c				\
			ft_striter.c			\
			ft_striteri.c			\
			ft_strequ.c				\
			ft_strnequ.c			\
			ft_strsub.c				\
			ft_strmap.c				\
			ft_strmapi.c			\
			ft_itoa.c				\
			ft_strsplit.c			\
			ft_strjoin.c			\
			ft_strtrim.c			\
			ft_putchar.c			\
			ft_putstr.c				\
			ft_putnbr.c				\
			ft_lstnew.c  			\
			ft_lstdelone.c 			\
			ft_lstdel.c 			\
			ft_lstadd.c 			\
			ft_lstiter.c 			\
			ft_lstmap.c

			
		
		
		
			
		
		
		
			
			


HEADERS	= -Iincludes/

OBJECTS	= $(subst .c,.o,$(SOURCES))

WFLAGS	= -g -Wall -Werror -Wextra

CC		= gcc

.SILENT:

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)
	printf "\e[32m----------------------------------\e[36m\n"
	printf "\e[32m[✔]\e[36m $@"
	printf "\n\e[32m----------------------------------\e[36m"
	printf "\033[0m\n"

%.o: %.c
	$(CC) $(WFLAGS) $(HEADERS) -c -o $@ $^
	printf "\e[32m[✔]\e[36m $@ "
	printf "\033[0m\n"

clean:
	rm -rf $(OBJECTS)
	printf "\e[31m----------------------------------\n"
	printf "[✔]\e[36m $(NAME): Objects deleted\n"
	printf "\e[31m----------------------------------\e[36m"
	printf "\033[0m\n"

fclean: clean
	rm -rf $(NAME)
	printf "\e[31m----------------------------------\n"
	printf "[✔]\e[36m $(NAME): All deleted\n"
	printf "\e[31m----------------------------------\e[36m"
	printf "\033[0m\n"

re: fclean all

.PHONY: re fclean clean all
