import { dbank_backend } from "../../declarations/dbank_backend";

window.addEventListener("load", async function () {
  
  const currentAmount = await dbank_backend.checkBalance();

  document.getElementById("value").innerText = Math.round(currentAmount * 100) / 100;
});
