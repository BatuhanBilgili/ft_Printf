# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bbilgili <bbilgili@student.42istanbul.c    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/30 21:30:18 by bbilgili          #+#    #+#              #
#    Updated: 2022/11/30 21:30:19 by bbilgili         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC		= ft_printf.c utils.c

OBJ		= $(SRC:.c=.o)

NAME	= libftprintf.a

CC		= gcc

CFLAGS	= -Wall -Wextra -Werror -I.

RM		= rm -rf

all:	$(NAME)

$(NAME):	$(OBJ)
	ar rcs $(NAME) $(OBJ)

clean:	
			$(RM) $(OBJ)

fclean:		clean
			$(RM) $(NAME)

re:			fclean $(NAME)

.PHONY: all clean fclean re