# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: molabhai <molabhai@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/21 17:23:27 by molabhai          #+#    #+#              #
#    Updated: 2020/11/21 18:58:12 by molabhai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME=libasm.a

SRC=ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_strdup.s \
		ft_write.s \
		ft_read.s 

OBJ=$(SRC:.s=.o)


all:
	nasm -f macho64 ft_strlen.s
	nasm -f macho64 ft_strcpy.s
	nasm -f macho64 ft_strcmp.s
	nasm -f macho64 ft_strdup.s
	nasm -f macho64 ft_write.s
	nasm -f macho64 ft_read.s
	ar -rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -rf *.o

fclean:
	rm -rf *.a