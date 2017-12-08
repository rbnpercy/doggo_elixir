defmodule Doggo do
  @moduledoc """
    Elixir API Client library for the [Dog API](https://dog.ceo/dog-api/about.php)
  """

  use HTTPoison.Base

  @api_url "https://dog.ceo/api"

  @doc """
    The base URL for the Doggo API.
  """
  def process_url(url) do
    @api_url <> url
  end

  @doc """
    Process the response body.
  """
  def process_response_body(body) do
    case Poison.decode(body) do
      { :ok, data } -> data["message"]
      _ -> body
    end
  end


  @doc """
    Gets a random Doggo.
  """
  def random do
    Doggo.get!("/breeds/image/random")
  end



end
