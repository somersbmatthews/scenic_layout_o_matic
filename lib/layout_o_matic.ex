defmodule LayoutOMatic do
  @moduledoc """
  Starter application using the Scenic framework.
  """

  def start(_type, _args) do
    # load the viewport configuration from config
    main_viewport_config = Application.get_env(:scenic_layout_o_matic, :viewport)

    # start the application with the viewport
    children = [
      {DynamicSupervisor, name: LayoutOMatic, strategy: :one_for_one},
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
