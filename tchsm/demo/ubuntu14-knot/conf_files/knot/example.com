example.com.            3600    SOA     dns1.example.com. hostmaster.example.com. 2010111219 21600 3600 604800 86400
example.com.            3600    NS      dns1.example.com.
example.com.            3600    NS      dns2.example.com.
example.com.            3600    MX      10 mail.example.com.
dns1.example.com.       3600    A       192.0.2.1
dns1.example.com.       3600    AAAA    2001:db8::1
dns2.example.com.       3600    A       192.0.2.2
dns2.example.com.       3600    AAAA    2001:db8::2
mail.example.com.       3600    A       192.0.2.3
mail.example.com.       3600    AAAA    2001:db8::3
