using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using OnlineGroceryStore.Model;

namespace OnlineGroceryStore.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ShippingAddressesController : ControllerBase
    {
        private readonly GroceryDbContext _context;

        public ShippingAddressesController(GroceryDbContext context)
        {
            _context = context;
        }

        // GET: api/ShippingAddresses
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ShippingAddress>>> GetshippingAddress()
        {
            return await _context.shippingAddress.ToListAsync();
        }

        // GET: api/ShippingAddresses/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ShippingAddress>> GetShippingAddress(int id)
        {
            var shippingAddress = await _context.shippingAddress.FindAsync(id);

            if (shippingAddress == null)
            {
                return NotFound();
            }

            return shippingAddress;
        }

        // PUT: api/ShippingAddresses/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutShippingAddress(int id, ShippingAddress shippingAddress)
        {
            if (id != shippingAddress.Id)
            {
                return BadRequest();
            }

            _context.Entry(shippingAddress).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ShippingAddressExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/ShippingAddresses
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<ShippingAddress>> PostShippingAddress(ShippingAddress shippingAddress)
        {
            _context.shippingAddress.Add(shippingAddress);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetShippingAddress", new { id = shippingAddress.Id }, shippingAddress);
        }

        // DELETE: api/ShippingAddresses/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<ShippingAddress>> DeleteShippingAddress(int id)
        {
            var shippingAddress = await _context.shippingAddress.FindAsync(id);
            if (shippingAddress == null)
            {
                return NotFound();
            }

            _context.shippingAddress.Remove(shippingAddress);
            await _context.SaveChangesAsync();

            return shippingAddress;
        }

        private bool ShippingAddressExists(int id)
        {
            return _context.shippingAddress.Any(e => e.Id == id);
        }
    }
}
