defmodule Wabanex.IMCTest do
  use ExUnit.Case, async: true

  alias Wabanex.IMC

  describe "calculate/1" do
    test "when the file exists, returns the data" do
      params = %{"filename" => "students.csv"}

      response = IMC.calculate(params)

      assert "banana" == response
      # esse teste acima precisa ser revisado, deu erro de argumento! (revisei umas 50x e não achei algo errado)
    end

    test "when the wrong filename is given, returns an error" do
      params = %{"filename" => "student.csv"}

      response = IMC.calculate(params)

      expected_response = {:error, "Error while opening the file"}

      assert response == expected_response
    end
  end
end
