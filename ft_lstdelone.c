/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdelone.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aemebiku <aemebiku@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/27 19:05:52 by aemebiku          #+#    #+#             */
/*   Updated: 2015/01/27 19:07:53 by aemebiku         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "libft.h"

void ft_lstdelone(t_list **link, void (*del)(void *, size_t))
{
	del(&((*link)->content), (*link)->content_size);
	free(*link);
	*link = NULL;
}
