defmodule SecureLoginSystemWeb.ErrorJSONTest do
  use SecureLoginSystemWeb.ConnCase, async: true

  test "renders 404" do
    assert SecureLoginSystemWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert SecureLoginSystemWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
