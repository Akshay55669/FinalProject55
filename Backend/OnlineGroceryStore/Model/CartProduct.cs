using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace OnlineGroceryStore.Model
{
    public class CartProduct
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [MaxLength(500)]
        public string Name { get; set; }

        public decimal Price { get; set; }

        [MaxLength(800)]
        public string Image { get; set; }

        [MaxLength(150)]
        public string Category { get; set; }
    }
}
