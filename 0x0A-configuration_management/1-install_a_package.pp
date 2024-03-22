# Using Puppet, install flask from pip3.

# Requirements:

# Install flask
# Version must be 2.1.0

package { 'flask':
  ensure   => 'installed',
  provider => 'pip3'
}
