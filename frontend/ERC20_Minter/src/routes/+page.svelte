<script lang="ts">
    import { browser } from "$app/environment";
    import { ethers } from "ethers";

    let connected = false;
    let address = "";
    let balance = ethers.BigNumberish | undefined;
    let network = "";

    let tokenName = "";
    let symbol = "";
    let deployedAddr = "";

    const connectWallet = async () => {
        try {
            const { ethereum } = window;
            if (!ethereum) {
                console.log("Please install metamask");
            }
            const accounts = await ethereum.request({
                method: "eth_requestAccounts",
            });
            address = accounts[0];
            connected = true;
        } catch (Err) {
            console.log("Error :",Err)
        }
    }

    const getBalanceData = async () => {
        try {
            const { ethereum } = window;

            if (ethereum) {
                const providers = new ethers.providers.Web3Provider(
                    ethereum,
                    "any"
                );
                const signers = providers.getSigner();
                balance = await providers.getBalance(address);
                balance = ethers.utils.formatEther(balance);
            }
        } catch (err) {
            console.log(err);
        }
    }

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
        <button type="button" on:click={() => {
            connectWallet();
            getBalanceData();
        }}>Connect Wallet</button>
    </div>
</div>
<div class="box">
    {#if connected}
        <div>
            <p>Connected to Address: {address}</p>
            <p>The account balance is: {balance}</p>
        </div>
    {/if}
</div>
<div class="box">
    
</div>

<style>
    .box {
        align-items: center;
        display: flex;
        justify-content: center;
    }
</style>