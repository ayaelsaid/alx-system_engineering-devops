#fix wordpress
exec { 'Fix_WordPress':
  command  => 'sed -i "s/\b.phpp\b/.php/g" /var/www/html/wp-settings.php',
  provider => shell,
}
