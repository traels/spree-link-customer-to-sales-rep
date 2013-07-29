SpreeLinkCustomerToSalesRep
===========================

This enables linking of a 'retail' customer to a 'sales_rep' user. Both these types need to be created as user roles in Spree.

Installation
------------

Add spree_link_customer_to_sales_rep to your Gemfile:

```ruby
gem 'spree_link_customer_to_sales_rep', github: 'traels/spree-link-customer-to-sales-rep'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_link_customer_to_sales_rep:install

Copyright (c) 2013 Træls, released under the New BSD License
