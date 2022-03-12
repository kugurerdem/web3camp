import sdk from "./1-initialize-sdk.js";

// In order to deploy the new contract we need our old friend the app module again.
const app = sdk.getAppModule("0x5059b8db0e236d258844ba8761f416293211ce31");

(async () => {
  try {
    // Deploy a standard ERC-20 contract.
    const tokenModule = await app.deployTokenModule({
      // What's your token's name? Ex. "Ethereum"
      name: "UgurDAO Governance Token",
      // What's your token's symbol? Ex. "ETH"
      symbol: "UUR",
    });
    console.log(
      "✅ Successfully deployed token module, address:",
      tokenModule.address,
    );
  } catch (error) {
    console.error("failed to deploy token module", error);
  }
})();

/**
 * Your app address is: 0x5059B8db0E236d258844Ba8761f416293211cE31
✅ Successfully deployed token module, address: 0x9D84c88277cAFedC09C6e92D9c5e988B7dB9408D
 */
