<?php
header('Content-Type:text/plain');
if ($_ENV['ROBOT_INDEX'] == 'true') {
    echo "User-agent: *\r\n";
    echo "Disallow: /wp-admin/\r\n";
    echo "Disallow: /admin/\r\n";
    echo "Allow: /wp-admin/admin-ajax.php\r\n";
} else {
    echo "User-agent: *\r\n";
    echo "Disallow: /\r\n";
}
