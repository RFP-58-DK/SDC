const { Schema } = mongoose;

const productInfo = new Schema({
  id: Number,
  campus: String,
  name: String,
  slogan: String,
  description: String,
  category: String,
  default_price: Number,
});

const features = new Schema({
  feature: String,
  value: String,
});

const productStyles = new Schema({
  product_id: Number,
  style_id: String,
  name: String,
  original_price: Number,
  sale_price: Number,
  default: Boolean,
  // photos: {
  //   thumbnail_url: String,
  //   url: String,
  // },
  // skus: {
  //   style: String,
  //   quantity: String,
  //   size: String,
  // },
});

const photos = new Schema({
  style_id: String,
  thumbnail_url: String,
  url: String,
});

const skus = new Schema({
  style_id: String,
  sku_id: String,
  style: String,
  quantity: String,
  size: String,
});


