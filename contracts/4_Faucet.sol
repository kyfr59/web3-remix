// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Faucet {
    // Accepte tout montant entrant
    receive() external payable {}

    // Donnez de l'éther à quiconque demande
    function withdraw(uint withdraw_amount) public {
        // Limiter le montant du retrait
        require(withdraw_amount <= 100000000000000000);

        // Envoie le montant à l'adresse qui l'a demandé
        payable(msg.sender).transfer(withdraw_amount);
    }
}