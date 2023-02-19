// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0;

contract SimpleStorage{
     mapping(uint256 => Patient) patientlist;
    //patient details
        struct Patient{
            uint Patientid;
            string Name;
            uint age;
            uint weight;
            uint height;
            uint phoneno;
            string description;
            string Address;
            string Gender;
            string emailid;
    }
    Patient p;

    function setPatientinfo(uint _Patientid,string memory _Name,uint _age,string memory _Gender, uint _height,uint _weight,uint _phoneno,string memory _Address, string memory _emailid,string  memory _description) public {
    
        p.Name = _Name;
        p.age = _age;
        p.Gender = _Gender;
        p.weight = _weight;
        p.height = _height;
        p.phoneno = _phoneno;
        p.emailid = _emailid;
        p.Address = _Address;
        p.description = _description;

        patientlist[_Patientid] = p;
    }

    function GetPatientinfo(uint256 _Patientid) public view returns ( string memory, uint256 , string memory , uint256 , uint256 , uint256 , string memory, string memory ,string memory ) {

        Patient memory p = patientlist[_Patientid];

        return (p.Name,p.age,p.Gender,p.weight,p.height,p.phoneno,p.emailid,p.Address,p.description);
    }
}