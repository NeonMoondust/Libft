# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: crgonzal <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/08 00:05:33 by crgonzal          #+#    #+#              #
#    Updated: 2020/11/08 02:18:58 by crgonzal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror -I $(HEAD) -c

OBJ = objects/

HEAD = libft.h

OBJS = $(SRC_LIST:.c=.o)

SRC_LIST = ft_putchar.c

.PHONY: all
all: $(NAME)

$(NAME):
	(CC) $(CFLAGS) $(SRC_LIST)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

.PHONY: clean
clean:
	/bin/rm -f $(OBJS)

.PHONY: fclean
fclean:	clean
	/bin/rm -f $(NAME)

.PHONY: re
re:	fclean all
