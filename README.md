SpreeLinkCustomerToSalesRep
===========================

This enables linking of a 'retail' customer to a 'sales_rep' user. Both these types need to be created as user roles in Spree.
If used together with user_impersonate it will create a list of customers that a salesrep can imporsonate when accessing the my account page.

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
```

Copyright (c) 2013 Træls, released under the New BSD License
