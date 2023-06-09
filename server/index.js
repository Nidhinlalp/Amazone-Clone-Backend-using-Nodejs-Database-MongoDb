//IMPOTR FROM PACKAGES
const express = require("express");
const mongoose = require("mongoose");

//IMPORT FROM OTHER FILES

const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");
// INITIALAISATION
const PORT = process.env.PORT || 3000;
const app = express();
const DB = "mongodb+srv://Nidhin:Nidhin2020@cluster0.zajzym3.mongodb.net/";

//MIDDLEWARE
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

//CONNECTIONS
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connect success");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log("connected at port!" + PORT);
});
