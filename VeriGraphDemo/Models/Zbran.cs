using Newtonsoft.Json;

namespace VeriGraphDemo.Models;

public class Zbran
{
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonProperty("vyrobce")]
    public string? Manufacturer { get; set; }

    [JsonProperty("kategorie")]
    public string? Category { get; set; }

    [JsonProperty("zaruka_do")]
    public DateTime WarrantyTo { get; set; }

    [JsonProperty("povinnost_zp")]
    public string? IsArmsIdRequired { get; set; }

    [JsonProperty("porizovaci_cena")]
    public int HistoricalCost { get; set; }

    [JsonProperty("model")]
    public string? Model { get; set; }

    [JsonProperty("datum_porizeni")]
    public DateTime Bought { get; set; }

    [JsonProperty("je_dostupna")]
    public string? IsAvailable { get; set; }
}
