// synchronous [solidity]
// asynchronous [javascript] 6:46

async function main() {
  console.log("hi");
  let variable = 5;
  console.log(variable);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
