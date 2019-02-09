# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mtaylor <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/15 16:24:16 by mtaylor           #+#    #+#              #
#    Updated: 2019/02/09 13:20:45 by mtaylor          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FLAGS = -Wall -Wextra -Werror

LIBFT = ft_memalloc.c ft_bzero.c ft_memset.c \
		ft_strnequ.c ft_strncmp.c ft_strchr.c \
		ft_strlen.c ft_isdigit.c

FTPRINTF = main.c fwplt.c padding.c \
		   print_string.c print_char.c \
		   print_integer.c print_floating_point.c \
		   print_address.c print_percent_sign.c

SRCS = $(addprefix ./libft/, $(LIBFT)) $(addprefix ./ft_printf/, $(FTPRINTF))

OFILES = $(FTPRINTF:.c=.o) $(LIBFT:.c=.o)

all : $(NAME)

$(NAME) :
	gcc $(FLAGS) -c $(SRCS)
	ar rc $(NAME) $(OFILES)
	ranlib $(NAME)

clean :
	rm -f $(OFILES)

fclean : clean
	rm -f $(NAME)

re : fclean all
