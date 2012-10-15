/**
 * 
 * Set git global git user and email
 * 
 */
class git::config {
   
    # Sets the git username
    exec { "gitconfigusername":
      path => "/bin:/usr/bin",
      unless => "cat /home/${::kala_user}/.gitconfig",
      command => "sudo -u ${::kala_user} git config --global user.name \"${::kala_name}\" + sudo -u ${::kala_user} git config --global user.email \"${::kala_user}@${::hostname}\"",
      require => [
        Class[git::install]
      ],
    }
    
}