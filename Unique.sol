/**
 * This file is part of the 1st Solidity Gas Golfing Contest.
 *
 * This work is licensed under Creative Commons Attribution ShareAlike 3.0.
 * https://creativecommons.org/licenses/by-sa/3.0/
 */

pragma solidity ^0.4.23;

contract Unique {
    /**
     * @dev Removes all but the first occurrence of each element from a list of
     *      integers, preserving the order of original elements, and returns the list.
     *
     * The input list may be of any length.
     *
     * @param input The list of integers to uniquify.
     * @return The input list, with any duplicate elements removed.
     */

    mapping (uint => bool) public Numbers;

    function uniquify(uint[] input) public view returns(uint[] ret) {
        bool perfect=true;
        if(input.length==0 || input.length==1){
            return input;
        }else{
            uint k=0;
            for (uint j = 1;j < input.length; j++)
            {
                if (input[j] != input[i]){
                    k++;
                }else{
                    perfect=false;
                    break;
                }
            }
            if(perfect==true){
                return input;
            }else{
                Numbers[input[0]]=true;
                uint[] newarr; 
                newarr.push(input[0]);
                for (uint i=1; i < input.length; i++){
                    if(Numbers[input[i]]==false){
                        Numbers[input[i]]=true;
                        newarr.push(input[i]);
                    }
                }
                return newarr;
            }
            
        }
    }
}
