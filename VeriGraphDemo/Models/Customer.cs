using Newtonsoft.Json;

namespace VeriGraphDemo.Models;

public class Customer
{
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonProperty("sleva")]
    public double Discount { get; set; }

    [JsonProperty("cislo_zbrojniho_prukazu")]
    public string? ArmsIdNumber { get; set; }

    [JsonProperty("datum_narozeni")]
    public DateTime Born { get; set; }

    [JsonProperty("je_vitan")]
    public string? IsWelcome { get; set; }

    [JsonProperty("jmeno")]
    public string? Name { get; set; }

    [JsonProperty("prijmeni")]
    public string? Surname {  get; set; }

}
