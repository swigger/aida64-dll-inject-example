#pragma once

enum ProductType {
	VER_BUSINESS=1,
	VER_EXTREME,
	VER_ENGINEER,
	VER_NETWORK
};

ProductType detect_product_type();

// aka: productid, variant_code, base_date
std::string gen_key(ProductType pt, uint32_t subtype, std::time_t issue_date=0, std::time_t expire=0, std::time_t support_due=0);
