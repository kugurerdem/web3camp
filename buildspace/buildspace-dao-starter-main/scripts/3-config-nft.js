import sdk from "./1-initialize-sdk.js";
import { readFileSync } from "fs";

const bundleDrop = sdk.getBundleDropModule(
  "0x29001deda58cd8b721fe937100e86f7bc4794c1c",
);

(async () => {
  try {
    await bundleDrop.createBatch([
      {
        name: "Ugur Fan Ticket",
        description: "This NFT will give you access to UgurDAO!",
        image: readFileSync("scripts/assets/ugur.png"),
      },
    ]);
    console.log("✅ Successfully created a new NFT in the drop!");
  } catch (error) {
    console.error("failed to create the new NFT", error);
  }
})()