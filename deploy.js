// synchronous [solidity]
// asynchronous [javascript] 6:46
const ethers = require("ethers");

async function main() {
  // http://127.0.0.1:7545
  const provider = new ethers.providers.JsonRpcProvider(
    "http://127.0.0.1:7545"
  );
  const wallet = new ethers.Wallet(
    "0x2672242fbef4d055cd3c48a5a54338acd6eb87b78bd7ed4706ce4a2024a61c5f",
    provider
  );
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
