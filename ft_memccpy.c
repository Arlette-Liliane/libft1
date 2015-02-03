/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memccpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aemebiku <aemebiku@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/28 14:48:25 by aemebiku          #+#    #+#             */
/*   Updated: 2015/01/28 14:50:59 by aemebiku         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memccpy(void *s1, const void *s2, int c, size_t n)
{
	char		*dp;
	const char	*sp;

	sp = s2;
	dp = s1;
	while (n--)
	{
		if (*sp == c)
		{
			*dp++ = *sp++;
			return (dp);
		}
		*dp++ = *sp++;
	}
	return (NULL);
}
