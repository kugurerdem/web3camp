// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
    // enums are stored as uints on the background
    enum Foods { Apple, Pizza, Bagel, Banana } // Apple : 0, Pizza : 1, ...

	Foods public food1 = Foods.Apple;
	Foods public food2 = Foods.Pizza;
	Foods public food3 = Foods.Bagel;
	Foods public food4 = Foods.Banana;
}