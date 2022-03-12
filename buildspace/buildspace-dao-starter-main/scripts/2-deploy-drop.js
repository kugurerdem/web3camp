import { ethers } from "ethers";
import sdk from "./1-initialize-sdk.js";
import { readFileSync } from "fs";

const app = sdk.getAppModule("0x5059b8db0e236d258844ba8761f416293211ce31");

(async () => {
  try {
    const bundleDropModule = await app.deployBundleDropModule({
      // The collection's name, ex. CryptoPunks
      name: "UgurDAO Membership",
      // A description for the collection.
      description: "A DAO for fans of Ugur.",
      // The image for the collection that will show up on OpenSea.
      image: readFileSync("scripts/assets/ugur.png"),
      // We need to pass in the address of the person who will be receiving the proceeds from sales of nfts in the module.
      // We're planning on not charging people for the drop, so we'll pass in the 0x0 address
      // you can set this to your own wallet address if you want to charge for the drop.
      primarySaleRecipientAddress: ethers.constants.AddressZero,
    });
    
    console.log(
      "✅ Successfully deployed bundleDrop module, address:",
      bundleDropModule.address,
    );
    console.log(
      "✅ bundleDrop metadata:",
      await bundleDropModule.getMetadata(),
    );
  } catch (error) {
    console.log("failed to deploy bundleDrop module", error);
  }
})()

/* Successfully deployed bundleDrop module, address: 0x29001dEda58CD8B721fE937100E86F7Bc4794c1C
✅ bundleDrop metadata: {
  metadata: {
    name: 'UgurDAO Membership',
    description: 'A DAO for fans of Ugur.',
    image: 'https://cloudflare-ipfs.com/ipfs/bafkreiaifjrly7p7zc23zjip5hnrpk6ug3k5pxr76svb7dhwy4ebk6sujy',
    primary_sale_recipient_address: '0x0000000000000000000000000000000000000000',
    uri: 'ipfs://bafkreidtitn4drxjgpw3cyrx5cdcmj47uolnvtsupjbg546vcqadm22l5e'
  },
  address: '0x29001dEda58CD8B721fE937100E86F7Bc4794c1C',
  type: 11
} */