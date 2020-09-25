module SonicsHelper

  def choose_new_or_edit
  if action_name == 'new'|| action_name == 'create'
    confirm_sonics_path
  elsif action_name == 'edit'
    sonic_path
  end
end

end
