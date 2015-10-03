module EntriesHelper
  def entry_params
    params.require(:entry).permit(:entry_type, :input, :tag_list)
  end
end
