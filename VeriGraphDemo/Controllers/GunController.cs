using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using Neo4jClient;
using Neo4jClient.Cypher;
using VeriGraphDemo.Models;

namespace VeriGraphDemo.Controllers;

[ApiController]
[Route("[controller]")]
public class GunController(IGraphClient client) : ControllerBase
{
    private const string GunAmmoRelationship = ":KOMPATIBILNI";
    private readonly IGraphClient _client = client;


    [HttpGet]
    public async Task<IActionResult> GetAllAsync()
    {
        var guns = await _client.Cypher
            .Match("(z:Zbran)")
            .Return(z => z.As<Zbran>())
            .ResultsAsync;

        return Ok(guns);
    }

    [HttpGet("withItsAmmo")]
    public async Task<IActionResult> GetAllWithAmmoAsync()
    {
        var guns = await _client.Cypher
            .Match("(z:Zbran)")
            .OptionalMatch("(z)-->(n:Naboj)")
            .Return((z, n) => new
            {
                Zbran = z.As<Zbran>(),
                Naboj = n.CollectAs<Naboj>(),
            })
            .ResultsAsync;

        return Ok(guns);
    }

    [HttpGet("withNoAmmo")]
    public async Task<IActionResult> GetAllWithNoAmmoAsync()
    {
        var guns = await _client.Cypher
            .Match("(z:Zbran)")
            .OptionalMatch($"(z)-[{GunAmmoRelationship}]->(n:Naboj)")
            .With("z, n, count(n) as existuji_naboje")
            .Where("existuji_naboje = 0 or n.kusu_skladem = 0")
            .Return(z => z.As<Zbran>())
        .ResultsAsync;

        return Ok(guns);
    }
}
