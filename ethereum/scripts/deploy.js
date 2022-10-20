
async function main() {
    const Ownable = await ethers.getContractFactory("EmotionalShapes");
    const ownable = await Ownable.deploy();
  
    console.log("EmotionalShapes deployed:", ownable.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });