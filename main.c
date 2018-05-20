/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: magouin <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/20 16:18:05 by magouin           #+#    #+#             */
/*   Updated: 2018/05/20 16:18:10 by magouin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <ctype.h>
#include <unistd.h>

int		ft_isdigit(int str);
int		ft_isalpha(int str);
int		ft_isalnum(int str);
int		ft_isascii(int str);
int		ft_isprint(int str);
void	ft_puts(char *str);
char 	*ft_strdup(char *str);
void	ft_bzero(void *str, int nb);
void	ft_memcpy(void *dest, const void *src, size_t nb);
char	*ft_strcat(char *dest, const char *src);


int main()
{
	char	buffer[20];
	char	str1[] = "test1";
	char	str2[] = " test2";
	char	isdigi[] = "01656161161234567890";
	char	*dup;
	int		c;

	write(1, buffer, 20);
	printf("\n");
	ft_bzero(buffer, 20);
	write(1, buffer, 20);

	ft_memcpy(buffer, str1, 6);
	ft_strcat(buffer, str2);
	ft_puts(buffer);
	dup = ft_strdup(isdigi);
	ft_puts(dup);

	c = 0;
	while (c < 256)
	{
		if (isdigit(c) != ft_isdigit(c))
			ft_puts("Error");
		if (isalpha(c) != ft_isalpha(c))
			ft_puts("Error");
		if (isalnum(c) != ft_isalnum(c))
			ft_puts("Error");
		if (isascii(c) != ft_isascii(c))
			ft_puts("Error");
		if (isprint(c) != ft_isprint(c))
			ft_puts("Error");
		c++;
	} 
	return (0);
}
