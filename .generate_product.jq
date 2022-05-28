def product_count_to_range: . | [ range(.) | .+1 | tostring ];
def get_product_range: with_entries(select(.key | startswith("Product_Name"))) | length | product_count_to_range;
def get_account_list: .results[].result.formatted;
def remove_suffix: split("_") | map(select(length > 3)) | join("_");
def remove_suffix_product: [to_entries[] | { "key" : (.key | remove_suffix), "value" :.value }] | from_entries;
def extract_store_from_acc: with_entries(select(.key | startswith("Store")));
def extract_products_from_acc (suffix): with_entries(select(.key | endswith(suffix))) | remove_suffix_product;
def filter_empty_product: select(.Price != "0");
def generate_product_object (current_account): 
  . as $current_product_index |
  current_account | extract_store_from_acc as $store |
  current_account | extract_products_from_acc($current_product_index) as $product |
  [ $store, $product ] | add;

. as $current_account |
get_product_range as $product_range |
$product_range |
  map(generate_product_object($current_account)) |
  map(filter_empty_product)

