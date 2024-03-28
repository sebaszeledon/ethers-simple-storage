// synchronous [solidity]
// asynchronous [javascript] 6:46

async function main() {}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
