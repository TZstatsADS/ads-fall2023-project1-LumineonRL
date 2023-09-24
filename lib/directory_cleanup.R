library(here)

clean_path <- function(current_dir, desired_dir, file) {
  old_path <- file.path(here(current_dir), file)
  
  if (file.exists(old_path)) {
    new_path <- file.path(here(desired_dir), file)
    file.rename(old_path, new_path)
  }
}
