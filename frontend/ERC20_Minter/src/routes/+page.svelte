<script>
    import { browser } from "$app/environment";
    import { ethers } from "ethers";

    let connected = false;
    let address = "";
    let balance = "";
    let network = "";

    let tokenName = "";
    let symbol = "";
    let deployedAddr = "";

</script>
<div class="box">
    <div>
        <h1>Welcome to ERC20 Token Minter</h1>
        <br />
        <p>This Minter gives the demo of how to mint an ERC20 token on a testnet</p>
        <p>
            Please follow the below mentioned steps and mint your 1<sup>st</sup> token
            on the blockchain
        </p>
        <input type="button" value="Connect Wallet" />
    </div>
</div>

<style>
    .box {
        align-items: center;
        display: flex;
        justify-content: center;
    }
</style>