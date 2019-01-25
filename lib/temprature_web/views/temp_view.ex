defmodule TempratureWeb.TempView do
  use TempratureWeb, :view

  def render("temp.json", _params) do
    data()
  end

  def data do
    %{
      key: "haha",
      label: 'Kericho',
      channel: %{
        astronomy: %{
          sunrise: "5:43 am",
          sunset: "8:21 pm"
        },
        item: %{
          condition: %{
            text: "Windy",
            date: "Thu, 21 Jul 2016 09:00 PM EDT",
            temp: Enum.random(23..45),
            code: 24
          },
          forecast:
            Enum.map(1..7, fn _x ->
              %{
                code: Enum.random(randomness()),
                high: Enum.random(randomness),
                low: Enum.random(randomness)
              }
            end)
        },
        atmosphere: %{
          humidity: Enum.random(56..123)
        },
        wind: %{
          speed: Enum.random(3..78),
          direction: Enum.random(56..345)
        }
      }
    }
  end

  def randomness do
    [
      25,
      32,
      33,
      34,
      36,
      3200,
      0,
      1,
      2,
      6,
      8,
      9,
      10,
      11,
      12,
      17,
      35,
      40,
      3,
      4,
      37,
      38,
      39,
      45,
      47,
      5,
      7,
      13,
      14,
      16,
      18,
      41,
      42,
      43,
      46,
      15,
      19,
      20,
      21,
      22,
      24,
      23,
      26,
      27,
      28,
      31,
      29,
      30,
      44
    ]
  end
end
