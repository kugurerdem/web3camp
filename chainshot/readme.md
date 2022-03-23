# ChainShot : Introduction to Solidity

You can also try the course from [here](https://www.chainshot.com/learn/solidity).

## Notes to Myself

* Libraries do not have state. Libraries can only have pure functions.
* Functions can be divided into two categories: read-only (pure or view) and write&read functions.   
* Function parameters can have storage, memory or calldata types.
* A good rule of thumb for function visibility is to start by making a function private. 
    * If it needs to be called by EOAs, make it external. 
    * If it needs to be called by both EOAs and other contracts make it public. 
    * There is also internal visibility,
* Enums in Solidity are like in the case of C++
* A contract interface displays external/public functions declared on a contract without its implementation (the function body).
* Events are used for logging in Smart Contracts.
* We can make it easy to filter on event arguments by adding an indexed keyword:
