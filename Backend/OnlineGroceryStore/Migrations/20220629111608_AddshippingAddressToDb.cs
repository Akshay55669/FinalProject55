using Microsoft.EntityFrameworkCore.Migrations;

namespace OnlineGroceryStore.Migrations
{
    public partial class AddshippingAddressToDb : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "shippingAddress",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Fname = table.Column<string>(maxLength: 200, nullable: true),
                    Lname = table.Column<string>(maxLength: 200, nullable: true),
                    Address = table.Column<string>(maxLength: 800, nullable: true),
                    Landmark = table.Column<string>(maxLength: 400, nullable: true),
                    city = table.Column<string>(maxLength: 150, nullable: true),
                    Pincode = table.Column<int>(nullable: false),
                    MobileNo = table.Column<int>(nullable: false),
                    Email = table.Column<string>(maxLength: 500, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_shippingAddress", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "shippingAddress");
        }
    }
}
