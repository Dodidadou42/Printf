SRCS	=	ft_printf.c \
		  	ft_string.c \
		  	ft_num.c

OBJS	=	${SRCS:.c=.o}
NAME = libftprintf.a
CC	= gcc
RM	= rm -f
AR	= ar rc
INCLUDES	= -I ft_printf.h
CFLAGS 	= -Wall -Wextra -Werror
.c.o:
		${CC} ${CFLAGS} ${INCLUDES} -c $< -o ${<:.c=.o}
${NAME}:	${OBJS}
			${AR} ${NAME} ${OBJS}
all:		${NAME}
clean:
	${RM} ${OBJS}
fclean:	clean
	${RM} ${NAME}
re:	fclean all
.PHONY: all clean fclean re
