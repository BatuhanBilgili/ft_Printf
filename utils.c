/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bbilgili <bbilgili@student.42istanbul.c    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/30 21:30:25 by bbilgili          #+#    #+#             */
/*   Updated: 2022/11/30 21:30:26 by bbilgili         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putchar(int c)
{
	return (write(1, &c, 1));
}

int	ft_putstr(char *var)
{
	int	i;

	if (!var)
		return (ft_putstr("(null)"));
	i = 0;
	while (var[i] != '\0')
		ft_putchar(var[i++]);
	return (i);
}
