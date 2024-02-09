using Newtonsoft.Json;

namespace VeriGraphDemo.Models;

public class Naboj
{
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonProperty("kusu_skladem")]
    public int AtDisposal { get; set; }

    [JsonProperty("vyrobce")]
    public string? Manufacturer { get; set; }

    [JsonProperty("EAN")]
    public string? Ean { get; set; }

    [JsonProperty("prodejni_cena")]
    public int SellPrice { get; set; }

    [JsonProperty("gramaz")]
    public int Weight { get; set; }

    [JsonProperty("porizovaci_cena")]
    public int HistoricalCost { get; set; }

    [JsonProperty("typ")]
    public string? Type { get; set; }

    [JsonProperty("raze")]
    public string? Caliber { get; set; }
}
