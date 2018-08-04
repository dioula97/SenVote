pragma solidity ^0.4.18;


contract Vote {
     //  Ceci est un événement qui est appelé chaque fois qu'un candidat est ajouté afin que le frontend puisse
    // afficher correctement le candidat avec le bon identifiant d'élément (Celui-ci est utilisé pour
    // voter pour le candidat, puisqu'il s'agit d'un des arguments pour la fonction "voter")
    event CandidatAjoute(uint candidatID);

    // Cette structure décrit un votant, qui a un identifiant et l'identifiant du candidat pour lequel il a voté
    struct Votant {
        bytes32 uid; 
        uint candidatIDVote;
    }
    // Description d'un candidat
    struct Candidat {
        bytes32 nom;
        bytes32 parti; 
       // Le booleen Exist verfie si la structure existe
       // Il nous permettra de suivre le candidat
        bool Exist; 
    }

    uint nombreCandidats;
    uint nombreVotants;

    
    mapping (uint => Candidat) candidats;
    mapping (uint => Votant) votants;
    

    function ajouterCandidat(bytes32 nom, bytes32 parti) public {
       
        uint candidatID = nombreCandidats++;
        candidats[candidatID] = Candidat(nom,parti,true);
       emit CandidatAjoute(candidatID);
    }

    function voter(bytes32 uid, uint candidatID) public {
        if (candidats[candidatID].Exist == true) {
            uint votantID = nombreVotants++;
            votants[votantID] = Votant(uid,candidatID);
        }
    }


    function totalVotes(uint candidatID) view public returns (uint) {
        uint nombreDeVotes = 0; 
        for (uint i = 0; i < nombreVotants; i++) {
            if (votants[i].candidatIDVote == candidatID) {
                nombreDeVotes++;
            }
        }
        return nombreDeVotes; 
    }

    function getNombreDeCandidats() public view returns(uint) {
        return nombreCandidats;
    }

    function getNombreDeVotants() public view returns(uint) {
        return nombreVotants;
    }

    function getCandidat(uint candidatID) public view returns (uint,bytes32, bytes32) {
        return (candidatID,candidats[candidatID].nom,candidats[candidatID].parti);
    }
}
