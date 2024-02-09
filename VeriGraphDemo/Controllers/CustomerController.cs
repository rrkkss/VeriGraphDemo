using Microsoft.AspNetCore.Mvc;
using Neo4jClient;
using VeriGraphDemo.Models;

namespace VeriGraphDemo.Controllers;

[ApiController]
[Route("[controller]")]
public class CustomerController(IGraphClient client) : ControllerBase
{
    private const string ReservationCustomerRelationship = ":ZAREZERVOVAL";
    private const string GunReservationRelationship = ":REZERVOVANO";
    private readonly IGraphClient _client = client;

    [HttpGet("reservationWithoutGuns")]
    public async Task<IActionResult> GetAllreservationWithoutGunsAsync()
    {
        var customers = await _client.Cypher
            .Match($"(za:Zakaznik)<-[{ReservationCustomerRelationship}]-(r:Rezervace)")
            .OptionalMatch($"(r)<-[{GunReservationRelationship}]-(zb:Zbran)")
            .With("za, zb, count(zb.id) as existuje_vypujcka")
            .Where("existuje_vypujcka = 0 ")
            .Return(za => za.As<Customer>())
            .ResultsAsync;

        return Ok(customers);
    }
}

