using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace OnlineGroceryStore.Model
{
    public class ShippingAddress
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int Id { get; set; }
        [MaxLength(200)]
        public string Fname { get; set; }
        [MaxLength(200)]
        public string Lname { get; set; }
        [MaxLength(800)]
        public string Address { get; set; }
        [MaxLength(400)]
        public string Landmark { get; set; }
        [MaxLength(150)]
        public string city { get; set; }
        public int Pincode { get; set; }
        public int MobileNo { get; set; }
        [MaxLength(500)]
        public string Email { get; set; }
        
    }
}
