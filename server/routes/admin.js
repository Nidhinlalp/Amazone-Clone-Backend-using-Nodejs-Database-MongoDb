const express = require("express");
const adminRouter = express.Router();
const admin = require("../middlewares/admin");
const Product = require("../models/product");

// Add product
adminRouter.post("/admin/add-product", admin, async (req, res) => {
  try {
    const { name, description, images, quantity, price, category } = req.body;
    let product = await Product.create({
      name,
      description,
      images,
      quantity,
      price,
      category,
    });
    // product = await product.save();
    res.json(product);
  } catch (e) {
    console.log(e.message);
    res.status(500).json({ error: e.message });
  }
});

// get all products

adminRouter.get("/admin/get-products", admin, async (req, res) => {
  try {
    const products = await Product.find({});
    res.json(products);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = adminRouter;
