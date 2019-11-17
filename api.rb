# These methods can be optionally implemented in your custom Ruby tool to define
# how Eneroth Tool Memory interacts with it.
class SomeTool
  # Whether tool should be excluded in Eneroth Tool Memory.
  #
  # @note Tools requiring any parameters to be initialized are never included in
  # Eneroth Tool Memory, regardless of this API. This is because Eneroth Tool
  # Memory can't guess what such parameters would be, and since these tools
  # typically only can be launched in a particular context, similar to native
  # Place Component tool only launching from selecting a component in the
  # Component inspector or native Texture Positioning tool only launching from
  # the context menu of a given face.
  #
  # @return [Boolean] Defaults to false.
  def ene_tool_cycler_exclude; end

  # Tool Display name in Eneroth Tool Memory.
  #
  # Use title case for tool names.
  #
  # Don't end tool name with " Tool". For instance Select Tool should return
  # "Select". The tool being a tool is implicit.
  #
  # @return [String] Defaults to an elaborated guess based on class name.
  def ene_tool_cycler_name; end

  # Path to tool SVG icon.
  #
  # Note that the SVG rendered is very home brewed and don't support fancy
  # features such as text, or paths with interior holes.
  #
  # @return [String] Defaults to a generic Ruby tool icon.
  def ene_tool_cycler_icon; end
end
