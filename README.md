# IBCapp
simple app for creating proposals and exporting them to pdf.
While creating a proposal for presentation to a customer, the app will also help
generate an order invoice with product numbers, supplier, and costs that employees can then import
to quickbooks or vice versa.


### Models
* Item
  * name
  * description
  * specs
  * vendor_id
  * vpn            # manufacturer part number
  * msrp_cents
* Price
  * item_id
  * supplier_id
  * cost           # buy cost from supplier
  * spn            # supplier part number
* Supplier
  * name
  * description
  * website
  * account_number
  * sales_contact

* User
  * *currently only being used for Rails_Admin*

* Vendor
  * name
  * description
  * website
  * support_page
  * partner
  * partner_id


not yet implemented:
* Package building
  - User should be able to create a package
  - A Package should contain items with descriptions
  - 



### TO DOs
  * Done *spn for (supplier part number, unique to each supplier) should be moved to price model*
  * 
