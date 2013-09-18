# IBCapp
simple app for creating proposals and exporting them to pdf.
While creating a proposal for presentation to a customer, the app will also help
generate an order invoice with product numbers, supplier, and costs that employees can then import
to quickbooks or vice versa.


### Models
* Item
⋅⋅* name
⋅⋅* description
⋅⋅* specs
⋅⋅* vendor_id
⋅⋅* vpn
⋅⋅* msrp_cents
* Price
⋅⋅* item_id
⋅⋅* supplier_id
⋅⋅* cost
* Supplier
⋅⋅* name
⋅⋅* description
⋅⋅* website
⋅⋅* account_number
⋅⋅* sales_contact
* User
⋅⋅* *currently only being used for Rails_Admin*
* Vendor
⋅⋅* name
⋅⋅* description
⋅⋅* website
⋅⋅* support_page
⋅⋅* partner
⋅⋅* partner_id
* Vendor_item (joiner)
⋅⋅* * spn for (supplier part number, unique to each supplier) should be moved to price model*