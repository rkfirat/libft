NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror

AR = ar rcs
RM = rm -f

FILES = ft_atoi       ft_isascii    ft_memcmp     ft_putendl_fd ft_strdup     ft_strlen     ft_strtrim \
		ft_bzero      ft_isdigit    ft_memcpy     ft_putnbr_fd  ft_striteri   ft_strmapi    ft_substr  \
		ft_calloc     ft_isprint    ft_memmove    ft_putstr_fd  ft_strjoin    ft_strncmp    ft_tolower \
		ft_isalnum    ft_itoa       ft_memset     ft_split      ft_strlcat    ft_strnstr    ft_toupper \
		ft_isalpha    ft_memchr     ft_putchar_fd ft_strchr     ft_strlcpy    ft_strrchr

BONUS_FILES = ft_lstnew ft_lstadd_front ft_lstsize ft_lstlast ft_lstadd_back ft_lstdelone ft_lstclear ft_lstiter ft_lstmap

SRCS_DIR = ./
SRCS = $(addprefix $(SRCS_DIR), $(addsuffix .c, $(FILES)))

OBJS_DIR = ./
OBJS = $(addprefix $(OBJS_DIR), $(addsuffix .o, $(FILES)))

BONUS_SRCS = $(addprefix $(SRCS_DIR), $(addsuffix .c, $(BONUS_FILES)))
BONUS_OBJS = $(addprefix $(OBJS_DIR), $(addsuffix .o, $(BONUS_FILES)))

.c.o : $(SRCS)
	$(CC) $(FLAGS) -c -o $@ $<

$(NAME): $(OBJS)
	$(AR) $(NAME) $^

bonus: $(NAME) $(BONUS_OBJS)
	$(AR) $(NAME) $(BONUS_OBJS)

all: $(NAME)

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	$(RM) $(NAME)

re:clean all
