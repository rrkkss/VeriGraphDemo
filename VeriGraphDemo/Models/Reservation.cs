using Newtonsoft.Json;

namespace VeriGraphDemo.Models;

public class Reservation
{
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonProperty("datum")]
    public DateTime Date { get; set; }

    [JsonProperty("delka")]
    public int Length { get; set; }

    [JsonProperty("strelecky_stav")]
    public int State { get; set; }
}
