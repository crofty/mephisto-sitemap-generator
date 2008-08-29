require 'sitemap'
option :frontpage_frequency, 'daily'
option :frontpage_priority, '1.0'
option :section_frequency, 'daily'
option :section_priority, '0.9'
option :article_frequency, 'daily'
option :article_priority, '0.5'
Dependencies.load_once_paths.delete(lib_path)