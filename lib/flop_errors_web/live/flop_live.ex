defmodule FlopErrorsWeb.FlopLive do
  use FlopErrorsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(params, uri, socket) do
    flop =
      case Flop.validate(params) do
        {:ok, _} -> %Flop.Meta{}
        {:error, meta} -> meta
      end

    socket = assign(socket, :flop_form, to_form(flop))
    {:noreply, socket}
  end

  @impl true
  def handle_event("update", params, socket) do
    {:noreply, push_patch(socket, to: ~p"/flop?#{params}")}
  end
end
