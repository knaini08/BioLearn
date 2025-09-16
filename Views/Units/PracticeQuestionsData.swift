//
//  PracticeQuestionsData.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/28/25.
//

import Foundation

struct PracticeQuestion: Identifiable, Equatable, Codable {
    var id = UUID()
    let question: String
    let options: [String]
    let correctAnswer: String
    let explanation: String
    let topic: String
    let unit: Int // Add this field to associate questions with specific units
}

// Sample data for multiple units
let allPracticeQuestions: [PracticeQuestion] = [
    PracticeQuestion(
        question: "What type of molecule is water?",
        options: ["Polar", "Ionic", "Nonpolar", "Covalent"].shuffled().shuffled(),
        correctAnswer: "Polar",
        explanation: "Water is polar due to an unequal sharing of electrons, creating partial charges.",
        topic: "1.1",
        unit: 1
    ),
    PracticeQuestion(
        question: "What type of bond holds two water molecules together?",
        options: ["Ionic bond", "Hydrogen bond", "Covalent bond", "Peptide bond"].shuffled().shuffled(),
        correctAnswer: "Hydrogen bond",
        explanation: "The partially positive hydrogen on one water molecule is attracted to the partially negative oxygen on another.",
        topic: "1.1",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which property of water allows for surface tension?",
        options: ["Adhesion", "Cohesion", "High specific heat", "Solvent ability"].shuffled().shuffled(),
        correctAnswer: "Cohesion",
        explanation: "Cohesion results from hydrogen bonding between water molecules, allowing surface tension.",
        topic: "1.1",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which property of water enables capillary action?",
        options: ["Cohesion", "Adhesion", "Density", "Hydrophobicity"].shuffled().shuffled(),
        correctAnswer: "Adhesion",
        explanation: "Adhesion allows water to stick to other substances, enabling capillary action in small tubes.",
        topic: "1.1",
        unit: 1
    ),
    PracticeQuestion(
        question: "Why does ice float on water?",
        options: ["Ice is more dense", "Water is nonpolar", "Ice is less dense", "Water has a high specific heat"].shuffled().shuffled(),
        correctAnswer: "Ice is less dense",
        explanation: "As water freezes, molecules form a crystalline structure, making ice less dense than liquid water.",
        topic: "1.1",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which element is essential for organic molecules?",
        options: ["Oxygen", "Carbon", "Nitrogen", "Hydrogen"].shuffled(),
        correctAnswer: "Carbon",
        explanation: "Carbon is the backbone of organic molecules due to its ability to form four covalent bonds.",
        topic: "1.2",
        unit: 1
    ),
    PracticeQuestion(
        question: "What type of molecules consist only of carbon and hydrogen?",
        options: ["Proteins", "Carbohydrates", "Hydrocarbons", "Lipids"].shuffled(),
        correctAnswer: "Hydrocarbons",
        explanation: "Hydrocarbons are nonpolar molecules composed solely of carbon and hydrogen.",
        topic: "1.2",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which functional group is represented by -OH?",
        options: ["Hydroxyl", "Amino", "Carbonyl", "Methyl"].shuffled(),
        correctAnswer: "Hydroxyl",
        explanation: "The hydroxyl (-OH) group is found in alcohols and makes molecules more hydrophilic.",
        topic: "1.2",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which functional group is represented by -NH2?",
        options: ["amino group", "carbonyl group", "carboxyl group", "hydroxyl group"].shuffled(),
        correctAnswer: "amino group",
        explanation: "The amino group (NH2), which helps builds proteins, consists of a single Nitrogen atom bonded to 2 Hydrogen atoms.",
        topic: "1.2",
        unit: 1
        ),
    PracticeQuestion(
        question: "Water is able to form hydrogen bonds because...",
        options: ["Each of the hydrogen atoms has a slightly negative charge", "Hydrogen  has a slightly positive charge, so it bonds to other Hydrogens", "Polar covalent bonds hold it together", "The oxygen atom has a slightly negative charge, and bonds to slightly positive hydrogens"].shuffled(),
        correctAnswer: "The oxygen atom has a slightly negative charge, and bonds to slightly positive hydrogens",
        explanation: "Hydrogen bonds in water occur when the oxygen atom of one water molecule bonds to the hydrogen atom of another water molecule.",
        topic: "1.1",
        unit: 1
        ),
    PracticeQuestion(
        question: "Large bodies of water do not quickly fluctuate because...",
        options: ["Water is polar", "Water is a universal solvent", "Water acts as a buffer", "Water has a high specific heat"].shuffled(),
        correctAnswer: "Water has a high specific heat",
        explanation: "Water has a high specific heat because of the strong hydrogen bonds between its molecules.",
        topic: "1.1",
        unit: 1
        ),
    PracticeQuestion(
        question: "Carbon dioxide (CO2) is an example of a ____ bond",
        options: ["adhesive", "cohesive", "covalent", "ionic"].shuffled(),
        correctAnswer: "covalent",
        explanation: "A carbon dioxide molecule is connected by polar covalent bonds",
        topic: "1.1",
        unit: 1
        ),
    PracticeQuestion(
        question: "What type of functional group is represented by -HS?",
        options: ["hydroxyl", "hydronyl", "sulfhydryl", "sulfhydroxyl"].shuffled(),
        correctAnswer: "sulfhydryl",
        explanation: "The sulfhydryl group consists of one Sulfur atom bonded to a Hydrogen atom.",
        topic: "1.2",
        unit: 1
    ),
    PracticeQuestion(
        question: "Lithium Fluoride (LiF) is an example of a(n) ______ bond",
        options: ["adhesive", "ionic", "hydrogen", "covalent"].shuffled(),
        correctAnswer: "ionic",
        explanation: "Lithium is a positively charged metal, and Fluorine is a negatively charged non-metal. Forms an ionic bond.",
        topic: "1.1",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which macromolecule is NOT a polymer?",
        options: ["Carbohydrates", "Proteins", "Lipids", "Nucleic acids"].shuffled(),
        correctAnswer: "Lipids",
        explanation: "Lipids are not true polymers because they do not consist of repeating monomer units.",
        topic: "1.3",
        unit: 1
    ),
    PracticeQuestion(
        question: "What is the monomer of proteins?",
        options: ["Monosaccharides", "Amino acids", "Nucleotides", "Fatty acids"].shuffled(),
        correctAnswer: "Amino acids",
        explanation: "Proteins are made of amino acids linked by peptide bonds.",
        topic: "1.4",
        unit: 1
    ),
    PracticeQuestion(
        question: "What type of bond connects amino acids?",
        options: ["Hydrogen bond", "Peptide bond", "Ionic bond", "Glycosidic bond"].shuffled(),
        correctAnswer: "Peptide bond",
        explanation: "Peptide bonds form between the amino and carboxyl groups of amino acids.",
        topic: "1.4",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which level of protein structure involves alpha-helices and beta-pleated sheets?",
        options: ["Primary", "Secondary", "Tertiary", "Quaternary"].shuffled(),
        correctAnswer: "Secondary",
        explanation: "The secondary structure results from hydrogen bonding in the polypeptide backbone.",
        topic: "1.4",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which macromolecule stores and transmits genetic information?",
        options: ["Proteins", "Lipids", "Carbohydrates", "Nucleic acids"].shuffled(),
        correctAnswer: "Nucleic acids",
        explanation: "Nucleic acids (DNA and RNA) store, transmit, and express hereditary information.",
        topic: "1.6",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which nitrogenous base is found in RNA but not in DNA?",
        options: ["Thymine", "Adenine", "Uracil", "Cytosine"].shuffled(),
        correctAnswer: "Uracil",
        explanation: "Uracil replaces thymine in RNA.",
        topic: "1.6",
        unit: 1
    ),
    PracticeQuestion(
        question: "What is the main component of cell membranes?",
        options: ["Proteins", "Phospholipids", "Carbohydrates", "Steroids"].shuffled(),
        correctAnswer: "Phospholipids",
        explanation: "Phospholipids form a bilayer, with hydrophilic heads and hydrophobic tails.",
        topic: "1.5",
        unit: 1
    ),
    PracticeQuestion(
        question: "What type of lipid has four fused rings in its structure?",
        options: ["Phospholipids", "Steroids", "Fats", "Oils"].shuffled(),
        correctAnswer: "Steroids",
        explanation: "Steroids, like cholesterol and testosterone, have a characteristic four-ring structure.",
        topic: "1.5",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which polysaccharide is used for energy storage in plants?",
        options: ["Cellulose", "Chitin", "Starch", "Glycogen"].shuffled(),
        correctAnswer: "Starch",
        explanation: "Plants store excess glucose as starch.",
        topic: "1.5",
        unit: 1
    ),
    PracticeQuestion(
        question: "What type of reaction joins monomers to form polymers?",
        options: ["Hydrolysis", "Dehydration reaction", "Condensation", "Oxidation"].shuffled(),
        correctAnswer: "Dehydration reaction",
        explanation: "A dehydration reaction removes water to form covalent bonds between monomers.",
        topic: "1.3",
        unit: 1
    ),
    PracticeQuestion(
        question: "Which level of protein structure involves multiple polypeptides interacting?",
        options: ["Primary", "Secondary", "Tertiary", "Quaternary"].shuffled(),
        correctAnswer: "Quaternary",
        explanation: "The quaternary structure consists of multiple polypeptide chains.",
        topic: "1.4",
        unit: 1
    ),
    PracticeQuestion(
            question: "What property of water allows it to dissolve many substances?",
            options: ["Cohesion", "Adhesion", "Polarity", "High specific heat"].shuffled(),
            correctAnswer: "Polarity",
            explanation: "Water's polarity allows it to dissolve ionic and polar molecules.",
            topic: "1.1",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which type of macromolecule serves as an immediate energy source?",
            options: ["Proteins", "Lipids", "Carbohydrates", "Nucleic acids"].shuffled(),
            correctAnswer: "Carbohydrates",
            explanation: "Carbohydrates, like glucose, provide quick energy for cells.",
            topic: "1.5",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which process breaks down polymers into monomers?",
            options: ["Dehydration reaction", "Hydrolysis", "Condensation", "Sublimation"].shuffled(),
            correctAnswer: "Hydrolysis",
            explanation: "Hydrolysis adds water to break bonds between monomers.",
            topic: "1.3",
            unit: 1
        ),
       
        PracticeQuestion(
            question: "What type of fatty acid has one or more double bonds?",
            options: ["Saturated", "Unsaturated", "Trans", "Hydrogenated"].shuffled(),
            correctAnswer: "Unsaturated",
            explanation: "Unsaturated fats have double bonds, making them liquid at room temperature.",
            topic: "1.5",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which macromolecule is responsible for catalyzing biochemical reactions?",
            options: ["Carbohydrates", "Lipids", "Proteins", "Nucleic acids"].shuffled(),
            correctAnswer: "Proteins",
            explanation: "Enzymes, which are proteins, speed up chemical reactions in cells.",
            topic: "1.4",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which nitrogenous bases pair together in DNA?",
            options: ["A-G, C-T", "A-T, C-G", "A-C, G-T", "A-U, C-G"].shuffled(),
            correctAnswer: "A-T, C-G",
            explanation: "Adenine pairs with thymine, and cytosine pairs with guanine in DNA.",
            topic: "1.6",
            unit: 1
        ),
        PracticeQuestion(
            question: "What is the backbone of a DNA molecule composed of?",
            options: ["Nucleotides", "Amino acids", "Sugar-phosphate", "Lipid bilayer"].shuffled(),
            correctAnswer: "Sugar-phosphate",
            explanation: "The sugar-phosphate backbone provides structure to DNA.",
            topic: "1.6",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which macromolecule contains the instructions for protein synthesis?",
            options: ["Carbohydrates", "Lipids", "Proteins", "Nucleic acids"].shuffled(),
            correctAnswer: "Nucleic acids",
            explanation: "DNA and RNA store and transmit genetic information for protein synthesis.",
            topic: "1.6",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which type of bond forms between complementary bases in DNA?",
            options: ["Covalent", "Ionic", "Hydrogen", "Peptide"].shuffled(),
            correctAnswer: "Hydrogen",
            explanation: "Hydrogen bonds hold complementary base pairs together in DNA.",
            topic: "1.6",
            unit: 1
        ),
        PracticeQuestion(
            question: "What property of water helps regulate Earth's temperature?",
            options: ["Cohesion", "Adhesion", "High specific heat", "Density"].shuffled(),
            correctAnswer: "High specific heat",
            explanation: "Water absorbs and releases heat slowly, stabilizing temperatures.",
            topic: "1.1",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which part of a phospholipid is hydrophobic?",
            options: ["Phosphate group", "Glycerol backbone", "Fatty acid tails", "Hydroxyl group"].shuffled(),
            correctAnswer: "Fatty acid tails",
            explanation: "The nonpolar fatty acid tails repel water, making them hydrophobic.",
            topic: "1.5",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which polysaccharide is a major component of plant cell walls?",
            options: ["Glycogen", "Chitin", "Starch", "Cellulose"].shuffled(),
            correctAnswer: "Cellulose",
            explanation: "Cellulose provides structural support in plant cell walls.",
            topic: "1.5",
            unit: 1
        ),
        PracticeQuestion(
            question: "What determines the function of a protein?",
            options: ["Its charge", "Its amino acid sequence", "Its solubility", "Its polarity"].shuffled(),
            correctAnswer: "Its amino acid sequence",
            explanation: "The order of amino acids determines the protein’s structure and function.",
            topic: "1.4",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which type of macromolecule provides long-term energy storage?",
            options: ["Carbohydrates", "Proteins", "Nucleic acids", "Lipids"].shuffled(),
            correctAnswer: "Lipids",
            explanation: "Lipids store energy more efficiently than carbohydrates.",
            topic: "1.5",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which bond links monosaccharides together?",
            options: ["Peptide bond", "Hydrogen bond", "Glycosidic bond", "Phosphodiester bond"].shuffled(),
            correctAnswer: "Glycosidic bond",
            explanation: "Glycosidic bonds form between monosaccharides in polysaccharides.",
            topic: "1.5",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which protein structure level involves interactions between R groups?",
            options: ["Primary", "Secondary", "Tertiary", "Quaternary"].shuffled(),
            correctAnswer: "Tertiary",
            explanation: "Tertiary structure is determined by R group interactions.",
            topic: "1.4",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which molecule contains instructions for protein synthesis?",
            options: ["DNA", "RNA", "Lipids", "Proteins"].shuffled(),
            correctAnswer: "DNA",
            explanation: "DNA carries the genetic code for making proteins.",
            topic: "1.6",
            unit: 1
        ),
        PracticeQuestion(
            question: "Which macromolecule forms enzymes?",
            options: ["Carbohydrates", "Lipids", "Proteins", "Nucleic acids"].shuffled(),
            correctAnswer: "Proteins",
            explanation: "Enzymes are proteins that speed up biochemical reactions.",
            topic: "1.4",
            unit: 1
        ),
    PracticeQuestion(
            question: "What is the primary function of ribosomes?",
            options: ["Synthesize proteins", "Produce ATP", "Transport materials", "Store DNA"].shuffled(),
            correctAnswer: "Synthesize proteins",
            explanation: "Ribosomes are responsible for translating mRNA into polypeptide chains during protein synthesis.",
            topic: "2.1",
            unit: 2
        ),
        PracticeQuestion(
            question: "What distinguishes rough ER from smooth ER?",
            options: ["Smooth ER synthesizes proteins, rough ER synthesizes lipids", "Rough ER has ribosomes, smooth ER does not", "Smooth ER produces ATP, rough ER stores DNA", "Rough ER detoxifies substances, smooth ER synthesizes proteins"].shuffled(),
            correctAnswer: "Rough ER has ribosomes, smooth ER does not",
            explanation: "The rough ER is studded with ribosomes, while the smooth ER lacks ribosomes and is involved in lipid synthesis and detoxification.",
            topic: "2.1",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the function of the Golgi complex?",
            options: ["Synthesizes proteins", "Modifies and packages proteins", "Produces ATP", "Stores lipids"].shuffled(),
            correctAnswer: "Modifies and packages proteins",
            explanation: "The Golgi complex processes and packages proteins and lipids from the ER, sending them to their correct locations within or outside the cell.",
            topic: "2.1",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the role of lysosomes?",
            options: ["Synthesize proteins", "Store energy", "Digest waste", "Regulate cellular activities"].shuffled(),
            correctAnswer: "Digest waste",
            explanation: "Lysosomes contain digestive enzymes that break down waste, cellular debris, and foreign particles, playing a key role in recycling materials.",
            topic: "2.1",
            unit: 2
        ),
        PracticeQuestion(
            question: "What do peroxisomes break down?",
            options: ["Fatty acids and hydrogen peroxide", "Proteins and RNA", "Glucose and oxygen", "Lipids and carbon dioxide"].shuffled(),
            correctAnswer: "Fatty acids and hydrogen peroxide",
            explanation: "Peroxisomes break down fatty acids and detoxify harmful substances like hydrogen peroxide, converting them into water and oxygen.",
            topic: "2.1",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the function of the plasma membrane?",
            options: ["Support cell structure", "Regulate material transport", "Synthesize proteins", "Store DNA"].shuffled(),
            correctAnswer: "Regulate material transport",
            explanation: "The plasma membrane controls the movement of substances in and out of the cell, maintaining homeostasis.",
            topic: "2.1",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the role of mitochondria in the cell?",
            options: ["Photosynthesis", "Cell division", "ATP production", "Protein synthesis"].shuffled(),
            correctAnswer: "ATP production",
            explanation: "Mitochondria generate ATP through cellular respiration, providing energy for the cell.",
            topic: "2.1",
            unit: 2
        ),
        PracticeQuestion(
            question: "What do chloroplasts do in plant cells?",
            options: ["Store energy", "Convert sunlight into glucose", "Regulate temperature", "Break down proteins"].shuffled(),
            correctAnswer: "Convert sunlight into glucose",
            explanation: "Chloroplasts capture light energy and convert CO₂ and H₂O into glucose through photosynthesis.",
            topic: "2.1",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which type of cell lacks a nucleus?",
            options: ["Prokaryotes", "Eukaryotes", "Both", "Neither"].shuffled(),
            correctAnswer: "Prokaryotes",
            explanation: "Prokaryotic cells, such as bacteria, lack a nucleus, while eukaryotic cells have a membrane-bound nucleus.",
            topic: "2.1",
            unit: 2
        ),
        PracticeQuestion(
            question: "What does the nucleus store?",
            options: ["Proteins", "Lipids", "DNA", "RNA"].shuffled(),
            correctAnswer: "DNA",
            explanation: "The nucleus stores the cell's DNA, which contains the instructions for cellular activities and functions.",
            topic: "2.1",
            unit: 2
        ),
    PracticeQuestion(
            question: "What is the main function of chloroplasts?",
            options: ["ATP production", "Protein synthesis", "Photosynthesis", "Lipid synthesis"].shuffled(),
            correctAnswer: "Photosynthesis",
            explanation: "Chloroplasts convert light energy into chemical energy through photosynthesis, producing glucose for the cell.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "Where do light-dependent reactions of photosynthesis take place?",
            options: ["Stroma", "Thylakoid membrane", "Mitochondrial matrix", "Cytoplasm"].shuffled(),
            correctAnswer: "Thylakoid membrane",
            explanation: "Light-dependent reactions occur in the thylakoid membranes, where solar energy is used to generate ATP and NADPH.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the function of the grana in chloroplasts?",
            options: ["Store energy", "Increase surface area for photosynthesis", "Regulate cell division", "Transport materials"].shuffled(),
            correctAnswer: "Increase surface area for photosynthesis",
            explanation: "Grana are stacks of thylakoids that maximize light absorption for photosynthesis.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which part of the chloroplast is responsible for the Calvin cycle?",
            options: ["Thylakoid membrane", "Stroma", "Grana", "Inner membrane"].shuffled(),
            correctAnswer: "Stroma",
            explanation: "The stroma is the fluid-filled space where the Calvin cycle occurs, converting CO₂ into glucose using ATP and NADPH.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which organelle is known as the powerhouse of the cell?",
            options: ["Chloroplast", "Nucleus", "Mitochondria", "Rough ER"].shuffled(),
            correctAnswer: "Mitochondria",
            explanation: "Mitochondria produce ATP through cellular respiration, providing energy for the cell.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the function of the mitochondrial matrix?",
            options: ["Electron transport chain", "Krebs cycle", "Photosynthesis", "Protein synthesis"].shuffled(),
            correctAnswer: "Krebs cycle",
            explanation: "The mitochondrial matrix contains enzymes for the Krebs cycle, where acetyl-CoA is broken down to generate ATP and electron carriers.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is stored in the vacuole of a plant cell?",
            options: ["Proteins", "Water and nutrients", "DNA", "Enzymes for digestion"].shuffled(),
            correctAnswer: "Water and nutrients",
            explanation: "The vacuole stores water, ions, and nutrients and helps maintain turgor pressure in plant cells.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which organelle contains hydrolytic enzymes for breaking down waste?",
            options: ["Ribosome", "Peroxisome", "Lysosome", "Golgi apparatus"].shuffled(),
            correctAnswer: "Lysosome",
            explanation: "Lysosomes contain digestive enzymes that break down cellular waste, pathogens, and damaged organelles.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the primary role of the smooth ER?",
            options: ["Protein synthesis", "Detoxification and lipid synthesis", "ATP production", "Photosynthesis"].shuffled(),
            correctAnswer: "Detoxification and lipid synthesis",
            explanation: "The smooth ER synthesizes lipids, metabolizes carbohydrates, and detoxifies harmful substances.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "Why does the rough ER appear 'rough' under a microscope?",
            options: ["It has a folded membrane structure", "It contains large vacuoles", "It has ribosomes attached", "It stores calcium ions"].shuffled(),
            correctAnswer: "It has ribosomes attached",
            explanation: "The rough ER is covered with ribosomes, which are responsible for protein synthesis.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the function of microtubules?",
            options: ["Store genetic information", "Provide structure and transport materials", "Break down fatty acids", "Synthesize proteins"].shuffled(),
            correctAnswer: "Provide structure and transport materials",
            explanation: "Microtubules are hollow tubes that help with intracellular transport, cell division, and movement of cilia and flagella.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which cytoskeletal component is involved in muscle contraction?",
            options: ["Microtubules", "Microfilaments", "Intermediate filaments", "Cilia"].shuffled(),
            correctAnswer: "Microfilaments",
            explanation: "Microfilaments, composed of actin, play a key role in muscle contraction, cell movement, and shape maintenance.",
            topic: "2.2",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which cytoskeletal component provides structural support to the cell?",
            options: ["Microtubules", "Microfilaments", "Intermediate filaments", "Ribosomes"].shuffled(),
            correctAnswer: "Intermediate filaments",
            explanation: "Intermediate filaments provide mechanical strength and help maintain the cell's shape.",
            topic: "2.2",
            unit: 2
        ),
    PracticeQuestion(
           question: "Why is cell size important?",
           options: ["Larger cells store more energy", "Smaller cells divide more frequently", "Cells must efficiently exchange materials with the environment", "Cells grow indefinitely without limitation"].shuffled(),
           correctAnswer: "Cells must efficiently exchange materials with the environment",
           explanation: "Cells need an optimal size to maintain proper nutrient intake and waste removal. If a cell becomes too large, diffusion becomes inefficient.",
           topic: "2.3",
           unit: 2
       ),
       PracticeQuestion(
           question: "What happens to the surface area-to-volume (SA:V) ratio as a cell grows?",
           options: ["It increases", "It remains the same", "It decreases", "It fluctuates randomly"].shuffled(),
           correctAnswer: "It decreases",
           explanation: "As a cell grows, its volume increases faster than its surface area, leading to a lower SA:V ratio and reduced efficiency in material exchange.",
           topic: "2.3",
           unit: 2
       ),
       PracticeQuestion(
           question: "Why is a high SA:V ratio beneficial for cells?",
           options: ["It speeds up cell division", "It allows efficient diffusion and transport", "It increases energy storage", "It makes the cell more rigid"].shuffled(),
           correctAnswer: "It allows efficient diffusion and transport",
           explanation: "A high SA:V ratio enables efficient exchange of nutrients, gases, and waste, which is crucial for cell function.",
           topic: "2.3",
           unit: 2
       ),
       PracticeQuestion(
           question: "Which of the following is a major challenge for large cells?",
           options: ["Lack of DNA", "Slow metabolism", "Inefficient material transport", "Excessive surface area"].shuffled(),
           correctAnswer: "Inefficient material transport",
           explanation: "Larger cells struggle to transport nutrients and waste efficiently due to a lower SA:V ratio.",
           topic: "2.3",
           unit: 2
       ),
       PracticeQuestion(
           question: "What is the primary function of the surface area of a cell?",
           options: ["Regulate genetic material", "Store cellular waste", "Determine material exchange capacity", "Provide energy for cellular processes"].shuffled(),
           correctAnswer: "Determine material exchange capacity",
           explanation: "A larger surface area enables a cell to transport materials more effectively.",
           topic: "2.3",
           unit: 2
       ),
       PracticeQuestion(
           question: "Why do multicellular organisms consist of many small cells instead of a few large ones?",
           options: ["To maintain a high SA:V ratio", "To prevent excessive energy use", "To reduce genetic material", "To increase cellular waste"].shuffled(),
           correctAnswer: "To maintain a high SA:V ratio",
           explanation: "Smaller cells ensure efficient diffusion and transport of materials, supporting metabolic processes.",
           topic: "2.3",
           unit: 2
       ),
       PracticeQuestion(
           question: "How do cells adapt to optimize their SA:V ratio?",
           options: ["By growing larger", "By compartmentalizing, or creating smaller structures like the grana", "By reducing metabolic activity", "By decreasing their number of organelles"].shuffled(),
           correctAnswer: "By compartmentalizing, or creating smaller structures like the grana",
           explanation: "Cells can optimize their SA:V ratio by forming projections (e.g., microvilli) or flattening their shape to increase surface area.",
           topic: "2.3",
           unit: 2
       ),
       PracticeQuestion(
           question: "What happens when a cell's volume increases significantly relative to its surface area?",
           options: ["Material exchange becomes less efficient", "DNA replication speeds up", "The cell becomes more efficient", "The cell produces more ribosomes"].shuffled(),
           correctAnswer: "Material exchange becomes less efficient",
           explanation: "A lower SA:V ratio reduces the cell's ability to efficiently transport nutrients and waste.",
           topic: "2.3",
           unit: 2
       ),
       PracticeQuestion(
           question: "Why do highly active cells, such as muscle cells, require efficient exchange of materials?",
           options: ["They store large amounts of energy", "They have low metabolic rates", "They require a constant supply of nutrients and oxygen", "They function without organelles"].shuffled(),
           correctAnswer: "They require a constant supply of nutrients and oxygen",
           explanation: "Highly active cells need efficient exchange to sustain their high metabolic demands.",
           topic: "2.3",
           unit: 2
       ),
       PracticeQuestion(
           question: "Which of the following is NOT an adaptation to improve SA:V ratio?",
           options: ["Flattened cell shapes", "Structural changes to increase SA", "Compartmentalization", "Increasing cell volume without structural changes"].shuffled(),
           correctAnswer: "Increasing cell volume without structural changes",
           explanation: "Larger cells without adaptations face inefficiencies in material exchange, which limits their function.",
           topic: "2.3",
           unit: 2
       ),
    PracticeQuestion(
           question: "What is the primary function of the cell membrane?",
           options: ["Generating energy", "Providing structural support", "Regulating what enters and exits the cell", "Synthesizing proteins"].shuffled(),
           correctAnswer: "Regulating what enters and exits the cell",
           explanation: "The cell membrane is selectively permeable, controlling the movement of substances in and out of the cell to maintain homeostasis.",
           topic: "2.4",
           unit: 2
       ),
       PracticeQuestion(
           question: "Which part of a phospholipid is hydrophilic?",
           options: ["The fatty acid tails", "The phosphate head", "The entire molecule", "None of the above"].shuffled(),
           correctAnswer: "The phosphate head",
           explanation: "Phospholipid heads are hydrophilic and face outward toward the water, while the fatty acid tails are hydrophobic and face inward.",
           topic: "2.4",
           unit: 2
       ),
       PracticeQuestion(
           question: "What is the function of cholesterol in the cell membrane?",
           options: ["Acts as a protein channel", "Provides energy for transport", "Maintains membrane fluidity and stability", "Breaks down waste"].shuffled(),
           correctAnswer: "Maintains membrane fluidity and stability",
           explanation: "Cholesterol prevents phospholipids from packing too tightly in cold temperatures and helps stabilize the membrane in high temperatures.",
           topic: "2.4",
           unit: 2
       ),
       PracticeQuestion(
           question: "Which statement best describes the fluid mosaic model?",
           options: ["The membrane is a rigid structure", "Proteins and lipids move fluidly within the bilayer", "The membrane is composed only of phospholipids", "Membrane components never change"].shuffled(),
           correctAnswer: "Proteins and lipids move fluidly within the bilayer",
           explanation: "The fluid mosaic model describes the cell membrane as dynamic, with lateral movement of lipids and proteins allowing flexibility and function.",
           topic: "2.4",
           unit: 2
       ),
       PracticeQuestion(
           question: "What is the main role of integral membrane proteins?",
           options: ["Store genetic information", "Synthesize lipids", "Facilitate transport and signaling", "Break down toxins"].shuffled(),
           correctAnswer: "Facilitate transport and signaling",
           explanation: "Integral proteins span the membrane and are involved in functions like transport, signal reception, and structural support.",
           topic: "2.4",
           unit: 2
       ),
       PracticeQuestion(
           question: "How do glycoproteins contribute to cell function?",
           options: ["Store energy for the cell", "Facilitate DNA replication", "Help in cell recognition and signaling", "Regulate pH balance"].shuffled(),
           correctAnswer: "Help in cell recognition and signaling",
           explanation: "Glycoproteins contain carbohydrate chains that assist in cell recognition, immune response, and communication.",
           topic: "2.4",
           unit: 2
       ),
       PracticeQuestion(
           question: "What distinguishes peripheral proteins from integral proteins?",
           options: ["Peripheral proteins are embedded in the membrane", "Peripheral proteins attach loosely to the membrane surface", "Peripheral proteins help transport materials across the membrane", "Peripheral proteins form the lipid bilayer"].shuffled(),
           correctAnswer: "Peripheral proteins attach loosely to the membrane surface",
           explanation: "Unlike integral proteins, peripheral proteins are not embedded in the membrane but attach to its surface and assist in signaling and structural support.",
           topic: "2.4",
           unit: 2
       ),
       PracticeQuestion(
           question: "Which membrane component is responsible for cell recognition?",
           options: ["Phospholipids", "Glycoproteins", "Cholesterol", "Ribosomes"].shuffled(),
           correctAnswer: "Glycoproteins",
           explanation: "Glycoproteins contain carbohydrate chains that help cells recognize each other and interact with the immune system.",
           topic: "2.4",
           unit: 2
       ),
       PracticeQuestion(
           question: "Why are phospholipids arranged in a bilayer in the cell membrane?",
           options: ["To allow hydrophilic molecules to pass freely", "To form a rigid structure", "To create a barrier with hydrophobic and hydrophilic regions", "To facilitate active transport"].shuffled(),
           correctAnswer: "To create a barrier with hydrophobic and hydrophilic regions",
           explanation: "The amphipathic nature of phospholipids causes their hydrophilic heads to face outward and hydrophobic tails to face inward, forming a bilayer that regulates material movement.",
           topic: "2.4",
           unit: 2
       ),
       PracticeQuestion(
           question: "What role do glycolipids play in the cell membrane?",
           options: ["Provide energy for transport", "Facilitate protein synthesis", "Contribute to cell recognition and adhesion", "Act as enzymes for chemical reactions"].shuffled(),
           correctAnswer: "Contribute to cell recognition and adhesion",
           explanation: "Glycolipids help in immune response, cell signaling, and adhesion between cells in tissues.",
           topic: "2.4",
           unit: 2
       ),
    PracticeQuestion(
            question: "What characteristic of phospholipids allows them to form a bilayer?",
            options: ["They are completely hydrophobic", "They have hydrophilic heads and hydrophobic tails", "They are composed entirely of proteins", "They are charged molecules"].shuffled(),
            correctAnswer: "They have hydrophilic heads and hydrophobic tails",
            explanation: "Phospholipids are amphipathic, meaning they have hydrophilic (water-attracting) heads and hydrophobic (water-repelling) tails. This allows them to form a bilayer where the heads face outward and the tails face inward.",
            topic: "2.5",
            unit: 2
        ),
        PracticeQuestion(
            question: "What does selective permeability of the membrane mean?",
            options: ["All substances pass freely", "Only ions can cross the membrane", "The membrane regulates what enters and exits", "Water cannot pass through"].shuffled(),
            correctAnswer: "The membrane regulates what enters and exits",
            explanation: "Selective permeability means that the membrane allows certain molecules to pass while restricting others, maintaining homeostasis.",
            topic: "2.5",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which type of molecules can pass freely through the membrane?",
            options: ["Large polar molecules", "Ions", "Small nonpolar molecules", "Glucose"].shuffled(),
            correctAnswer: "Small nonpolar molecules",
            explanation: "Small nonpolar molecules like oxygen (O₂) and carbon dioxide (CO₂) can diffuse freely through the hydrophobic bilayer.",
            topic: "2.5",
            unit: 2
        ),
        PracticeQuestion(
            question: "Why do hydrophilic substances struggle to pass through the membrane?",
            options: ["They are too small", "They are repelled by the hydrophobic core", "They dissolve in the lipid bilayer", "They are actively transported"].shuffled(),
            correctAnswer: "They are repelled by the hydrophobic core",
            explanation: "The hydrophobic tails of the phospholipids create a barrier that prevents polar and charged molecules from easily crossing.",
            topic: "2.5",
            unit: 2
        ),
        PracticeQuestion(
            question: "How do large polar molecules and ions cross the membrane?",
            options: ["Simple diffusion", "Transport proteins", "They freely pass", "They dissolve in the lipid bilayer"].shuffled(),
            correctAnswer: "Transport proteins",
            explanation: "Large polar molecules like glucose and ions require specialized channel or carrier proteins to pass through the membrane.",
            topic: "2.5",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the role of channel proteins in the membrane?",
            options: ["Break down molecules", "Provide hydrophilic passageways", "Create energy", "Transport molecules using ATP"].shuffled(),
            correctAnswer: "Provide hydrophilic passageways",
            explanation: "Channel proteins form pores that allow specific ions or molecules to move through the membrane down their concentration gradient.",
            topic: "2.5",
            unit: 2
        ),
        PracticeQuestion(
            question: "How do carrier proteins transport molecules?",
            options: ["By forming a channel", "By changing shape to move molecules across", "By dissolving substances", "By breaking down large molecules"].shuffled(),
            correctAnswer: "By changing shape to move molecules across",
            explanation: "Carrier proteins bind to specific molecules, undergo a conformational change, and help transport them across the membrane.",
            topic: "2.5",
            unit: 2
        ),
        PracticeQuestion(
            question: "How do small polar molecules like water pass through the membrane?",
            options: ["They cannot pass through", "Through channel proteins called aquaporins", "By dissolving in the lipid bilayer", "By active transport"].shuffled(),
            correctAnswer: "Through channel proteins called aquaporins",
            explanation: "Water can pass through the membrane in small amounts, but aquaporins facilitate rapid water transport.",
            topic: "2.5",
            unit: 2
        ),
    PracticeQuestion(
            question: "What is a concentration gradient?",
            options: ["A difference in solute concentration across a membrane", "A type of membrane protein", "An ATP-dependent process", "A form of active transport"].shuffled(),
            correctAnswer: "A difference in solute concentration across a membrane",
            explanation: "A concentration gradient occurs when there is a difference in solute concentration between two areas, causing substances to move naturally from high to low concentration.",
            topic: "2.6",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which of the following is an example of passive transport?",
            options: ["Endocytosis", "Facilitated diffusion", "Sodium-potassium pump", "Exocytosis"].shuffled(),
            correctAnswer: "Facilitated diffusion",
            explanation: "Facilitated diffusion is a type of passive transport where molecules move down their concentration gradient through channel or carrier proteins without requiring energy.",
            topic: "2.6",
            unit: 2
        ),
        PracticeQuestion(
            question: "How does simple diffusion differ from facilitated diffusion?",
            options: ["Simple diffusion requires energy, facilitated diffusion does not", "Facilitated diffusion uses membrane proteins", "Facilitated diffusion only moves ions", "Simple diffusion moves molecules against their concentration gradient"].shuffled(),
            correctAnswer: "Facilitated diffusion uses membrane proteins",
            explanation: "Simple diffusion allows small, nonpolar molecules to move freely across the membrane, whereas facilitated diffusion requires channel or carrier proteins for larger or polar molecules.",
            topic: "2.6",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is required for active transport?",
            options: ["A concentration gradient", "ATP energy", "Only small molecules", "Water"].shuffled(),
            correctAnswer: "ATP energy",
            explanation: "Active transport moves molecules against their concentration gradient (from low to high concentration) and requires ATP energy to function.",
            topic: "2.6",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which of the following is a type of active transport?",
            options: ["Facilitated diffusion", "Simple diffusion", "Osmosis", "Sodium-potassium pump"].shuffled(),
            correctAnswer: "Sodium-potassium pump",
            explanation: "The sodium-potassium pump actively moves Na⁺ and K⁺ ions against their concentration gradients using ATP.",
            topic: "2.6",
            unit: 2
        ),
        PracticeQuestion(
            question: "How does endocytosis transport materials into the cell?",
            options: ["Through passive diffusion", "By engulfing material into vesicles", "By pumping ions across the membrane", "By moving substances through protein channels"].shuffled(),
            correctAnswer: "By engulfing material into vesicles",
            explanation: "Endocytosis is an active process where the cell membrane folds inward to engulf large molecules or particles, forming vesicles for transport.",
            topic: "2.6",
            unit: 2
        ),
        PracticeQuestion(
            question: "What type of endocytosis involves engulfing large particles?",
            options: ["Pinocytosis", "Phagocytosis", "Receptor-mediated endocytosis", "Exocytosis"].shuffled(),
            correctAnswer: "Phagocytosis",
            explanation: "Phagocytosis is a form of endocytosis where the cell engulfs large particles or microorganisms, forming vesicles that fuse with lysosomes for digestion.",
            topic: "2.6",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which process allows cells to release large molecules?",
            options: ["Endocytosis", "Facilitated diffusion", "Osmosis", "Exocytosis"].shuffled(),
            correctAnswer: "Exocytosis",
            explanation: "Exocytosis is the process where vesicles fuse with the plasma membrane to release large molecules, such as hormones or waste, outside the cell.",
            topic: "2.6",
            unit: 2
        ),
        PracticeQuestion(
            question: "What distinguishes receptor-mediated endocytosis from other forms of endocytosis?",
            options: ["It requires energy", "It is a type of passive transport", "It involves specific receptor proteins", "It expels molecules from the cell"].shuffled(),
            correctAnswer: "It involves specific receptor proteins",
            explanation: "Receptor-mediated endocytosis uses membrane-bound receptors to selectively bind and internalize specific molecules into vesicles.",
            topic: "2.6",
            unit: 2
        ),
    PracticeQuestion(
            question: "Which molecules require facilitated diffusion to cross the membrane?",
            options: ["Oxygen and carbon dioxide", "Glucose and ions", "Cholesterol and steroid hormones", "Water and ethanol"].shuffled(),
            correctAnswer: "Glucose and ions",
            explanation: "Large polar molecules like glucose and charged ions (Na⁺, K⁺) cannot diffuse through the hydrophobic bilayer and require transport proteins for facilitated diffusion.",
            topic: "2.7",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the role of carrier proteins in membrane transport?",
            options: ["They act as enzymes", "They allow molecules to pass freely", "They transport substances across membranes", "They store energy for the cell"].shuffled(),
            correctAnswer: "They transport substances across membranes",
            explanation: "Carrier proteins bind specific molecules and change shape to move them across membranes. Some act as pumps, using ATP for active transport.",
            topic: "2.7",
            unit: 2
        ),
        PracticeQuestion(
            question: "How does ATP contribute to concentration gradients?",
            options: ["It allows passive diffusion to occur", "It powers active transport to move substances against their gradient", "It helps water cross the membrane", "It creates ion channels"].shuffled(),
            correctAnswer: "It powers active transport to move substances against their gradient",
            explanation: "ATP provides energy for active transport, enabling pumps like the sodium-potassium pump to move ions against their concentration gradient.",
            topic: "2.7",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is cotransport?",
            options: ["Passive diffusion of two molecules", "Coupled transport of two substances, one moving down its gradient", "The use of ATP to move a single molecule", "Transport of only small nonpolar molecules"].shuffled(),
            correctAnswer: "Coupled transport of two substances, one moving down its gradient",
            explanation: "Cotransport involves one molecule moving down its concentration gradient, driving the active transport of another molecule against its gradient.",
            topic: "2.7",
            unit: 2
        ),
        PracticeQuestion(
            question: "What determines ion movement across a membrane?",
            options: ["Only the concentration gradient", "Only the electrical charge", "Both the concentration and electrical gradient", "Random diffusion"].shuffled(),
            correctAnswer: "Both the concentration and electrical gradient",
            explanation: "Ion movement is driven by the electrochemical gradient, which combines the effects of concentration differences and electrical charge differences across the membrane.",
            topic: "2.7",
            unit: 2
        ),
    PracticeQuestion(
            question: "How do molecules move in response to a concentration gradient?",
            options: ["From low to high concentration", "From high to low concentration", "Randomly without direction", "Only when ATP is present"].shuffled(),
            correctAnswer: "From high to low concentration",
            explanation: "Molecules diffuse passively down their concentration gradient, moving from high to low concentration without requiring energy.",
            topic: "2.8",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is osmosis?",
            options: ["Active transport of water", "Passive diffusion of water across a membrane", "Facilitated diffusion of water", "Endocytosis of water molecules"].shuffled(),
            correctAnswer: "Passive diffusion of water across a membrane",
            explanation: "Osmosis is the passive movement of water from a region of high water potential (low solute concentration) to low water potential (high solute concentration).",
            topic: "2.8",
            unit: 2
        ),
        PracticeQuestion(
            question: "What determines the direction of water movement?",
            options: ["Water potential", "Osmolarity", "Tonicity", "ATP availability"].shuffled(),
            correctAnswer: "Water potential",
            explanation: "Water moves from areas of high water potential to low water potential, which is influenced by solute concentration and pressure.",
            topic: "2.8",
            unit: 2
        ),
        PracticeQuestion(
            question: "What does a high osmolarity indicate?",
            options: ["High water potential", "Low solute concentration", "High solute concentration and low water potential", "Equal water and solute levels"].shuffled(),
            correctAnswer: "High solute concentration and low water potential",
            explanation: "Higher osmolarity means there is more solute and lower water potential, causing water to move toward that solution by osmosis.",
            topic: "2.8",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which statement best describes tonicity?",
            options: ["It determines membrane fluidity", "It describes how a solution affects cell water balance", "It controls ATP production", "It measures protein concentration"].shuffled(),
            correctAnswer: "It describes how a solution affects cell water balance",
            explanation: "Tonicity refers to the effect of a solution on a cell’s water movement, determining whether a cell gains or loses water.",
            topic: "2.8",
            unit: 2
        ),
        PracticeQuestion(
            question: "What happens to a cell in a hypotonic solution?",
            options: ["It shrinks", "It stays the same", "It swells or bursts", "It loses solutes"].shuffled(),
            correctAnswer: "It swells or bursts",
            explanation: "In a hypotonic solution, the external solute concentration is lower, causing water to enter the cell, potentially leading to swelling or bursting.",
            topic: "2.8",
            unit: 2
        ),
        PracticeQuestion(
            question: "Why is osmoregulation important for cells?",
            options: ["To maintain water balance and prevent damage", "To increase ATP production", "To make more proteins", "To enhance facilitated diffusion"].shuffled(),
            correctAnswer: "To maintain water balance and prevent damage",
            explanation: "Osmoregulation helps cells control water movement, preventing them from shrinking in hypertonic environments or bursting in hypotonic conditions.",
            topic: "2.8",
            unit: 2
        ),
    PracticeQuestion(
            question: "What is diffusion?",
            options: ["Active transport using ATP", "Passive movement down a concentration gradient", "Movement against a concentration gradient", "Selective transport requiring receptor proteins"].shuffled(),
            correctAnswer: "Passive movement down a concentration gradient",
            explanation: "Diffusion occurs as molecules move naturally from areas of high to low concentration due to random motion, requiring no energy input.",
            topic: "2.9",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which of the following increases the rate of diffusion?",
            options: ["Lower temperature", "Larger molecule size", "Steeper concentration gradient", "Equal solute concentrations"].shuffled(),
            correctAnswer: "Steeper concentration gradient",
            explanation: "A greater difference in concentration results in faster diffusion, while lower temperature and larger molecules slow it down.",
            topic: "2.9",
            unit: 2
        ),
        PracticeQuestion(
            question: "How do channel proteins facilitate diffusion?",
            options: ["By changing shape to transport molecules", "By creating hydrophilic pathways for molecules", "By using ATP to move molecules", "By engulfing molecules into vesicles"].shuffled(),
            correctAnswer: "By creating hydrophilic pathways for molecules",
            explanation: "Channel proteins form tunnels allowing ions and small polar molecules to pass through the membrane without interacting with the hydrophobic core.",
            topic: "2.9",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which transport method requires ATP?",
            options: ["Facilitated diffusion", "Osmosis", "Active transport", "Simple diffusion"].shuffled(),
            correctAnswer: "Active transport",
            explanation: "Active transport moves molecules against their concentration gradient using ATP, such as the sodium-potassium pump.",
            topic: "2.9",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the function of aquaporins?",
            options: ["Pump ions across the membrane", "Facilitate rapid water transport", "Engulf extracellular fluid", "Move molecules against their concentration gradient"].shuffled(),
            correctAnswer: "Facilitate rapid water transport",
            explanation: "Aquaporins are specialized channel proteins that allow water to pass through the membrane much faster than simple diffusion.",
            topic: "2.9",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which statement best describes exocytosis?",
            options: ["Brings substances into the cell", "Uses ATP to pump ions", "Fuses vesicles with the membrane to release contents", "Moves water across membranes"].shuffled(),
            correctAnswer: "Fuses vesicles with the membrane to release contents",
            explanation: "Exocytosis is a process where vesicles carrying substances merge with the membrane, releasing their contents outside the cell.",
            topic: "2.9",
            unit: 2
        ),
        PracticeQuestion(
            question: "Which process involves engulfing large particles or cells?",
            options: ["Pinocytosis", "Phagocytosis", "Facilitated diffusion", "Receptor-mediated endocytosis"].shuffled(),
            correctAnswer: "Phagocytosis",
            explanation: "Phagocytosis ('cell eating') is a form of endocytosis where cells engulf large particles, such as pathogens, for digestion.",
            topic: "2.9",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is receptor-mediated endocytosis?",
            options: ["Random uptake of extracellular fluid", "Selective uptake using receptor proteins", "Passive diffusion of ions", "Active transport of solutes"].shuffled(),
            correctAnswer: "Selective uptake using receptor proteins",
            explanation: "In receptor-mediated endocytosis, specific molecules bind to receptors on the membrane, triggering vesicle formation for targeted transport.",
            topic: "2.9",
            unit: 2
        ),
    PracticeQuestion(
            question: "Why do eukaryotic cells use compartmentalization?",
            options: ["To randomly distribute cellular processes", "To create specialized environments for efficiency", "To reduce the number of organelles", "To allow free movement of molecules"].shuffled(),
            correctAnswer: "To create specialized environments for efficiency",
            explanation: "Eukaryotic cells use membrane-bound organelles to separate incompatible reactions and concentrate specific molecules, enhancing cellular function.",
            topic: "2.10",
            unit: 2
        ),
        PracticeQuestion(
            question: "What is the role of lysosomes in compartmentalization?",
            options: ["To synthesize proteins", "To store genetic information", "To isolate hydrolytic enzymes for controlled digestion", "To facilitate ATP production"].shuffled(),
            correctAnswer: "To isolate hydrolytic enzymes for controlled digestion",
            explanation: "Lysosomes maintain an acidic environment for digestive enzymes, preventing damage to the rest of the cell.",
            topic: "2.10",
            unit: 2
        ),
        PracticeQuestion(
            question: "How does the mitochondria’s structure support its function?",
            options: ["Its single membrane maximizes surface area", "It has a double membrane that separates metabolic reactions", "It lacks compartmentalization for efficient diffusion", "It has lysosomal enzymes for digestion"].shuffled(),
            correctAnswer: "It has a double membrane that separates metabolic reactions",
            explanation: "The outer membrane regulates transport, while the highly folded inner membrane (cristae) provides a large surface area for ATP production.",
            topic: "2.10",
            unit: 2
        ),
    PracticeQuestion(
          question: "What does the Endosymbiotic Theory explain?",
          options: ["Origin of the cell membrane", "Origin of mitochondria and chloroplasts", "How cells divide", "Evolution of prokaryotic cells"].shuffled(),
          correctAnswer: "Origin of mitochondria and chloroplasts",
          explanation: "The theory suggests that mitochondria and chloroplasts originated from independent prokaryotic cells that were engulfed by a host cell, forming a symbiotic relationship.",
          topic: "2.11",
          unit: 2
      ),
      PracticeQuestion(
          question: "What evidence supports the Endosymbiotic Theory?",
          options: ["Mitochondria and chloroplasts have a nucleus", "Mitochondria and chloroplasts share traits with eukaryotes", "Mitochondria and chloroplasts have their own circular DNA, double membranes, and ribosomes", "Mitochondria and chloroplasts replicate through meiosis"].shuffled(),
          correctAnswer: "Mitochondria and chloroplasts have their own circular DNA, double membranes, and ribosomes",
          explanation: "Mitochondria and chloroplasts have characteristics similar to bacteria, such as circular DNA, double membranes, and ribosomes that resemble prokaryotic structures.",
          topic: "2.11",
          unit: 2
      ),
    PracticeQuestion(
            question: "What type of macromolecule are enzymes?",
            options: ["Carbohydrates", "Lipids", "Proteins", "Nucleic Acids"].shuffled(),
            correctAnswer: "Proteins",
            explanation: "Enzymes are proteins that function as biological catalysts to speed up chemical reactions.",
            topic: "3.1",
            unit: 3
        ),
        PracticeQuestion(
            question: "How do enzymes speed up biochemical reactions?",
            options: ["By increasing activation energy", "By lowering activation energy", "By consuming reactants", "By changing the temperature"].shuffled(),
            correctAnswer: "By lowering activation energy",
            explanation: "Enzymes speed up biochemical reactions by lowering the activation energy required for the reaction to proceed.",
            topic: "3.1",
            unit: 3
        ),
        PracticeQuestion(
            question: "What is the function of the active site on an enzyme?",
            options: ["To store energy", "To bind to substrates", "To produce ATP", "To break down the enzyme"].shuffled(),
            correctAnswer: "To bind to substrates",
            explanation: "The active site is the region on an enzyme where the substrate binds, allowing the enzyme to catalyze the reaction.",
            topic: "3.1",
            unit: 3
        ),
        PracticeQuestion(
            question: "What is the molecule that an enzyme acts upon?",
            options: ["Product", "Cofactor", "Substrate", "Inhibitor"].shuffled(),
            correctAnswer: "Substrate",
            explanation: "The substrate is the specific molecule that binds to an enzyme’s active site and undergoes a chemical reaction.",
            topic: "3.1",
            unit: 3
        ),
        PracticeQuestion(
            question: "Which suffix is commonly found at the end of enzyme names?",
            options: ["-ose", "-ase", "-ine", "-ol"].shuffled(),
            correctAnswer: "-ase",
            explanation: "Most enzyme names end in '-ase', such as lactase and amylase, indicating their catalytic function.",
            topic: "3.1",
            unit: 3
        ),
        PracticeQuestion(
            question: "Why are enzymes reusable?",
            options: ["They are permanently altered after each reaction", "They are not consumed in the reaction", "They break down after one use", "They are converted into substrates"].shuffled(),
            correctAnswer: "They are not consumed in the reaction",
            explanation: "Enzymes are reusable because they do not get used up in the reaction; they continue to function after catalyzing a reaction.",
            topic: "3.1",
            unit: 3
        ),
        PracticeQuestion(
            question: "What happens when a substrate binds to an enzyme's active site?",
            options: ["The enzyme is destroyed", "A reaction is catalyzed", "The substrate is repelled", "The enzyme is deactivated"].shuffled(),
            correctAnswer: "A reaction is catalyzed",
            explanation: "When a substrate binds to an enzyme’s active site, the enzyme facilitates the reaction, forming products.",
            topic: "3.1",
            unit: 3
        ),

        PracticeQuestion(
            question: "Why are enzymes specific to one type of reaction?",
            options: ["They are made of DNA", "They only bind to ATP", "Their active site has a specific shape", "They can only function once"].shuffled(),
            correctAnswer: "Their active site has a specific shape",
            explanation: "Enzymes are designed to catalyze specific reactions based on the shape of their active site, which determines substrate binding.",
            topic: "3.2",
            unit: 3
        ),
        PracticeQuestion(
            question: "Which type of reactions can enzymes facilitate?",
            options: ["Only synthesis", "Only digestion", "Both synthesis and digestion", "Only hydrolysis"].shuffled(),
            correctAnswer: "Both synthesis and digestion",
            explanation: "Enzymes can catalyze both synthesis reactions (building molecules) and digestion reactions (breaking down molecules).",
            topic: "3.2",
            unit: 3
        ),
        PracticeQuestion(
            question: "How do enzymes affect activation energy?",
            options: ["They increase it", "They eliminate it", "They lower it", "They do not affect it"].shuffled(),
            correctAnswer: "They lower it",
            explanation: "Enzymes speed up reactions by reducing the activation energy required to start the reaction, making the process more efficient.",
            topic: "3.2",
            unit: 3
        ),
    PracticeQuestion(
            question: "What happens to an enzyme when it undergoes denaturation?",
            options: ["It speeds up reactions", "It becomes inactive", "It binds more substrates", "It replicates itself"].shuffled(),
            correctAnswer: "It becomes inactive",
            explanation: "Denaturation alters an enzyme’s structure due to factors like high temperature or extreme pH, making it unable to bind with its substrate.",
            topic: "3.3",
            unit: 3
        ),
        PracticeQuestion(
            question: "How does temperature affect enzyme function?",
            options: ["Enzymes work faster at all temperatures", "Low temperatures denature enzymes", "High temperatures can denature enzymes", "Temperature has no effect"].shuffled(),
            correctAnswer: "High temperatures can denature enzymes",
            explanation: "At high temperatures, enzymes may lose their shape, stopping their function, while low temperatures slow down molecular motion, reducing reaction rates.",
            topic: "3.3",
            unit: 3
        ),
        PracticeQuestion(
            question: "Why does extreme pH affect enzyme activity?",
            options: ["It breaks peptide bonds", "It alters the enzyme's shape", "It removes active sites", "It increases enzyme production"].shuffled(),
            correctAnswer: "It alters the enzyme's shape",
            explanation: "Enzymes have optimal pH ranges, and deviations can change the active site's shape, reducing the enzyme’s ability to bind with substrates.",
            topic: "3.3",
            unit: 3
        ),
        PracticeQuestion(
            question: "How does increasing substrate concentration affect enzyme function?",
            options: ["It decreases reaction rate", "It increases reaction rate indefinitely", "It increases reaction rate up to a point", "It has no effect on reaction rate"].shuffled(),
            correctAnswer: "It increases reaction rate up to a point",
            explanation: "As substrate concentration increases, enzyme activity rises until enzymes become saturated, at which point the reaction rate levels off.",
            topic: "3.3",
            unit: 3
        ),
        PracticeQuestion(
            question: "What is the role of competitive inhibitors?",
            options: ["They permanently disable enzymes", "They bind to the allosteric site", "They compete for the active site", "They increase enzyme efficiency"].shuffled(),
            correctAnswer: "They compete for the active site",
            explanation: "Competitive inhibitors resemble the substrate and compete for binding at the enzyme's active site, reducing enzyme efficiency.",
            topic: "3.3",
            unit: 3
        ),
        PracticeQuestion(
            question: "How do noncompetitive inhibitors affect enzyme activity?",
            options: ["They bind to the active site", "They speed up enzyme function", "They bind to an allosteric site", "They remove the substrate"].shuffled(),
            correctAnswer: "They bind to an allosteric site",
            explanation: "Noncompetitive inhibitors bind to an allosteric site, altering the enzyme’s shape and reducing its ability to catalyze reactions.",
            topic: "3.3",
            unit: 3
        ),
    PracticeQuestion(
        question: "How do metabolic pathways maintain a continuous flow of reactions?",
        options: ["Each reaction produces waste products", "The product of one reaction serves as a reactant for the next", "Enzymes store all products for later use", "Reactants are used up completely in one reaction"].shuffled(),
        correctAnswer: "The product of one reaction serves as a reactant for the next",
        explanation: "In metabolic pathways, products from one enzyme-catalyzed reaction become substrates for the next, allowing a continuous flow of energy and materials.",
        topic: "3.4",
        unit: 3
    ),
    PracticeQuestion(
        question: "What is the main purpose of the light reactions?",
        options: ["Fix carbon into glucose", "Convert light energy into chemical energy", "Produce oxygen for respiration", "Generate glucose directly"].shuffled(),
        correctAnswer: "Convert light energy into chemical energy",
        explanation: "The light reactions use light energy to generate ATP and NADPH, which power the Calvin Cycle.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "Where do the light reactions take place?",
        options: ["Stroma", "Cytoplasm", "Thylakoid membranes", "Mitochondria"].shuffled(),
        correctAnswer: "Thylakoid membranes",
        explanation: "The thylakoid membranes contain the protein complexes necessary for capturing light and producing ATP and NADPH.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "Which pigment is primarily responsible for absorbing light in photosynthesis?",
        options: ["Carotenoids", "Chlorophyll", "Xanthophyll", "Phycobilins"].shuffled(),
        correctAnswer: "Chlorophyll",
        explanation: "Chlorophyll absorbs light energy, exciting electrons to drive the light reactions.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "What wavelengths of light are best absorbed by chlorophyll?",
        options: ["Green and yellow", "Red and blue", "Ultraviolet and infrared", "All wavelengths equally"].shuffled(),
        correctAnswer: "Red and blue",
        explanation: "Chlorophyll absorbs red and blue light efficiently, which is why plants appear green as they reflect green light.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "What happens when chlorophyll absorbs light?",
        options: ["It releases oxygen", "It fixes carbon dioxide", "Its electrons are excited", "It produces glucose directly"].shuffled(),
        correctAnswer: "Its electrons are excited",
        explanation: "Light energy excites electrons in chlorophyll, initiating electron transport.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "What is the function of Photosystem II?",
        options: ["Reduces NADP+ to NADPH", "Splits water molecules and releases oxygen", "Produces glucose", "Fixes carbon"].shuffled(),
        correctAnswer: "Splits water molecules and releases oxygen",
        explanation: "Photosystem II absorbs light energy, exciting electrons, and splits water to replace lost electrons, releasing oxygen.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "What is the final electron acceptor in the light reactions?",
        options: ["Oxygen", "Water", "NADP+", "ATP"].shuffled(),
        correctAnswer: "NADP+",
        explanation: "NADP+ accepts electrons at the end of the electron transport chain to form NADPH, which is used in the Calvin Cycle.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "What is the function of ATP synthase?",
        options: ["Splits water into oxygen", "Reduces NADP+ to NADPH", "Synthesizes ATP from ADP", "Excites electrons"].shuffled(),
        correctAnswer: "Synthesizes ATP from ADP",
        explanation: "ATP synthase uses the proton gradient generated by the electron transport chain to convert ADP and phosphate into ATP.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "What is the primary function of the Calvin Cycle?",
        options: ["Generate ATP", "Produce NADPH", "Fix carbon into sugar", "Release oxygen"].shuffled(),
        correctAnswer: "Fix carbon into sugar",
        explanation: "The Calvin Cycle uses ATP and NADPH from the light reactions to convert CO2 into sugar (G3P).",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "Which enzyme catalyzes the first step of carbon fixation?",
        options: ["ATP synthase", "Rubisco", "Photosystem I", "NADP+ reductase"].shuffled(),
        correctAnswer: "Rubisco",
        explanation: "Rubisco catalyzes the attachment of CO2 to RuBP in the first step of the Calvin Cycle.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "What are the inputs of the Calvin Cycle?",
        options: ["CO2, ATP, NADPH", "Oxygen, water, glucose", "NADH, FADH2, ATP", "Glucose, ADP, NAD+"].shuffled(),
        correctAnswer: "CO2, ATP, NADPH",
        explanation: "The Calvin Cycle requires CO2, ATP, and NADPH to produce G3P, a precursor to glucose.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "How many turns of the Calvin Cycle are required to produce one G3P?",
        options: ["1", "2", "3", "6"].shuffled(),
        correctAnswer: "3",
        explanation: "The Calvin Cycle must turn three times to produce one molecule of G3P, which can be used to form glucose.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "What happens in the regeneration phase of the Calvin Cycle?",
        options: ["CO2 is fixed to RuBP", "ATP and NADPH convert 3-PGA into G3P", "RuBP is regenerated from G3P", "Oxygen is released"].shuffled(),
        correctAnswer: "RuBP is regenerated from G3P",
        explanation: "In the regeneration phase, five molecules of G3P are used to regenerate three molecules of RuBP, allowing the cycle to continue.",
        topic: "3.5",
        unit: 3
    ),

    PracticeQuestion(
        question: "Why does the Calvin Cycle depend on the light reactions?",
        options: ["The Calvin Cycle requires ATP and NADPH from the light reactions", "The Calvin Cycle needs direct light to function", "The Calvin Cycle takes place in the thylakoid", "The Calvin Cycle produces oxygen"].shuffled(),
        correctAnswer: "The Calvin Cycle requires ATP and NADPH from the light reactions",
        explanation: "The ATP and NADPH generated in the light reactions provide the energy and reducing power needed to fix carbon in the Calvin Cycle.",
        topic: "3.5",
        unit: 3
    ),
    PracticeQuestion(
        question: "What type of energy do cells harvest from organic molecules?",
        options: ["Chemical", "Thermal", "Electrical", "Kinetic"].shuffled(),
        correctAnswer: "Chemical",
        explanation: "Cells extract chemical energy from organic molecules like glucose to generate ATP, the primary energy carrier in cells.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What are the reactants of cellular respiration?",
        options: ["Glucose, oxygen", "Water, glucose", "Organic molecules, oxygen", "ATP, carbon dioxide"].shuffled(),
        correctAnswer: "Organic molecules, oxygen",
        explanation: "The reactants of cellular respiration are organic molecules (like glucose) and oxygen, which are used to produce ATP.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What are the products of cellular respiration?",
        options: ["CO2, O2, ATP", "CO2, H2O, energy", "Oxygen, glucose", "ATP, glucose, oxygen"].shuffled(),
        correctAnswer: "CO2, H2O, energy",
        explanation: "The products of cellular respiration are carbon dioxide (CO2), water (H2O), and energy in the form of ATP.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What molecule is the major source of fuel for animals?",
        options: ["Protein", "Fat", "Glucose", "Starch"].shuffled(),
        correctAnswer: "Starch",
        explanation: "Starch is the primary source of energy for animals, as it is broken down into glucose for use in cellular respiration.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "Starch breaks down into which molecule?",
        options: ["Sucrose", "Fructose", "Glucose", "Galactose"].shuffled(),
        correctAnswer: "Glucose",
        explanation: "Starch is broken down into glucose molecules, which are then used for energy in cellular respiration.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "Which path do electrons follow in cellular respiration?",
        options: ["Glucose to NADH to ETC to Oxygen", "Oxygen to glucose to NADH", "NADH to Glucose to ATP", "Oxygen to ATP to glucose"].shuffled(),
        correctAnswer: "Glucose to NADH to ETC to Oxygen",
        explanation: "Electrons from glucose are transferred to NADH, then through the electron transport chain (ETC), and ultimately to oxygen.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What is the oxidizing agent for glucose in cellular respiration?",
        options: ["ATP", "Dehydrogenases", "NADH", "FADH2"].shuffled(),
        correctAnswer: "Dehydrogenases",
        explanation: "Dehydrogenases are enzymes that oxidize glucose by removing electrons and protons.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What does NADH carry electrons to in cellular respiration?",
        options: ["Citric Acid Cycle", "Glycolysis", "Electron Transport Chain", "Pyruvate Oxidation"].shuffled(),
        correctAnswer: "Electron Transport Chain",
        explanation: "NADH carries high-energy electrons to the electron transport chain (ETC) for ATP production.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What does the electron transport chain use to synthesize ATP?",
        options: ["Oxygen", "Proton gradient", "Electrons", "Water"].shuffled(),
        correctAnswer: "Proton gradient",
        explanation: "The proton gradient created by the electron transport chain powers chemiosmosis, which generates ATP.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "Where does glycolysis occur in the cell?",
        options: ["Mitochondria", "Cytosol", "Nucleus", "Chloroplast"].shuffled(),
        correctAnswer: "Cytosol",
        explanation: "Glycolysis occurs in the cytosol, where glucose is split into two pyruvate molecules.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What is the starting molecule of glycolysis?",
        options: ["Pyruvate", "Glucose", "Oxygen", "Acetyl-CoA"].shuffled(),
        correctAnswer: "Glucose",
        explanation: "Glycolysis begins with glucose, which is broken down into two molecules of pyruvate.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What does the citric acid cycle produce?",
        options: ["CO2, ATP, NADH", "Glucose, NADH, FADH2", "Oxygen, ATP, FADH2", "ATP, NADH, FADH2, CO2"].shuffled(),
        correctAnswer: "ATP, NADH, FADH2, CO2",
        explanation: "The citric acid cycle generates ATP, NADH, FADH2, and CO2 as it completes the breakdown of glucose.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "In oxidative phosphorylation, which two processes are involved?",
        options: ["Glycolysis, fermentation", "ETC and chemiosmosis", "Citric acid cycle, fermentation", "NADH reduction, FADH2 oxidation"].shuffled(),
        correctAnswer: "ETC and chemiosmosis",
        explanation: "Oxidative phosphorylation involves the electron transport chain (ETC) and chemiosmosis to produce ATP.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What is the primary source of energy for animals?",
        options: ["Proteins", "Lipids", "Starch", "Vitamins"].shuffled(),
        correctAnswer: "Starch",
        explanation: "Starch is the primary energy source for animals as it is broken down into glucose during digestion.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What is the first stage of cellular respiration?",
        options: ["Glycolysis", "Citric acid cycle", "Electron transport chain", "Oxidative phosphorylation"].shuffled(),
        correctAnswer: "Glycolysis",
        explanation: "Glycolysis is the first step in cellular respiration, where glucose is split into two pyruvate molecules.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "Where does glycolysis occur in the cell?",
        options: ["Mitochondria", "Nucleus", "Cytosol", "Endoplasmic reticulum"].shuffled(),
        correctAnswer: "Cytosol",
        explanation: "Glycolysis occurs in the cytosol, the liquid portion of the cell outside the mitochondria.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "Which enzyme helps synthesize ATP during oxidative phosphorylation?",
        options: ["ATP synthase", "Hexokinase", "Dehydrogenase", "Phosphofructokinase"].shuffled(),
        correctAnswer: "ATP synthase",
        explanation: "ATP synthase is the enzyme that synthesizes ATP from ADP and inorganic phosphate during oxidative phosphorylation.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What are the products of cellular respiration?",
        options: ["Glucose, oxygen", "CO2, H2O, energy", "Oxygen, ATP", "Pyruvate, ATP"].shuffled(),
        correctAnswer: "CO2, H2O, energy",
        explanation: "The products of cellular respiration are carbon dioxide (CO2), water (H2O), and energy in the form of ATP.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What is the final electron acceptor in the electron transport chain?",
        options: ["Oxygen", "NAD+", "FAD", "Glucose"].shuffled(),
        correctAnswer: "Oxygen",
        explanation: "Oxygen is the final electron acceptor in the electron transport chain, where it combines with electrons and protons to form water.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "Which molecule carries electrons to the electron transport chain?",
        options: ["NADH", "ATP", "FADH2", "Glucose"].shuffled(),
        correctAnswer: "NADH",
        explanation: "NADH carries high-energy electrons to the electron transport chain for ATP production.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What is the second stage of cellular respiration?",
        options: ["Glycolysis", "Citric acid cycle", "Oxidative phosphorylation", "Pyruvate oxidation"].shuffled(),
        correctAnswer: "Pyruvate oxidation",
        explanation: "Pyruvate oxidation and the citric acid cycle are the second stage of cellular respiration, where acetyl-CoA is processed to generate energy.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What is the purpose of the electron transport chain?",
        options: ["ATP synthesis", "Glycolysis", "Protein synthesis", "Pyruvate oxidation"].shuffled(),
        correctAnswer: "ATP synthesis",
        explanation: "The electron transport chain generates ATP through a series of redox reactions involving electrons from NADH and FADH2.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "Which of the following is a product of fermentation?",
        options: ["Lactate", "Glucose", "Acetyl-CoA", "NADH"].shuffled(),
        correctAnswer: "Lactate",
        explanation: "Lactate is produced during lactic acid fermentation when NADH reduces pyruvate in the absence of oxygen.",
        topic: "3.6",
        unit: 3
    ),
    PracticeQuestion(
        question: "What is the purpose of chemical signals?",
        options: ["To coordinate cellular functions", "To create new cells", "To store genetic information", "To divide cells"].shuffled(),
        correctAnswer: "To coordinate cellular functions",
        explanation: "Chemical signals are essential for communication between cells, enabling them to coordinate activities.",
        topic: "4.1",
        unit: 4
    ),
    PracticeQuestion(
        question: "What are local regulators?",
        options: ["Molecules acting over short distances", "Hormones traveling long distances", "Neurotransmitters in synapses", "Proteins involved in protein synthesis"].shuffled(),
        correctAnswer: "Molecules acting over short distances",
        explanation: "Local regulators affect nearby cells and play important roles in processes like healing.",
        topic: "4.1",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is a target cell?",
        options: ["Cell receiving and responding to a signal", "Cell producing chemical signals", "Cell that does not respond to signals", "Cell that is non-responsive to stimuli"].shuffled(),
        correctAnswer: "Cell receiving and responding to a signal",
        explanation: "Target cells have specific receptors that allow them to receive and respond to chemical signals.",
        topic: "4.1",
        unit: 4
    ),
    PracticeQuestion(
        question: "Which of the following describes short-distance signaling?",
        options: ["Hormones", "Neurotransmitters", "Gap junctions", "Synaptic signaling"].shuffled(),
        correctAnswer: "Neurotransmitters",
        explanation: "Short-distance signaling often involves neurotransmitters, which transmit signals between nerve cells.",
        topic: "4.1",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is a form of direct communication between cells?",
        options: ["Synaptic signaling", "Chemical signals", "Cell junctions", "Hormones"].shuffled(),
        correctAnswer: "Cell junctions",
        explanation: "Cell junctions enable direct communication and material exchange between adjacent cells.",
        topic: "4.1",
        unit: 4
    ),
    PracticeQuestion(
        question: "What occurs in synaptic signaling?",
        options: ["Chemical signals released in the bloodstream", "Signals pass through cell junctions", "Neurons release neurotransmitters", "Hormones travel long distances"].shuffled(),
        correctAnswer: "Neurons release neurotransmitters",
        explanation: "Synaptic signaling involves the release of neurotransmitters from neurons to transmit signals across synapses.",
        topic: "4.1",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is an example of long-distance signaling?",
        options: ["Synaptic signaling", "Paracrine signaling", "Hormone signaling", "Cell junctions"].shuffled(),
        correctAnswer: "Hormone signaling",
        explanation: "Hormones act as chemical messengers in long-distance signaling, traveling through the circulatory system.",
        topic: "4.1",
        unit: 4
    ),
    PracticeQuestion(
        question: "How do local regulators affect nearby cells?",
        options: ["By sending electrical impulses", "By signaling through gap junctions", "By releasing chemical messages", "By dividing cells"].shuffled(),
        correctAnswer: "By releasing chemical messages",
        explanation: "Local regulators release chemical messages to affect cells in the immediate vicinity.",
        topic: "4.1",
        unit: 4
    ),
    PracticeQuestion(
        question: "Which process occurs through cell junctions?",
        options: ["Hormone signaling", "Direct contact communication", "Synaptic signaling", "Endocrine signaling"].shuffled(),
        correctAnswer: "Direct contact communication",
        explanation: "Direct contact communication involves the exchange of materials through cell junctions.",
        topic: "4.1",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the role of neurotransmitters?",
        options: ["To transport hormones", "To transmit signals across synapses", "To control cell division", "To stimulate cell growth"].shuffled(),
        correctAnswer: "To transmit signals across synapses",
        explanation: "Neurotransmitters are chemical signals that transmit information across synapses between neurons.",
        topic: "4.1",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is signal transduction?",
        options: ["Reception only", "Transduction only", "Reception, transduction, and response", "Response only"].shuffled(),
        correctAnswer: "Reception, transduction, and response",
        explanation: "Signal transduction involves three stages: reception, transduction, and response.",
        topic: "4.2",
        unit: 4
    ),
    PracticeQuestion(
        question: "What does a phosphorylation cascade do?",
        options: ["Inhibits cell signals", "Amplifies the signal", "Reacts to the signal", "Binds the receptor"].shuffled(),
        correctAnswer: "Amplifies the signal",
        explanation: "A phosphorylation cascade amplifies the signal by activating proteins in the pathway.",
        topic: "4.2",
        unit: 4
    ),
    PracticeQuestion(
        question: "What class of receptors transmits signals via G proteins?",
        options: ["Ion channel receptors", "Tyrosine kinase receptors", "G-protein coupled receptors", "Intracellular receptors"].shuffled(),
        correctAnswer: "G-protein coupled receptors",
        explanation: "G-protein coupled receptors (GPCRs) transmit signals by activating G proteins.",
        topic: "4.2",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the function of a ligand?",
        options: ["To transport signals across the cell", "To bind to a receptor and initiate a response", "To synthesize new proteins", "To amplify the signal"].shuffled(),
        correctAnswer: "To bind to a receptor and initiate a response",
        explanation: "A ligand is a signaling molecule that binds to a receptor to initiate a cellular response.",
        topic: "4.2",
        unit: 4
    ),
    PracticeQuestion(
        question: "What are second messengers?",
        options: ["Molecules that bind to receptors", "Proteins that are phosphorylated", "Small molecules that amplify signals", "Enzymes that activate transcription"].shuffled(),
        correctAnswer: "Small molecules that amplify signals",
        explanation: "Second messengers, like cAMP, amplify the signal inside the cell.",
        topic: "4.2",
        unit: 4
    ),
    PracticeQuestion(
        question: "Which of the following is a second messenger?",
        options: ["cAMP", "Ligand", "Receptor", "G-protein"].shuffled(),
        correctAnswer: "cAMP",
        explanation: "cAMP is a common second messenger that amplifies signals in signal transduction.",
        topic: "4.2",
        unit: 4
    ),
    PracticeQuestion(
        question: "What happens during reception in signal transduction?",
        options: ["The cell responds to the signal", "The cell detects a signaling molecule", "The signal is amplified", "The receptor is activated"].shuffled(),
        correctAnswer: "The cell detects a signaling molecule",
        explanation: "In reception, the cell detects and binds a signaling molecule via receptors.",
        topic: "4.2",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is transduction in signal transduction?",
        options: ["The cell responds to the signal", "The signal is relayed and amplified inside the cell", "The receptor binds the ligand", "The signal is terminated"].shuffled(),
        correctAnswer: "The signal is relayed and amplified inside the cell",
        explanation: "Transduction involves the relay and amplification of signals inside the cell.",
        topic: "4.2",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the final stage of signal transduction?",
        options: ["Reception", "Transduction", "Response", "Signal amplification"].shuffled(),
        correctAnswer: "Response",
        explanation: "In the response stage, the cell reacts to the signal with a specific action.",
        topic: "4.2",
        unit: 4
    ),
    PracticeQuestion(
        question: "What does a receptor do?",
        options: ["Detects and responds to signals", "Initiates phosphorylation cascades", "Transmits signals inside the cell", "Binds to ligands to detect signals"].shuffled(),
        correctAnswer: "Binds to ligands to detect signals",
        explanation: "A receptor is a protein that binds to ligands, initiating signal transduction.",
        topic: "4.2",
        unit: 4
    ),
    PracticeQuestion(
        question: "How do cells adapt to their environment?",
        options: ["By ignoring environmental signals", "By changing gene expression", "By undergoing cell division", "By ignoring homeostasis"].shuffled(),
        correctAnswer: "By changing gene expression",
        explanation: "Cells adapt by responding to environmental signals, often by altering gene expression.",
        topic: "4.3",
        unit: 4
    ),
    PracticeQuestion(
        question: "What can signal transduction alter?",
        options: ["Gene expression", "The cell membrane", "Protein synthesis", "Cell structure"].shuffled(),
        correctAnswer: "Gene expression",
        explanation: "Signal transduction pathways can turn genes on or off, affecting gene activity.",
        topic: "4.3",
        unit: 4
    ),
    PracticeQuestion(
        question: "What happens when cell function changes in response to signals?",
        options: ["Cell division decreases", "Metabolism and growth are affected", "Homeostasis is ignored", "Gene expression is unchanged"].shuffled(),
        correctAnswer: "Metabolism and growth are affected",
        explanation: "Signals can adjust cellular functions, impacting processes like metabolism and growth.",
        topic: "4.3",
        unit: 4
    ),
    PracticeQuestion(
        question: "What role do external signals play in cellular behavior?",
        options: ["They prevent gene expression", "They regulate cell death", "They influence gene expression and function", "They decrease metabolic activity"].shuffled(),
        correctAnswer: "They influence gene expression and function",
        explanation: "External signals can trigger changes in gene expression and affect various cell functions.",
        topic: "4.3",
        unit: 4
    ),
    PracticeQuestion(
        question: "How do signals affect gene activity?",
        options: ["By promoting apoptosis", "By altering protein structure", "By turning genes on or off", "By suppressing cell communication"].shuffled(),
        correctAnswer: "By turning genes on or off",
        explanation: "Signals can activate or deactivate genes, impacting cellular activities.",
        topic: "4.3",
        unit: 4
    ),
    PracticeQuestion(
        question: "What happens when a signal pathway is altered?",
        options: ["Cell behavior stays the same", "Cell behavior is modified", "Pathway is stopped", "Gene expression is unchanged"].shuffled(),
        correctAnswer: "Cell behavior is modified",
        explanation: "Changes in signaling pathways can significantly modify cell behavior and function.",
        topic: "4.4",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the role of activators in signaling pathways?",
        options: ["They decrease cellular response", "They block signal activity", "They enhance signal pathway activity", "They slow down signal response"].shuffled(),
        correctAnswer: "They enhance signal pathway activity",
        explanation: "Activators increase the effectiveness of signaling pathways, amplifying the response.",
        topic: "4.4",
        unit: 4
    ),
    PracticeQuestion(
        question: "What do inhibitors do in signaling pathways?",
        options: ["Enhance signal activity", "Block signal pathway activity", "Amplify cell response", "Increase gene expression"].shuffled(),
        correctAnswer: "Block signal pathway activity",
        explanation: "Inhibitors reduce or stop the activity of signaling pathways, affecting cellular responses.",
        topic: "4.4",
        unit: 4
    ),
    PracticeQuestion(
        question: "How do small changes in pathways affect cells?",
        options: ["They have no effect", "They enhance cellular communication", "They significantly affect cell behavior", "They stabilize gene expression"].shuffled(),
        correctAnswer: "They significantly affect cell behavior",
        explanation: "Even minor changes in signaling pathways can dramatically alter how cells respond.",
        topic: "4.4",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the function of inhibitors in signal transduction?",
        options: ["To enhance the cell's response", "To block signal reception", "To block signal pathway activity", "To increase signal amplification"].shuffled(),
        correctAnswer: "To block signal pathway activity",
        explanation: "Inhibitors prevent signals from activating cellular responses by blocking pathway components.",
        topic: "4.4",
        unit: 4
    ),
    PracticeQuestion(
        question: "What does negative feedback do?",
        options: ["Amplifies changes", "Counteracts changes to maintain balance", "Stimulates rapid responses", "Maintains internal temperature only"].shuffled(),
        correctAnswer: "Counteracts changes to maintain balance",
        explanation: "Negative feedback helps the body maintain homeostasis by counteracting any changes that move the system away from balance.",
        topic: "4.5",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is an example of positive feedback?",
        options: ["Body temperature regulation", "Childbirth contractions", "Blood glucose regulation", "Sweating to cool down"].shuffled(),
        correctAnswer: "Childbirth contractions",
        explanation: "During childbirth, contractions intensify, reinforcing the process until delivery occurs.",
        topic: "4.5",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the role of homeostasis?",
        options: ["To stabilize the internal environment", "To regulate cell growth", "To amplify stimuli", "To cause rapid changes in the body"].shuffled(),
        correctAnswer: "To stabilize the internal environment",
        explanation: "Homeostasis helps maintain stable internal conditions regardless of external changes.",
        topic: "4.5",
        unit: 4
    ),
    PracticeQuestion(
        question: "Which of the following is a negative feedback example?",
        options: ["Childbirth", "Body temperature regulation", "Blood clotting", "Labor contractions"].shuffled(),
        correctAnswer: "Body temperature regulation",
        explanation: "The body regulates its temperature through negative feedback (shivering or sweating).",
        topic: "4.5",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is an example of positive feedback?",
        options: ["Childbirth", "Sweating", "Shivering", "Body temperature regulation"].shuffled(),
        correctAnswer: "Childbirth",
        explanation: "In childbirth, contractions intensify until delivery, reinforcing the stimulus.",
        topic: "4.5",
        unit: 4
    ),
    PracticeQuestion(
        question: "What happens when homeostasis is disrupted?",
        options: ["Cell function improves", "Body adapts immediately", "Disease may occur", "Body increases energy consumption"].shuffled(),
        correctAnswer: "Disease may occur",
        explanation: "When homeostasis is disrupted, it can lead to diseases, as the body is no longer functioning optimally.",
        topic: "4.5",
        unit: 4
    ),
    PracticeQuestion(
        question: "What causes diabetes?",
        options: ["Insulin resistance or deficiency", "Increased body temperature", "Overactive immune response", "Lack of positive feedback"].shuffled(),
        correctAnswer: "Insulin resistance or deficiency",
        explanation: "Diabetes occurs when the body cannot regulate blood glucose properly due to insulin resistance or deficiency.",
        topic: "4.5",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is cancer characterized by?",
        options: ["Unregulated cell growth", "Controlled cell division", "Improper temperature regulation", "Reversal of homeostasis"].shuffled(),
        correctAnswer: "Unregulated cell growth",
        explanation: "Cancer occurs when the normal mechanisms of cell growth are disrupted, leading to uncontrolled growth.",
        topic: "4.5",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the function of histones?",
        options: ["To bind DNA to the nuclear envelope", "To help form nucleosomes by wrapping DNA", "To replicate DNA", "To package chromosomes in mitosis"].shuffled(),
        correctAnswer: "To help form nucleosomes by wrapping DNA",
        explanation: "Histones are proteins that bind to DNA, helping to form nucleosomes, the basic structural units of chromatin.",
        topic: "4.6",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is a nucleosome?",
        options: ["A protein involved in DNA replication", "A structure made of DNA wrapped around histones", "A type of chromosome", "A phase in the cell cycle"].shuffled(),
        correctAnswer: "A structure made of DNA wrapped around histones",
        explanation: "A nucleosome consists of DNA wrapped around histones and is the basic unit of chromatin.",
        topic: "4.6",
        unit: 4
    ),
    PracticeQuestion(
        question: "What happens to chromatin during DNA replication?",
        options: ["It condenses into chromosomes", "It stays in a relaxed state", "It is completely destroyed", "It turns into nucleosomes"].shuffled(),
        correctAnswer: "It condenses into chromosomes",
        explanation: "After DNA replication, chromatin condenses to form visible chromosomes.",
        topic: "4.6",
        unit: 4
    ),
    PracticeQuestion(
        question: "What are sister chromatids?",
        options: ["Identical copies of a chromosome joined at the centromere", "Chromosomes with different genetic content", "Parts of the same chromosome after crossing over", "Segments of non-condensed chromatin"].shuffled(),
        correctAnswer: "Identical copies of a chromosome joined at the centromere",
        explanation: "Sister chromatids are two identical copies of a chromosome, joined together at the centromere.",
        topic: "4.6",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the function of the centromere?",
        options: ["To replicate DNA", "To connect sister chromatids", "To divide chromosomes during mitosis", "To synthesize RNA"].shuffled(),
        correctAnswer: "To connect sister chromatids",
        explanation: "The centromere is the region where the two sister chromatids are attached to each other.",
        topic: "4.6",
        unit: 4
    ),
    PracticeQuestion(
        question: "What are homologous chromosomes?",
        options: ["Chromosomes with identical genetic sequences", "Chromosomes that pair during meiosis", "Chromosomes in the same parent cell", "Chromosomes that come from the same gamete"].shuffled(),
        correctAnswer: "Chromosomes that pair during meiosis",
        explanation: "Homologous chromosomes have the same genes and pair up during meiosis to exchange genetic material.",
        topic: "4.6",
        unit: 4
    ),
    PracticeQuestion(
        question: "How many chromosomes do human gametes have?",
        options: ["46", "23", "92", "92 pairs"].shuffled(),
        correctAnswer: "23",
        explanation: "Human gametes are haploid and contain 23 chromosomes, half of the number found in somatic cells.",
        topic: "4.6",
        unit: 4
    ),
    PracticeQuestion(
        question: "What happens during the S phase of interphase?",
        options: ["The cell grows and carries out normal functions", "DNA replication occurs", "The cell prepares for mitosis", "The cell divides into two"].shuffled(),
        correctAnswer: "DNA replication occurs",
        explanation: "During the S phase, DNA replication occurs, and chromosomes are duplicated.",
        topic: "4.6",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the primary function of the G2 phase in the cell cycle?",
        options: ["Cell division", "DNA replication", "Final growth and preparation for mitosis", "Cell growth and normal activities"].shuffled(),
        correctAnswer: "Final growth and preparation for mitosis",
        explanation: "During the G2 phase, the cell continues to grow and prepares for mitosis after DNA replication is complete.",
        topic: "4.6",
        unit: 4
    ),
    PracticeQuestion(
        question: "Which of the following is true about the G1 phase?",
        options: ["DNA replication occurs", "Cell growth and normal functions take place", "Chromosomes condense", "Mitosis begins"].shuffled(),
        correctAnswer: "Cell growth and normal functions take place",
        explanation: "The G1 phase is the first stage of interphase, where the cell grows and performs its normal functions.",
        topic: "4.6",
        unit: 4
    ),
    PracticeQuestion(
        question: "What happens during mitosis?",
        options: ["Cytoplasm divides", "The nucleus divides into two identical daughter nuclei", "The DNA is replicated", "Cellular growth occurs"].shuffled(),
        correctAnswer: "The nucleus divides into two identical daughter nuclei",
        explanation: "Mitosis is the process of nuclear division, resulting in two genetically identical daughter nuclei.",
        topic: "4.7",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is cytokinesis?",
        options: ["Division of the cytoplasm", "Division of the nucleus", "The process of DNA replication", "The formation of sister chromatids"].shuffled(),
        correctAnswer: "Division of the cytoplasm",
        explanation: "Cytokinesis is the final step in cell division where the cytoplasm divides, forming two daughter cells.",
        topic: "4.7",
        unit: 4
    ),
    PracticeQuestion(
        question: "What occurs during prophase of mitosis?",
        options: ["Chromosomes align at the center of the cell", "Chromatin condenses into chromosomes", "The nuclear envelope reforms", "The spindle fibers form"].shuffled(),
        correctAnswer: "Chromatin condenses into chromosomes",
        explanation: "In prophase, chromatin condenses into visible chromosomes and the nuclear envelope begins to break down.",
        topic: "4.7",
        unit: 4
    ),
    PracticeQuestion(
        question: "What happens in prometaphase?",
        options: ["Chromosomes align at the metaphase plate", "The nuclear envelope breaks down", "Sister chromatids are pulled apart", "Daughter nuclei begin to form"].shuffled(),
        correctAnswer: "The nuclear envelope breaks down",
        explanation: "During prometaphase, the nuclear envelope breaks down, allowing spindle fibers to attach to the chromosomes.",
        topic: "4.7",
        unit: 4
    ),
    PracticeQuestion(
        question: "What occurs during metaphase?",
        options: ["Chromosomes condense", "Chromosomes align at the center of the cell", "The nuclear envelope reforms", "Spindle fibers retract"].shuffled(),
        correctAnswer: "Chromosomes align at the center of the cell",
        explanation: "In metaphase, chromosomes line up along the metaphase plate in preparation for separation.",
        topic: "4.7",
        unit: 4
    ),
    PracticeQuestion(
        question: "What happens during anaphase?",
        options: ["Chromosomes condense", "The nuclear envelope breaks down", "Sister chromatids are pulled apart", "The cytoplasm divides"].shuffled(),
        correctAnswer: "Sister chromatids are pulled apart",
        explanation: "During anaphase, sister chromatids separate and move toward opposite poles of the cell.",
        topic: "4.7",
        unit: 4
    ),
    PracticeQuestion(
        question: "What occurs during telophase?",
        options: ["Chromosomes condense", "The nuclear envelope reforms", "The cytoplasm divides", "Sister chromatids are pulled apart"].shuffled(),
        correctAnswer: "The nuclear envelope reforms",
        explanation: "In telophase, the nuclear envelope reforms around the separated chromatids, now called daughter chromosomes.",
        topic: "4.7",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the purpose of the M checkpoint in the cell cycle?",
        options: ["It ensures DNA replication occurs", "It checks for DNA damage", "It checks microtubule attachment to chromosomes", "It initiates cytokinesis"].shuffled(),
        correctAnswer: "It checks microtubule attachment to chromosomes",
        explanation: "The M checkpoint ensures that all spindle fibers are correctly attached to chromosomes before anaphase begins.",
        topic: "4.7",
        unit: 4
    ),
    PracticeQuestion(
        question: "What role do cyclins play in the cell cycle?",
        options: ["They repair DNA", "They bind to CDKs to regulate cell cycle progression", "They divide the cytoplasm", "They condense chromosomes"].shuffled(),
        correctAnswer: "They bind to CDKs to regulate cell cycle progression",
        explanation: "Cyclins activate cyclin-dependent kinases (CDKs), which regulate key events in the cell cycle.",
        topic: "4.7",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is apoptosis?",
        options: ["Cell division", "Programmed cell death", "The process of DNA replication", "Growth factor signaling"].shuffled(),
        correctAnswer: "Programmed cell death",
        explanation: "Apoptosis is a controlled process of cell death that occurs when cells are damaged or no longer needed.",
        topic: "4.7",
        unit: 4
    ),
    PracticeQuestion(
        question: "What is the main result of meiosis?",
        options: ["Two diploid cells", "Two haploid cells", "Four haploid cells", "Four diploid cells"].shuffled(),
        correctAnswer: "Four haploid cells",
        explanation: "Meiosis produces four genetically distinct haploid cells.",
        topic: "5.1",
        unit: 5
    ),
    PracticeQuestion(
        question: "Which phase of meiosis involves crossing over?",
        options: ["Prophase I", "Metaphase I", "Anaphase II", "Telophase II"].shuffled(),
        correctAnswer: "Prophase I",
        explanation: "In prophase I, homologous chromosomes pair and exchange genetic material through crossing over.",
        topic: "5.1",
        unit: 5
    ),
    PracticeQuestion(
        question: "What happens during anaphase I of meiosis?",
        options: ["Homologous chromosomes separate", "Sister chromatids separate", "Chromosomes condense", "Cell divides into two haploid cells"].shuffled(),
        correctAnswer: "Homologous chromosomes separate",
        explanation: "In anaphase I, homologous chromosomes are pulled apart to opposite poles.",
        topic: "5.1",
        unit: 5
    ),
    PracticeQuestion(
        question: "How does metaphase I differ from metaphase II in meiosis?",
        options: ["Homologous chromosomes align in metaphase I, sister chromatids align in metaphase II", "Chromosomes condense in metaphase I, sister chromatids align in metaphase II", "Sister chromatids align in metaphase I, homologous chromosomes align in metaphase II", "There is no difference"].shuffled(),
        correctAnswer: "Homologous chromosomes align in metaphase I, sister chromatids align in metaphase II",
        explanation: "In metaphase I, homologous chromosomes line up on the metaphase plate, while in metaphase II, individual chromosomes align.",
        topic: "5.1",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is the end result of telophase II in meiosis?",
        options: ["Two diploid cells", "Two haploid cells", "Four haploid cells", "One diploid cell"].shuffled(),
        correctAnswer: "Four haploid cells",
        explanation: "Telophase II results in the formation of four non-identical haploid cells.",
        topic: "5.1",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is the key difference between mitosis and meiosis?",
        options: ["Mitosis produces haploid cells, meiosis produces diploid cells", "Mitosis has two divisions, meiosis has one", "Mitosis produces identical cells, meiosis produces genetically different cells", "Mitosis occurs only in gametes"].shuffled(),
        correctAnswer: "Mitosis produces identical cells, meiosis produces genetically different cells",
        explanation: "Mitosis results in two identical diploid cells, while meiosis produces four genetically distinct haploid cells.",
        topic: "5.1",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is the result of fertilization?",
        options: ["Zygote", "Haploid cell", "Gamete", "Diploid egg"].shuffled(),
        correctAnswer: "Zygote",
        explanation: "Fertilization results in the formation of a zygote, a fertilized egg cell.",
        topic: "5.2",
        unit: 5
    ),
    PracticeQuestion(
        question: "Which process restores the diploid chromosome number?",
        options: ["Meiosis", "Fertilization", "Crossing over", "Independent assortment"].shuffled(),
        correctAnswer: "Fertilization",
        explanation: "Fertilization restores the diploid chromosome number by combining two haploid gametes.",
        topic: "5.2",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is the main outcome of crossing over?",
        options: ["Genetic diversity", "Homologous chromosome separation", "Zygote formation", "Diploid chromosome restoration"].shuffled(),
        correctAnswer: "Genetic diversity",
        explanation: "Crossing over increases genetic diversity by exchanging genetic material between homologous chromosomes.",
        topic: "5.2",
        unit: 5
    ),
    PracticeQuestion(
        question: "What does the law of segregation state?",
        options: ["Alleles segregate independently of each other", "Each allele segregates into separate gametes", "Gametes combine to form a zygote", "Chromosomes do not segregate during meiosis"].shuffled(),
        correctAnswer: "Each allele segregates into separate gametes",
        explanation: "The law of segregation states that alleles for each gene segregate during meiosis and end up in different gametes.",
        topic: "5.2",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is independent assortment?",
        options: ["Genes on the same chromosome assort together", "Alleles for different traits line up separately and randomly in Metaphase I", "Gametes combine to form a zygote", "Homologous chromosomes exchange genetic material"].shuffled(),
        correctAnswer: "Alleles for different traits line up separately and randomly in Metaphase I",
        explanation: "Independent assortment refers to the way alleles for different genes segregate independently during meiosis.",
        topic: "5.2",
        unit: 5
    ),
    PracticeQuestion(
        question: "How many unique sex cells are produced by meiosis?",
        options: ["Two", "Four", "Eight", "Sixteen"].shuffled(),
        correctAnswer: "Four",
        explanation: "Meiosis produces four genetically unique haploid sex cells.",
        topic: "5.2",
        unit: 5
    ),
    PracticeQuestion(
        question: "A homozygous dominant pea plant (YY) is crossed with a homozygous recessive pea plant (yy). What will the offspring's genotypes be?",
        options: ["YY, yy", "Yy, Yy", "YY, Yy", "Yy, yy"].shuffled(),
        correctAnswer: "Yy, Yy",
        explanation: "The cross between a homozygous dominant (YY) and a homozygous recessive (yy) plant results in all heterozygous offspring (Yy).",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "A heterozygous pea plant (Yy) is crossed with another heterozygous pea plant (Yy). What is the probability of getting a homozygous recessive offspring (yy)?",
        options: ["0%", "25%", "50%", "75%"].shuffled(),
        correctAnswer: "25%",
        explanation: "The Punnett square shows a 25% chance of obtaining a homozygous recessive offspring (yy).",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "In a cross between a heterozygous brown-eyed person (Bb) and a homozygous blue-eyed person (bb), what is the probability of their offspring having blue eyes?",
        options: ["50%", "25%", "75%", "100%"].shuffled(),
        correctAnswer: "50%",
        explanation: "The Punnett square for the Bb x bb cross results in a 50% chance of blue-eyed (bb) offspring.",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "A homozygous red-flowered plant (RR) is crossed with a homozygous white-flowered plant (WW). What will be the flower color of all offspring?",
        options: ["Red", "White", "Pink", "Purple"].shuffled(),
        correctAnswer: "Pink",
        explanation: "The cross between RR and WW will produce all RW offspring, resulting in pink flowers due to incomplete dominance.",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is the phenotypic ratio of a dihybrid cross between two heterozygous pea plants (YyRr x YyRr)?",
        options: ["9:3:3:1", "3:1", "1:2:1", "4:4:1"].shuffled(),
        correctAnswer: "9:3:3:1",
        explanation: "A dihybrid cross between two heterozygous plants (YyRr x YyRr) results in a 9:3:3:1 phenotypic ratio.",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is Mendelian genetics?",
        options: ["Study of inheritance patterns", "Study of DNA structure", "Study of environmental effects on traits", "Study of meiosis"].shuffled(),
        correctAnswer: "Study of inheritance patterns",
        explanation: "Mendelian genetics explains how traits are inherited from one generation to the next.",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is an allele?",
        options: ["A unit of heredity", "Different forms of a gene", "An organism's observable traits", "The genetic makeup of an organism"].shuffled(),
        correctAnswer: "Different forms of a gene",
        explanation: "Alleles are alternate forms of a gene that determine specific traits.",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "What does a dominant allele do?",
        options: ["Expresses its trait only when homozygous", "Expresses its trait both when its homozygous and heterozygous", "Is always recessive", "Is only expressed in the phenotype"].shuffled(),
        correctAnswer: "Expresses its trait both when its homozygous and heterozygous",
        explanation: "Dominant alleles express their trait even when paired with a recessive allele.",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is a homozygous genotype?",
        options: ["Two identical alleles for a gene", "One dominant and one recessive allele", "Two different alleles for a gene", "The observable traits of an organism"].shuffled(),
        correctAnswer: "Two identical alleles for a gene",
        explanation: "Homozygous individuals carry two copies of the same allele for a gene.",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is the difference between genotype and phenotype?",
        options: ["Genotype is the observable traits; phenotype is the genetic makeup", "Genotype is the genetic makeup; phenotype is the observable traits", "Genotype is determined by the environment", "Genotype and phenotype are the same"].shuffled(),
        correctAnswer: "Genotype is the genetic makeup; phenotype is the observable traits",
        explanation: "Genotype refers to the genetic information, while phenotype refers to the traits expressed by that information.",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "What does a Punnett square predict?",
        options: ["The environmental effects on traits", "The offspring's observable traits", "The offspring's genotypes", "The number of chromosomes in offspring"].shuffled(),
        correctAnswer: "The offspring's genotypes",
        explanation: "A Punnett square is used to predict the genetic makeup (genotypes) of offspring from a genetic cross.",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is the law of segregation?",
        options: ["Each allele for a trait segregates into separate gametes", "Genes for different traits assort independently", "Genes are inherited together", "The genotype and phenotype are the same"].shuffled(),
        correctAnswer: "Each allele for a trait segregates into separate gametes",
        explanation: "The law of segregation states that during gamete formation, the alleles for each gene separate.",
        topic: "5.3",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is the law of independent assortment?",
        options: ["Alleles for the same trait segregate together", "Genes for different traits assort independently", "The genetic material from the mother and father combine", "Genes are inherited in pairs"].shuffled(),
        correctAnswer: "Genes for different traits assort independently",
        explanation: "The law of independent assortment states that genes for different traits are inherited independently of each other.",
        topic: "5.3",
        unit: 5
    ), 
    PracticeQuestion(
        question: "What is non-Mendelian genetics?",
        options: ["Inheritance patterns following Mendel's laws", "Inheritance patterns that don't follow Mendel's laws", "The inheritance of dominant traits", "The inheritance of recessive traits"].shuffled(),
        correctAnswer: "Inheritance patterns that don't follow Mendel's laws",
        explanation: "Non-Mendelian genetics includes inheritance patterns that don't follow Mendel's basic laws of inheritance.",
        topic: "5.4",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is incomplete dominance?",
        options: ["Both alleles are equally expressed", "The phenotype is a blend of the two alleles", "One allele completely dominates the other", "Multiple alleles contribute to the trait"].shuffled(),
        correctAnswer: "The phenotype is a blend of the two alleles",
        explanation: "Incomplete dominance results in a phenotype that is a mix of the traits of both alleles.",
        topic: "5.4",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is codominance?",
        options: ["Both alleles express their traits equally", "One allele masks the other", "The phenotype is a blend of both alleles", "Only one allele is expressed"].shuffled(),
        correctAnswer: "Both alleles express their traits equally",
        explanation: "In codominance, both alleles contribute equally to the phenotype, each expressing their traits distinctly.",
        topic: "5.4",
        unit: 5
    ),
    PracticeQuestion(
        question: "What does multiple alleles refer to?",
        options: ["A gene with more than two alleles", "The presence of recessive traits", "A gene with two possible alleles", "A dominant gene"].shuffled(),
        correctAnswer: "A gene with more than two alleles",
        explanation: "Multiple alleles occur when a gene has more than two possible forms, such as blood type.",
        topic: "5.4",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is polygenic inheritance?",
        options: ["One gene influences multiple traits", "One trait is controlled by many genes", "A gene has multiple forms", "Genes assort independently"].shuffled(),
        correctAnswer: "One trait is controlled by many genes",
        explanation: "Polygenic inheritance means that multiple genes contribute to a single trait, resulting in a range of phenotypes.",
        topic: "5.4",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is epistasis?",
        options: ["One gene affects the expression of another gene", "Both alleles are equally expressed", "The phenotype is a blend of alleles", "A gene has multiple forms"].shuffled(),
        correctAnswer: "One gene affects the expression of another gene",
        explanation: "Epistasis occurs when one gene alters or masks the expression of another gene.",
        topic: "5.4",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is pleiotropy?",
        options: ["One gene affects multiple traits", "One trait is controlled by multiple genes", "One gene expresses both dominant and recessive traits", "A gene has multiple alleles"].shuffled(),
        correctAnswer: "One gene affects multiple traits",
        explanation: "Pleiotropy occurs when one gene influences several different traits.",
        topic: "5.4",
        unit: 5
    ),
    PracticeQuestion(
        question: "How do environmental influences affect genetics?",
        options: ["They have no effect on gene expression", "They can alter gene expression", "They modify the DNA sequence", "They only affect dominant traits"].shuffled(),
        correctAnswer: "They can alter gene expression",
        explanation: "Environmental factors such as temperature or diet can influence how genes are expressed.",
        topic: "5.4",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is X-linked inheritance?",
        options: ["Inheritance of traits through the X chromosome", "Inheritance of traits through the Y chromosome", "Inheritance of traits through autosomes", "Inheritance of traits through mitochondria"].shuffled(),
        correctAnswer: "Inheritance of traits through the X chromosome",
        explanation: "X-linked inheritance involves genes located on the X chromosome, often affecting males and females differently.",
        topic: "5.4",
        unit: 5
    ),
    PracticeQuestion(
        question: "How do environmental factors influence phenotype?",
        options: ["Through genetic inheritance", "Through random mutation", "Through external conditions like temperature or diet", "Through epigenetic changes"].shuffled(),
        correctAnswer: "Through external conditions like temperature or diet",
        explanation: "Environmental factors, such as temperature or diet, can impact an organism's observable traits.",
        topic: "5.5",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is temperature-dependent sex determination?",
        options: ["Offspring sex is determined by random genetic mutations", "Sex of offspring is determined by external temperature", "Sex of offspring is determined by the parents' genotype", "Offspring sex is determined by environmental pollution"].shuffled(),
        correctAnswer: "Sex of offspring is determined by external temperature",
        explanation: "In some species, like reptiles, temperature during incubation influences the sex of offspring.",
        topic: "5.5",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is chromosomal inheritance?",
        options: ["Genes are inherited through chromosomes", "Genes are inherited through mitochondria", "Inheritance patterns follow gene sequencing", "Genes are inherited through RNA"].shuffled(),
        correctAnswer: "Genes are inherited through chromosomes",
        explanation: "Chromosomal inheritance explains how genes are passed down via chromosomes during cell division.",
        topic: "5.6",
        unit: 5
    ),
    PracticeQuestion(
        question: "What does the chromosome theory of inheritance state?",
        options: ["Genes are located on chromosomes", "Inheritance is independent of chromosomes", "Chromosomes are inherited by mitochondria", "Genes are not related to chromosomes"].shuffled(),
        correctAnswer: "Genes are located on chromosomes",
        explanation: "The chromosome theory of inheritance asserts that genes are located on chromosomes and follow their behavior during meiosis.",
        topic: "5.6",
        unit: 5
    ),
    PracticeQuestion(
        question: "What are linked genes?",
        options: ["Genes on the same chromosome", "Genes on different chromosomes", "Genes that are not inherited together", "Genes located on the Y chromosome"].shuffled(),
        correctAnswer: "Genes on the same chromosome",
        explanation: "Linked genes are located on the same chromosome and are often inherited together during meiosis.",
        topic: "5.6",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is independent assortment?",
        options: ["Genes assort independently in meiosis", "Chromosomes assort together in meiosis", "Genes on the same chromosome segregate together", "Crossing over does not affect independent assortment"].shuffled(),
        correctAnswer: "Genes assort independently in meiosis",
        explanation: "Independent assortment refers to the random distribution of chromosomes during meiosis, creating genetic variation.",
        topic: "5.6",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is crossing over?",
        options: ["Exchange of genetic material between homologous chromosomes", "The random distribution of chromosomes", "The segregation of chromosomes", "The duplication of chromosomes during cell division"].shuffled(),
        correctAnswer: "Exchange of genetic material between homologous chromosomes",
        explanation: "Crossing over is the exchange of alleles between homologous chromosomes, contributing to genetic diversity.",
        topic: "5.6",
        unit: 5
    ),
    PracticeQuestion(
        question: "What do sex chromosomes determine?",
        options: ["Biological sex", "Hair color", "Height", "Blood type"].shuffled(),
        correctAnswer: "Biological sex",
        explanation: "Sex chromosomes, XX and XY, determine the biological sex of an individual in humans.",
        topic: "5.6",
        unit: 5
    ),
    PracticeQuestion(
        question: "What is the structure of DNA?",
        options: ["Single-stranded helix", "Double-stranded helix", "Circular molecule", "Triple-stranded helix"].shuffled(),
        correctAnswer: "Double-stranded helix",
        explanation: "DNA consists of two strands forming a double helix, storing genetic information.",
        topic: "6.1",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which nucleotides pair together in DNA?",
        options: ["A-U, C-G", "A-T, C-G", "A-G, C-T", "A-C, G-T"].shuffled(),
        correctAnswer: "A-T, C-G",
        explanation: "In DNA, adenine pairs with thymine (A-T) and cytosine pairs with guanine (C-G).",
        topic: "6.1",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which nucleotide is found in RNA but not DNA?",
        options: ["Adenine", "Thymine", "Uracil", "Guanine"].shuffled(),
        correctAnswer: "Uracil",
        explanation: "RNA contains uracil (U) instead of thymine (T), pairing with adenine.",
        topic: "6.1",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which nitrogenous bases are pyrimidines?",
        options: ["Adenine and guanine", "Cytosine and guanine", "Cytosine, thymine, and uracil", "Adenine, thymine, cytosine"].shuffled(),
        correctAnswer: "Cytosine, thymine, and uracil",
        explanation: "Pyrimidines are single-ring nitrogenous bases; DNA has cytosine and thymine, while RNA has cytosine and uracil.",
        topic: "6.1",
        unit: 6
    ),
    PracticeQuestion(
        question: "What describes the prokaryotic genome?",
        options: ["Linear DNA in nucleus", "Single, circular DNA molecule", "Multiple chromosomes", "Double-stranded RNA genome"].shuffled(),
        correctAnswer: "Single, circular DNA molecule",
        explanation: "Prokaryotic genomes consist of a single, circular DNA molecule without a nucleus.",
        topic: "6.1",
        unit: 6
    ),
    PracticeQuestion(
        question: "What does semiconservative replication mean?",
        options: ["Each new DNA has two new strands", "Each new DNA has one old and one new strand", "DNA is copied randomly", "Only one strand is copied"].shuffled(),
        correctAnswer: "Each new DNA has one old and one new strand",
        explanation: "In semiconservative replication, each daughter DNA consists of one original strand and one new strand.",
        topic: "6.2",
        unit: 6
    ),
    PracticeQuestion(
        question: "What marks the 5' end of a DNA strand?",
        options: ["Hydroxyl terminus", "Phosphate terminus", "Nitrogenous base", "Ribose sugar"].shuffled(),
        correctAnswer: "Phosphate terminus",
        explanation: "The 5' end of a DNA strand has a phosphate group attached to the sugar's 5' carbon.",
        topic: "6.2",
        unit: 6
    ),
    PracticeQuestion(
        question: "What marks the 3' end of a DNA strand?",
        options: ["Phosphate terminus", "Hydroxyl terminus", "Nitrogenous base", "Deoxyribose sugar"].shuffled(),
        correctAnswer: "Hydroxyl terminus",
        explanation: "The 3' end of a DNA strand has a hydroxyl (-OH) group attached to the sugar's 3' carbon.",
        topic: "6.2",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which enzyme unwinds the DNA helix?",
        options: ["DNA polymerase", "Ligase", "Helicase", "Topoisomerase"].shuffled(),
        correctAnswer: "Helicase",
        explanation: "Helicase breaks hydrogen bonds between base pairs, unwinding the DNA strands.",
        topic: "6.2",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the role of topoisomerase?",
        options: ["Adds nucleotides to DNA", "Seals gaps in DNA", "Prevents DNA supercoiling", "Unwinds DNA"].shuffled(),
        correctAnswer: "Prevents DNA supercoiling",
        explanation: "Topoisomerase relieves tension in DNA ahead of the replication fork, preventing supercoiling.",
        topic: "6.2",
        unit: 6
    ),
    PracticeQuestion(
        question: "What direction is the leading strand synthesized in?",
        options: ["Continuously in the 5' to 3' direction", "Continuously in the 3' to 5' direction"].shuffled(),
        correctAnswer: "Continuously in the 5' to 3' direction",
        explanation: "The leading strand is synthesized smoothly in the same direction as the replication fork.",
        topic: "6.2",
        unit: 6
    ),
    PracticeQuestion(
        question: "How is the lagging strand synthesized?",
        options: ["Continuously in the 5' to 3' direction", "Using Okazaki fragments", "By helicase", "By breaking hydrogen bonds"].shuffled(),
        correctAnswer: "Using Okazaki fragments",
        explanation: "The lagging strand is synthesized discontinuously in short fragments that are later joined together.",
        topic: "6.2",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which enzyme seals Okazaki fragments?",
        options: ["Helicase", "Ligase", "Topoisomerase", "DNA polymerase"].shuffled(),
        correctAnswer: "Ligase",
        explanation: "DNA ligase joins Okazaki fragments on the lagging strand by forming phosphodiester bonds.",
        topic: "6.2",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the function of DNA polymerase?",
        options: ["Unzips DNA strands", "Relieves supercoiling", "Adds nucleotides to new DNA strand", "Seals Okazaki fragments"].shuffled(),
        correctAnswer: "Adds nucleotides to new DNA strand",
        explanation: "DNA polymerase extends the DNA chain by adding complementary nucleotides in the 5' to 3' direction.",
        topic: "6.2",
        unit: 6
    ),
    PracticeQuestion(
        question: "Why is DNA replication considered antiparallel?",
        options: ["It occurs in both directions simultaneously", "One strand is continuous, the other is discontinuous", "The two strands run in opposite directions", "Each new DNA has an old and a new strand"].shuffled(),
        correctAnswer: "The two strands run in opposite directions",
        explanation: "DNA strands are antiparallel, meaning one runs 5' to 3' while the other runs 3' to 5', enabling complementary base pairing.",
        topic: "6.2",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the correct flow of genetic information?",
        options: ["RNA → DNA → Protein", "DNA → RNA → Protein", "Protein → RNA → DNA", "DNA → Protein → RNA"].shuffled(),
        correctAnswer: "DNA → RNA → Protein",
        explanation: "Genetic information flows from DNA to RNA via transcription, then from RNA to protein via translation.",
        topic: "6.3",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is transcription?",
        options: ["Protein synthesis from RNA", "RNA synthesis from a DNA template", "DNA replication", "RNA modification"].shuffled(),
        correctAnswer: "RNA synthesis from a DNA template",
        explanation: "Transcription is the process where RNA polymerase synthesizes RNA from a DNA template.",
        topic: "6.3",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the role of RNA polymerase?",
        options: ["Synthesizes proteins", "Synthesizes RNA from DNA", "Translates mRNA", "Splices mRNA"].shuffled(),
        correctAnswer: "Synthesizes RNA from DNA",
        explanation: "RNA polymerase binds to DNA, unwinds it, and builds an RNA strand complementary to the DNA template.",
        topic: "6.3",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is a codon?",
        options: ["A single RNA nucleotide", "A three-nucleotide RNA sequence", "A protein unit", "A DNA-binding site"].shuffled(),
        correctAnswer: "A three-nucleotide RNA sequence",
        explanation: "A codon is a triplet of RNA nucleotides that specifies an amino acid during translation.",
        topic: "6.3",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is an anticodon?",
        options: ["A DNA sequence", "A three-nucleotide sequence on tRNA", "An mRNA start signal", "A ribosomal subunit"].shuffled(),
        correctAnswer: "A three-nucleotide sequence on tRNA",
        explanation: "An anticodon on tRNA is complementary to an mRNA codon and helps bring the correct amino acid during translation.",
        topic: "6.3",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which type of RNA carries genetic information from DNA?",
        options: ["tRNA", "mRNA", "rRNA", "snRNA"].shuffled(),
        correctAnswer: "mRNA",
        explanation: "Messenger RNA (mRNA) carries the genetic code from DNA to the ribosome for protein synthesis.",
        topic: "6.3",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which type of RNA brings amino acids to the ribosome?",
        options: ["tRNA", "mRNA", "rRNA", "snRNA"].shuffled(),
        correctAnswer: "tRNA",
        explanation: "Transfer RNA (tRNA) carries amino acids to the ribosome and pairs with mRNA codons using its anticodon.",
        topic: "6.3",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which RNA type is a structural component of ribosomes?",
        options: ["mRNA", "tRNA", "rRNA", "snRNA"].shuffled(),
        correctAnswer: "rRNA",
        explanation: "Ribosomal RNA (rRNA) forms the structure of ribosomes and facilitates protein synthesis.",
        topic: "6.3",
        unit: 6
    ),
    PracticeQuestion(
        question: "Where does transcription occur in eukaryotic cells?",
        options: ["Cytoplasm", "Ribosome", "Nucleus", "Golgi apparatus"].shuffled(),
        correctAnswer: "Nucleus",
        explanation: "In eukaryotes, transcription occurs in the nucleus before mRNA is transported to the cytoplasm for translation.",
        topic: "6.3",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the function of the mRNA transcript?",
        options: ["To store genetic information", "To deliver amino acids", "To guide protein synthesis", "To form ribosomes"].shuffled(),
        correctAnswer: "To guide protein synthesis",
        explanation: "mRNA carries the genetic code from DNA to ribosomes, directing protein synthesis.",
        topic: "6.3",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the role of reverse transcriptase in retroviruses?",
        options: ["Synthesizes proteins", "Replicates viral RNA", "Converts RNA into DNA", "Cuts DNA strands"].shuffled(),
        correctAnswer: "Converts RNA into DNA",
        explanation: "Reverse transcriptase allows retroviruses to convert RNA into DNA, integrating it into the host genome.",
        topic: "6.4",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the correct order of retrovirus translation?",
        options: ["DNA → RNA → Protein", "RNA → DNA → Protein", "Protein → DNA → RNA", "RNA → Protein → DNA"].shuffled(),
        correctAnswer: "RNA → DNA → Protein",
        explanation: "Retroviruses use reverse transcriptase to create DNA from RNA before translation into proteins.",
        topic: "6.4",
        unit: 6
    ),
    PracticeQuestion(
        question: "What happens during translation initiation?",
        options: ["Ribosome binds to mRNA", "Amino acids form a peptide bond", "RNA polymerase starts transcription", "Ribosome reaches a stop codon"].shuffled(),
        correctAnswer: "Ribosome binds to mRNA",
        explanation: "Translation initiation begins when the ribosome assembles around the mRNA and the first tRNA binds to the start codon.",
        topic: "6.4",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the function of an mRNA codon chart?",
        options: ["Determines amino acids from codons", "Transcribes DNA to RNA", "Splices introns from mRNA", "Synthesizes proteins"].shuffled(),
        correctAnswer: "Determines amino acids from codons",
        explanation: "The mRNA codon chart helps translate nucleotide triplets into their corresponding amino acids.",
        topic: "6.4",
        unit: 6
    ),
    PracticeQuestion(
        question: "During elongation, what happens in translation?",
        options: ["Ribosome binds to mRNA", "Amino acids are added sequentially", "Stop codon is reached", "RNA polymerase builds RNA"].shuffled(),
        correctAnswer: "Amino acids are added sequentially",
        explanation: "During elongation, tRNAs bring amino acids to the ribosome, forming a growing polypeptide chain.",
        topic: "6.4",
        unit: 6
    ),
    PracticeQuestion(
        question: "What causes termination in translation?",
        options: ["Ribosome reaches a stop codon", "RNA polymerase stops transcribing", "A tRNA molecule is removed", "Ribosome binds to the start codon"].shuffled(),
        correctAnswer: "Ribosome reaches a stop codon",
        explanation: "Translation stops when a stop codon is reached, causing the ribosome to release the completed polypeptide.",
        topic: "6.4",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which enzyme allows retroviruses to integrate their genetic material into a host genome?",
        options: ["Helicase", "Ligase", "Reverse transcriptase", "Topoisomerase"].shuffled(),
        correctAnswer: "Reverse transcriptase",
        explanation: "Reverse transcriptase allows retroviruses to convert RNA into DNA, which is then inserted into the host genome.",
        topic: "6.4",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the function of tRNA in translation?",
        options: ["Carries amino acids to the ribosome", "Binds to mRNA to start transcription", "Assembles ribosomes", "Acts as a template for protein synthesis"].shuffled(),
        correctAnswer: "Carries amino acids to the ribosome",
        explanation: "tRNA carries amino acids to the ribosome, matching its anticodon with the mRNA codon.",
        topic: "6.4",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the start codon for translation?",
        options: ["AUG", "UAA", "UGA", "UAG"].shuffled(),
        correctAnswer: "AUG",
        explanation: "The start codon AUG signals the beginning of translation and codes for methionine.",
        topic: "6.4",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which of the following is a stop codon?",
        options: ["UAA", "AUG", "CCC", "GGA"].shuffled(),
        correctAnswer: "UAA",
        explanation: "Stop codons (UAA, UAG, UGA) signal the ribosome to end translation and release the polypeptide.",
        topic: "6.4",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is gene expression?",
        options: ["Turning genes on or off", "Mutating DNA sequences", "Copying DNA to RNA", "Synthesizing carbohydrates"].shuffled(),
        correctAnswer: "Turning genes on or off",
        explanation: "Gene expression determines whether a gene is transcribed and translated into a protein.",
        topic: "6.5",
        unit: 6
    ),
    PracticeQuestion(
        question: "What do regulatory sequences control?",
        options: ["Cell division", "Gene expression", "Protein folding", "DNA replication"].shuffled(),
        correctAnswer: "Gene expression",
        explanation: "Regulatory sequences like promoters and enhancers influence transcription levels.",
        topic: "6.5",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the role of histones?",
        options: ["Store genetic information", "Package DNA into chromatin", "Synthesize RNA", "Regulate mRNA splicing"].shuffled(),
        correctAnswer: "Package DNA into chromatin",
        explanation: "Histones help condense DNA into chromatin, influencing gene accessibility.",
        topic: "6.5",
        unit: 6
    ),
    PracticeQuestion(
        question: "What process allows stem cells to specialize into different cell types?",
        options: ["Replication", "Translation", "Differentiation", "Mutation"].shuffled(),
        correctAnswer: "Differentiation",
        explanation: "Cell differentiation enables stem cells to develop into specialized cell types.",
        topic: "6.5",
        unit: 6
    ),
    PracticeQuestion(
        question: "What do transcription factors do?",
        options: ["Activate or repress gene transcription", "Unwind DNA strands", "Splice mRNA", "Synthesize new DNA"].shuffled(),
        correctAnswer: "Activate or repress gene transcription",
        explanation: "Transcription factors bind to DNA and regulate gene expression by promoting or inhibiting transcription.",
        topic: "6.5",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which of the following are undifferentiated cells?",
        options: ["Neurons", "Stem cells", "Muscle cells", "Skin cells"].shuffled(),
        correctAnswer: "Stem cells",
        explanation: "Undifferentiated cells, like stem cells, have the potential to develop into various specialized cells.",
        topic: "6.5",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is an operon?",
        options: ["A protein that regulates gene expression", "A gene cluster with one promoter", "A molecule that activates enzymes", "A DNA sequence that codes for histones"].shuffled(),
        correctAnswer: "A gene cluster with one promoter",
        explanation: "An operon is a group of genes controlled by a single promoter, commonly found in prokaryotes.",
        topic: "6.5",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the function of an operator in an operon?",
        options: ["Encodes a protein", "Controls transcription", "Replicates DNA", "Synthesizes RNA"].shuffled(),
        correctAnswer: "Controls transcription",
        explanation: "The operator is a regulatory DNA sequence where repressors can bind to inhibit transcription.",
        topic: "6.5",
        unit: 6
    ),
    PracticeQuestion(
        question: "How does the lac operon regulate lactose metabolism?",
        options: ["It is always on", "It activates when lactose is present", "It suppresses lactose breakdown", "It prevents RNA polymerase from binding"].shuffled(),
        correctAnswer: "It activates when lactose is present",
        explanation: "The lac operon is an inducible system that turns on when lactose is available, allowing its metabolism.",
        topic: "6.5",
        unit: 6
    ),
    PracticeQuestion(
        question: "What does an inducer do in gene regulation?",
        options: ["Enhances protein folding", "Suppresses gene expression", "Activates transcription", "Destroys mRNA"].shuffled(),
        correctAnswer: "Activates transcription",
        explanation: "Inducers, like allolactose, bind to repressors and allow transcription to proceed.",
        topic: "6.5",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the function of a promoter?",
        options: ["Encodes proteins", "Initiates transcription", "Translates RNA", "Replicates DNA"].shuffled(),
        correctAnswer: "Initiates transcription",
        explanation: "A promoter is a DNA sequence where RNA polymerase binds to start transcription.",
        topic: "6.6",
        unit: 6
    ),
    PracticeQuestion(
        question: "What do negative regulatory molecules do?",
        options: ["Activate gene expression", "Inhibit gene expression", "Enhance translation", "Modify proteins"].shuffled(),
        correctAnswer: "Inhibit gene expression",
        explanation: "Negative regulators, such as repressors, bind to DNA and block transcription.",
        topic: "6.6",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the role of regulatory proteins?",
        options: ["Store genetic information", "Control gene expression", "Break down mRNA", "Synthesize tRNA"].shuffled(),
        correctAnswer: "Control gene expression",
        explanation: "Regulatory proteins act as repressors or activators to modulate transcription levels.",
        topic: "6.6",
        unit: 6
    ),
    PracticeQuestion(
        question: "What do regulatory genes encode?",
        options: ["Structural proteins", "Regulatory proteins", "mRNA molecules", "Ribosomal subunits"].shuffled(),
        correctAnswer: "Regulatory proteins",
        explanation: "Regulatory genes produce proteins that influence the expression of other genes.",
        topic: "6.6",
        unit: 6
    ),
    PracticeQuestion(
        question: "How do promoter sequences assist transcription?",
        options: ["They bind RNA polymerase", "They terminate transcription", "They splice mRNA", "They inhibit translation"].shuffled(),
        correctAnswer: "They bind RNA polymerase",
        explanation: "Promoter sequences provide a site for RNA polymerase to attach and begin transcription.",
        topic: "6.6",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is a mutation?",
        options: ["Change in DNA sequence", "Loss of a chromosome", "RNA modification", "Protein synthesis error"].shuffled(),
        correctAnswer: "Change in DNA sequence",
        explanation: "A mutation is any alteration in the nucleotide sequence of DNA.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "What type of mutation benefits an organism?",
        options: ["Positive mutation", "Neutral mutation", "Negative mutation", "Silent mutation"].shuffled(),
        correctAnswer: "Positive mutation",
        explanation: "Positive mutations provide an advantage, such as increased survival or reproduction.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which mutation has no impact on an organism’s fitness?",
        options: ["Silent mutation", "Positive mutation", "Negative mutation", "Missense mutation"].shuffled(),
        correctAnswer: "Silent mutation",
        explanation: "A silent mutation does not change the protein's function and has no effect on fitness.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "What mutation can reduce an organism's survival?",
        options: ["Negative mutation", "Neutral mutation", "Silent mutation", "Beneficial mutation"].shuffled(),
        correctAnswer: "Negative mutation",
        explanation: "Negative mutations disrupt gene function, leading to decreased fitness.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "What type of mutation affects a single gene?",
        options: ["Chromosomal mutation", "Gene mutation", "Polyploidy", "Nondisjunction"].shuffled(),
        correctAnswer: "Gene mutation",
        explanation: "Gene mutations alter the DNA sequence of a single gene, potentially changing the protein produced.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "What disorder results from a point mutation in hemoglobin?",
        options: ["Sickle cell disease", "Cystic fibrosis", "Huntington’s disease", "Trisomy 21"].shuffled(),
        correctAnswer: "Sickle cell disease",
        explanation: "A point mutation in the hemoglobin gene leads to sickle cell disease.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which is NOT a cause of DNA mutations?",
        options: ["DNA replication errors", "UV radiation", "Chemical exposure", "Protein synthesis"].shuffled(),
        correctAnswer: "Protein synthesis",
        explanation: "Mutations occur due to replication errors, radiation, and chemicals, not protein synthesis.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "What happens in nondisjunction?",
        options: ["Chromosomes fail to separate", "Genes mutate", "Proteins misfold", "DNA fragments break"].shuffled(),
        correctAnswer: "Chromosomes fail to separate",
        explanation: "Nondisjunction occurs when chromosomes do not separate properly during cell division.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "What condition results from an extra chromosome 21?",
        options: ["Down syndrome", "Turner syndrome", "Cystic fibrosis", "Sickle cell disease"].shuffled(),
        correctAnswer: "Down syndrome",
        explanation: "Down syndrome (Trisomy 21) is caused by an extra chromosome 21 due to nondisjunction.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is polyploidy?",
        options: ["An extra chromosome", "Loss of a chromosome", "More than two sets of chromosomes", "A DNA deletion"].shuffled(),
        correctAnswer: "More than two sets of chromosomes",
        explanation: "Polyploidy occurs when an organism has extra sets of chromosomes.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which process allows bacteria to take up DNA from the environment?",
        options: ["Transformation", "Transduction", "Conjugation", "Transposition"].shuffled(),
        correctAnswer: "Transformation",
        explanation: "In transformation, bacteria absorb foreign DNA from their surroundings.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "How do viruses transfer DNA between bacteria?",
        options: ["Transformation", "Transduction", "Conjugation", "Transposition"].shuffled(),
        correctAnswer: "Transduction",
        explanation: "Transduction occurs when bacteriophages transfer DNA between bacterial cells.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which process allows bacteria to exchange DNA directly?",
        options: ["Transduction", "Transformation", "Conjugation", "Mutation"].shuffled(),
        correctAnswer: "Conjugation",
        explanation: "Conjugation involves DNA transfer between bacteria via a pilus.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the role of transposons?",
        options: ["They move within the genome", "They code for proteins", "They replicate DNA", "They repair mutations"].shuffled(),
        correctAnswer: "They move within the genome",
        explanation: "Transposons, or 'jumping genes,' relocate within the genome, affecting gene expression.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which environmental factor increases mutation rates?",
        options: ["Water", "Oxygen", "UV radiation", "Glucose"].shuffled(),
        correctAnswer: "UV radiation",
        explanation: "UV radiation can cause mutations by damaging DNA strands.",
        topic: "6.7",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is genetic engineering?",
        options: ["Studying DNA sequences", "Manipulating an organism's DNA", "Natural gene mutation", "Cellular respiration"].shuffled(),
        correctAnswer: "Manipulating an organism's DNA",
        explanation: "Genetic engineering involves altering DNA to achieve desired traits using methods like gene editing and cloning.",
        topic: "6.8",
        unit: 6
    ),
    PracticeQuestion(
        question: "What technique separates DNA fragments by size?",
        options: ["Electrophoresis", "PCR", "DNA sequencing", "Cloning"].shuffled(),
        correctAnswer: "Electrophoresis",
        explanation: "Electrophoresis uses an electric field to separate DNA fragments based on size for analysis.",
        topic: "6.8",
        unit: 6
    ),
    PracticeQuestion(
        question: "Which technique is used to amplify DNA?",
        options: ["Electrophoresis", "PCR", "DNA sequencing", "Bacterial transformation"].shuffled(),
        correctAnswer: "PCR",
        explanation: "PCR (polymerase chain reaction) rapidly creates millions of copies of a DNA segment.",
        topic: "6.8",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is the purpose of DNA sequencing?",
        options: ["To amplify DNA", "To separate DNA fragments", "To determine nucleotide order", "To insert foreign DNA"].shuffled(),
        correctAnswer: "To determine nucleotide order",
        explanation: "DNA sequencing identifies the exact order of nucleotides in a DNA molecule for genetic analysis.",
        topic: "6.8",
        unit: 6
    ),
    PracticeQuestion(
        question: "How does bacterial transformation work?",
        options: ["Bacteria take in foreign DNA", "Bacteria mutate naturally", "Bacteria fuse with other cells", "Bacteria undergo mitosis"].shuffled(),
        correctAnswer: "Bacteria take in foreign DNA",
        explanation: "In bacterial transformation, foreign DNA is introduced into bacterial cells, allowing them to gain new genetic traits.",
        topic: "6.8",
        unit: 6
    ),
    PracticeQuestion(
        question: "What is natural selection?",
        options: ["Organisms with favorable traits survive", "Organisms with genetic mutations die", "All organisms survive equally", "Organisms avoid competition"].shuffled(),
        correctAnswer: "Organisms with favorable traits survive",
        explanation: "Natural selection favors organisms with traits that improve survival and reproduction, passing those traits to future generations.",
        topic: "7.1",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does evolution refer to?",
        options: ["Changes in genetic makeup over generations", "Adaptations in an individual organism", "Migration of species", "Competition between species"].shuffled(),
        correctAnswer: "Changes in genetic makeup over generations",
        explanation: "Evolution occurs through changes in the genetic makeup of populations over generations, influenced by natural selection.",
        topic: "7.1",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is competition in an ecosystem?",
        options: ["Organisms fight for mates", "Organisms struggle for limited resources", "Organisms share resources equally", "Organisms create their own environment"].shuffled(),
        correctAnswer: "Organisms struggle for limited resources",
        explanation: "Competition happens when organisms vie for food, mates, or shelter, impacting their survival and reproduction.",
        topic: "7.1",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does variation refer to in a population?",
        options: ["The number of offspring", "Differences in traits among individuals", "The number of species", "The change in an ecosystem"].shuffled(),
        correctAnswer: "Differences in traits among individuals",
        explanation: "Variation in traits provides genetic diversity, which is essential for natural selection to act upon.",
        topic: "7.1",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are adaptations?",
        options: ["Inherited traits that enhance survival", "Physical changes in the environment", "Random mutations", "Temporary changes in behavior"].shuffled(),
        correctAnswer: "Inherited traits that enhance survival",
        explanation: "Adaptations are traits that improve an organism's ability to survive and reproduce, shaped by natural selection.",
        topic: "7.1",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does fitness measure in evolutionary biology?",
        options: ["Ability to survive and reproduce in an environment", "Ability to adapt to climate changes", "Size of an organism", "Rate of mutation"].shuffled(),
        correctAnswer: "Ability to survive and reproduce in an environment",
        explanation: "Fitness measures how well an organism's traits help it survive and reproduce in its specific environment.",
        topic: "7.1",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is reproductive success?",
        options: ["Ability to find food", "Number of surviving offspring that reproduce", "Ability to migrate", "Number of traits passed down"].shuffled(),
        correctAnswer: "Number of surviving offspring that reproduce",
        explanation: "Reproductive success is defined by how many offspring an organism has that can survive to reproduce themselves.",
        topic: "7.1",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is heritability?",
        options: ["Proportion of trait variation passed to offspring", "Ability of traits to adapt to environment", "Rate of natural selection", "Environmental changes that affect traits"].shuffled(),
        correctAnswer: "Proportion of trait variation passed to offspring",
        explanation: "Heritability refers to the extent to which a trait's variation is inherited by offspring, influencing evolutionary changes.",
        topic: "7.1",
        unit: 7
    ),
    PracticeQuestion(
        question: "What supports ecosystem stability?",
        options: ["Biodiversity and species interactions", "Predation and competition", "Resource depletion", "Population growth"].shuffled(),
        correctAnswer: "Biodiversity and species interactions",
        explanation: "Ecosystem stability is supported by a balance of species interactions and biodiversity, maintaining the ecosystem's structure.",
        topic: "7.1",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are biotic factors in an ecosystem?",
        options: ["Non-living components", "Living components", "Abiotic conditions", "Physical characteristics of the environment"].shuffled(),
        correctAnswer: "Living components",
        explanation: "Biotic factors include all living organisms that interact within an ecosystem, such as plants, animals, and microbes.",
        topic: "7.1",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is genetic variation?",
        options: ["Differences in genetic makeup within a population", "The ability to adapt to the environment", "The physical appearance of organisms", "The number of offspring produced"].shuffled(),
        correctAnswer: "Differences in genetic makeup within a population",
        explanation: "Genetic variation provides the diversity of traits that natural selection can act upon, leading to evolutionary changes.",
        topic: "7.2",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does selective pressure refer to?",
        options: ["Factors that influence an organism's survival", "The rate of mutation in a population", "The genetic diversity in a population", "The speed of evolutionary changes"].shuffled(),
        correctAnswer: "Factors that influence an organism's survival",
        explanation: "Selective pressures such as predators, food availability, and climate conditions affect which traits are favored by natural selection.",
        topic: "7.2",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is meant by fitness in evolutionary biology?",
        options: ["The ability to adapt to environmental changes", "Reproductive success over generations", "The physical strength of an organism", "The diversity of traits within a population"].shuffled(),
        correctAnswer: "Reproductive success over generations",
        explanation: "Fitness measures how well an organism can reproduce and pass on its genes, ensuring its traits persist in the population.",
        topic: "7.2",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is DDT resistance?",
        options: ["Ability of organisms to survive pesticide exposure", "Resistance to environmental changes", "Ability to adapt to new food sources", "Resistance to disease outbreaks"].shuffled(),
        correctAnswer: "Ability of organisms to survive pesticide exposure",
        explanation: "DDT resistance evolved in organisms through natural selection, where resistant individuals survived pesticide exposure and reproduced.",
        topic: "7.2",
        unit: 7
    ),
    PracticeQuestion(
        question: "What drives the evolution of traits like DDT resistance?",
        options: ["Genetic mutations", "Selective pressure", "Random genetic drift", "Artificial selection"].shuffled(),
        correctAnswer: "Selective pressure",
        explanation: "Selective pressure, such as pesticide exposure, favors individuals with traits that enhance their survival and reproduction, leading to the evolution of resistance.",
        topic: "7.2",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is artificial selection?",
        options: ["Humans selectively breed organisms for desired traits", "Natural selection acting on wild populations", "Evolution of new species in isolation", "Mutation causing genetic variation"].shuffled(),
        correctAnswer: "Humans selectively breed organisms for desired traits",
        explanation: "In artificial selection, humans choose organisms with beneficial traits to reproduce, shaping future generations.",
        topic: "7.3",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are desirable traits in selective breeding?",
        options: ["Traits preferred by humans for breeding", "Traits that increase survival in the wild", "Traits that result from genetic mutations", "Traits that arise through natural selection"].shuffled(),
        correctAnswer: "Traits preferred by humans for breeding",
        explanation: "Desirable traits are characteristics that humans find beneficial and aim to propagate through breeding.",
        topic: "7.3",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are phenotypic adaptations?",
        options: ["Physical traits that enhance survival in an environment", "Genetic changes in DNA sequence", "Behavioral changes in response to environmental factors", "Internal processes that affect reproduction"].shuffled(),
        correctAnswer: "Physical traits that enhance survival in an environment",
        explanation: "Phenotypic adaptations are observable physical traits shaped by natural selection to improve survival in specific environments.",
        topic: "7.3",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is convergent evolution?",
        options: ["Unrelated species develop similar traits due to similar environments", "Species evolve into distinct forms due to isolation", "Species evolve traits from common ancestors", "Species adapt to new environments through migration"].shuffled(),
        correctAnswer: "Unrelated species develop similar traits due to similar environments",
        explanation: "Convergent evolution occurs when unrelated species independently evolve similar traits to adapt to similar environments.",
        topic: "7.3",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are analogous structures?",
        options: ["Structures with similar functions but different origins", "Structures that share common ancestry", "Structures that evolved due to genetic mutations", "Structures that perform different functions in species"].shuffled(),
        correctAnswer: "Structures with similar functions but different origins",
        explanation: "Analogous structures evolve in different species to perform similar functions but do not share a common ancestry.",
        topic: "7.3",
        unit: 7
    ),
    PracticeQuestion(
        question: "What drives evolution in populations?",
        options: ["Random genetic changes", "Changes in environmental conditions", "Selective breeding by humans", "Predation and competition"].shuffled(),
        correctAnswer: "Random genetic changes",
        explanation: "Evolution can result from random genetic changes, such as mutations or genetic drift, that alter genetic variation.",
        topic: "7.4",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is genetic drift?",
        options: ["Random changes in allele frequencies over time", "Selection of traits that increase fitness", "Movement of alleles between populations", "Adaptations to environmental conditions"].shuffled(),
        correctAnswer: "Random changes in allele frequencies over time",
        explanation: "Genetic drift refers to random fluctuations in allele frequencies, particularly in small populations, that can affect genetic diversity.",
        topic: "7.4",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is the founder effect?",
        options: ["Genetic variation limited by a small founding population", "Migration introducing new alleles to a population", "Selection of traits beneficial for survival", "Genetic mutations causing new traits"].shuffled(),
        correctAnswer: "Genetic variation limited by a small founding population",
        explanation: "The founder effect occurs when a small group establishes a new population, leading to reduced genetic diversity.",
        topic: "7.4",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is gene flow in populations?",
        options: ["Movement of alleles between populations", "Random mutation in the population", "Natural selection favoring certain traits", "Isolation of populations leading to speciation"].shuffled(),
        correctAnswer: "Movement of alleles between populations",
        explanation: "Gene flow occurs when individuals migrate between populations, introducing new genetic material and increasing genetic diversity.",
        topic: "7.4",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are random processes in evolution?",
        options: ["Unpredictable events affecting allele frequencies", "Selection pressures influencing traits", "Environmental factors changing genetic makeup", "Humans influencing breeding practices"].shuffled(),
        correctAnswer: "Unpredictable events affecting allele frequencies",
        explanation: "Random processes, such as genetic drift and mutations, can influence allele frequencies and affect the genetic makeup of a population.",
        topic: "7.4",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does evolution refer to in biology?",
        options: ["Change in allele frequencies over generations", "Mutation of genes within a population", "Changes in the environment influencing organisms", "Selection of traits that improve survival"].shuffled(),
        correctAnswer: "Change in allele frequencies over generations",
        explanation: "Evolution occurs when the genetic composition of a population changes due to processes like selection, drift, or gene flow.",
        topic: "7.4",
        unit: 7
    ),
    PracticeQuestion(
        question: "How can genetic diversity be increased in populations?",
        options: ["Through migration and gene flow", "By reducing the population size", "By isolating populations", "By limiting genetic mutations"].shuffled(),
        correctAnswer: "Through migration and gene flow",
        explanation: "Migration and gene flow introduce new alleles into populations, increasing genetic diversity and enhancing evolutionary potential.",
        topic: "7.4",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does the Hardy-Weinberg model describe?",
        options: ["Genetic equilibrium in a population", "Mutation rates in a population", "Migration patterns between populations", "The process of natural selection"].shuffled(),
        correctAnswer: "Genetic equilibrium in a population",
        explanation: "The Hardy-Weinberg model predicts that allele frequencies will remain constant under certain conditions, maintaining genetic equilibrium.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are the 5 conditions for Hardy-Weinberg equilibrium?",
        options: ["Large population, no migration, no mutations, random mating, no selection", "Migration, genetic drift, selection, random mating, no mutations", "Large population, mutations, selection, non-random mating, no migration", "Small population, no mutations, random mating, selection, gene flow"].shuffled(),
        correctAnswer: "Large population, no migration, no mutations, random mating, no selection",
        explanation: "For Hardy-Weinberg equilibrium to hold, the population must meet these five conditions: a large population, no migration, no mutations, random mating, and no selection.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "Why is a large population important for Hardy-Weinberg equilibrium?",
        options: ["It minimizes genetic drift effects", "It promotes natural selection", "It increases mutation rates", "It reduces migration"].shuffled(),
        correctAnswer: "It minimizes genetic drift effects",
        explanation: "A large population size reduces the impact of random changes in allele frequencies due to genetic drift.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does the absence of migration ensure in Hardy-Weinberg equilibrium?",
        options: ["Prevents gene flow between populations", "Promotes genetic variation", "Causes mutations", "Increases genetic drift"].shuffled(),
        correctAnswer: "Prevents gene flow between populations",
        explanation: "Without migration, allele frequencies remain unchanged by external genetic input, maintaining equilibrium.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is assumed in Hardy-Weinberg equilibrium about mutations?",
        options: ["No net mutation", "Mutation rates are high", "Mutations introduce new alleles", "Mutations lead to genetic drift"].shuffled(),
        correctAnswer: "No net mutation",
        explanation: "The Hardy-Weinberg model assumes no mutations are occurring that could introduce new alleles or alter existing ones.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does random mating ensure in Hardy-Weinberg equilibrium?",
        options: ["Equal chance of allele combinations", "No genetic drift", "No mutations", "No selection pressures"].shuffled(),
        correctAnswer: "Equal chance of allele combinations",
        explanation: "Random mating ensures that allele combinations occur without bias, maintaining expected genotype frequencies.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does the absence of selection mean in Hardy-Weinberg equilibrium?",
        options: ["No advantage for any trait", "Mutations are neutral", "Alleles are selectively favored", "Mating occurs randomly"].shuffled(),
        correctAnswer: "No advantage for any trait",
        explanation: "In equilibrium, no selective pressures are acting to favor one allele over another, allowing allele frequencies to remain constant.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does the Hardy-Weinberg equation p^2 + 2pq + q^2 = 1 predict?",
        options: ["Genotype frequencies in a population at equilibrium", "Phenotype frequencies in a population", "The proportion of individuals with mutations", "The rate of genetic drift in a population"].shuffled(),
        correctAnswer: "Genotype frequencies in a population at equilibrium",
        explanation: "The equation predicts the frequency of genotypes (homozygous dominant, heterozygous, and homozygous recessive) in a population at equilibrium.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does p^2 represent in Hardy-Weinberg equilibrium?",
        options: ["Frequency of homozygous dominant genotype", "Frequency of heterozygous genotype", "Frequency of homozygous recessive genotype", "Frequency of the dominant allele"].shuffled(),
        correctAnswer: "Frequency of homozygous dominant genotype",
        explanation: "In the Hardy-Weinberg equation, p^2 represents the proportion of individuals with the homozygous dominant genotype.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does 2pq represent in Hardy-Weinberg equilibrium?",
        options: ["Frequency of heterozygous genotype", "Frequency of homozygous dominant genotype", "Frequency of homozygous recessive genotype", "Frequency of the recessive allele"].shuffled(),
        correctAnswer: "Frequency of heterozygous genotype",
        explanation: "The term 2pq represents the proportion of individuals with the heterozygous genotype.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does q^2 represent in Hardy-Weinberg equilibrium?",
        options: ["Frequency of homozygous recessive genotype", "Frequency of homozygous dominant genotype", "Frequency of heterozygous genotype", "Frequency of the recessive allele"].shuffled(),
        correctAnswer: "Frequency of homozygous recessive genotype",
        explanation: "In Hardy-Weinberg equilibrium, q^2 represents the proportion of individuals with the homozygous recessive genotype.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does p represent in the Hardy-Weinberg equation?",
        options: ["Frequency of the dominant allele", "Frequency of the recessive allele", "Frequency of heterozygous individuals", "Frequency of homozygous dominant individuals"].shuffled(),
        correctAnswer: "Frequency of the dominant allele",
        explanation: "p represents the proportion of dominant alleles in the population.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does q represent in the Hardy-Weinberg equation?",
        options: ["Frequency of the recessive allele", "Frequency of the dominant allele", "Frequency of heterozygous individuals", "Frequency of homozygous recessive individuals"].shuffled(),
        correctAnswer: "Frequency of the recessive allele",
        explanation: "q represents the proportion of recessive alleles in the population.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "Which factors disrupt Hardy-Weinberg equilibrium?",
        options: ["Mutations, non-random mating, gene flow, genetic drift", "Large population size, random mating, no selection", "High migration rates, random mutations, no selection", "No mutations, random mating, natural selection"].shuffled(),
        correctAnswer: "Mutations, non-random mating, gene flow, genetic drift",
        explanation: "These factors can alter allele frequencies and disrupt Hardy-Weinberg equilibrium over time.",
        topic: "7.5",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does geographical evidence provide in evolutionary studies?",
        options: ["Species distribution patterns", "DNA sequencing data", "Fossil records", "Environmental impact studies"].shuffled(),
        correctAnswer: "Species distribution patterns",
        explanation: "Geographical patterns of species distribution offer clues about how species evolved based on location and environmental factors.",
        topic: "7.6",
        unit: 7
    ),
    PracticeQuestion(
        question: "What do geological layers provide in evolutionary studies?",
        options: ["Evolutionary history", "DNA evidence", "Species classification", "Physical traits data"].shuffled(),
        correctAnswer: "Evolutionary history",
        explanation: "Geological strata help scientists understand the evolutionary changes that occurred over time by studying rock layers.",
        topic: "7.6",
        unit: 7
    ),
    PracticeQuestion(
        question: "What do physical traits indicate in evolutionary studies?",
        options: ["Environmental adaptations", "Genetic drift", "Evolutionary relationships", "Migration patterns"].shuffled(),
        correctAnswer: "Evolutionary relationships",
        explanation: "Observable physical characteristics, like body structures, provide evidence of common ancestry among species.",
        topic: "7.6",
        unit: 7
    ),
    PracticeQuestion(
        question: "How do biochemical similarities provide evidence for evolution?",
        options: ["DNA and proteins reveal shared ancestry", "Species distributions indicate common traits", "Fossil records show ancient species", "Environmental factors shape DNA"].shuffled(),
        correctAnswer: "DNA and proteins reveal shared ancestry",
        explanation: "DNA and protein similarities between species indicate evolutionary links and common ancestry.",
        topic: "7.6",
        unit: 7
    ),
    PracticeQuestion(
        question: "How are mathematical models used in evolutionary studies?",
        options: ["To predict evolutionary patterns", "To classify species", "To analyze fossil records", "To determine environmental factors"].shuffled(),
        correctAnswer: "To predict evolutionary patterns",
        explanation: "Mathematical models are used to analyze genetic changes and predict patterns of evolution over time.",
        topic: "7.6",
        unit: 7
    ),
    PracticeQuestion(
        question: "What do fossils provide in evolutionary studies?",
        options: ["Genetic data", "Environmental data", "Direct evidence of past life forms", "Geological data"].shuffled(),
        correctAnswer: "Direct evidence of past life forms",
        explanation: "Fossils preserve remains of ancient life forms, offering direct evidence of how species evolved.",
        topic: "7.6",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are the two main methods of dating fossils?",
        options: ["Relative and absolute dating", "DNA sequencing and fossil comparison", "Genetic drift and migration analysis", "Radiometric dating and environmental testing"].shuffled(),
        correctAnswer: "Relative and absolute dating",
        explanation: "Fossils are dated using relative dating (based on strata) and absolute dating (using radiometric methods).",
        topic: "7.6",
        unit: 7
    ),
    PracticeQuestion(
        question: "What do morphological homologies indicate?",
        options: ["Evolutionary relationships", "Species migration", "Genetic mutations", "Environmental adaptations"].shuffled(),
        correctAnswer: "Evolutionary relationships",
        explanation: "Homologous structures, though differing in function, suggest that species share a common ancestry.",
        topic: "7.6",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are vestigial structures?",
        options: ["Reduced structures with no function", "Highly developed organs", "Traits that provide an advantage", "Structures similar in unrelated species"].shuffled(),
        correctAnswer: "Reduced structures with no function",
        explanation: "Vestigial structures, such as the human tailbone, are remnants of features that once had a function in ancestral species.",
        topic: "7.6",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does biochemical evidence show in evolutionary studies?",
        options: ["Relatedness among species", "Physical adaptations", "Geological time periods", "Species migration patterns"].shuffled(),
        correctAnswer: "Relatedness among species",
        explanation: "Species with similar DNA and protein sequences are more closely related, providing evidence of shared ancestry.",
        topic: "7.6",
        unit: 7
    ),
    PracticeQuestion(
        question: "What supports the theory of common ancestry?",
        options: ["Shared traits among diverse organisms", "Unique traits in different species", "Species' migration patterns", "Physical adaptations to the environment"].shuffled(),
        correctAnswer: "Shared traits among diverse organisms",
        explanation: "Common ancestry is supported by traits shared across different organisms, showing a genetic link.",
        topic: "7.7",
        unit: 7
    ),
    PracticeQuestion(
        question: "What do membrane-bound organelles suggest?",
        options: ["Shared ancestry among eukaryotes", "Genetic drift in species", "Migration of species", "Environmental adaptation to survival"].shuffled(),
        correctAnswer: "Shared ancestry among eukaryotes",
        explanation: "Membrane-bound organelles like mitochondria and the nucleus suggest a common evolutionary origin among eukaryotes.",
        topic: "7.7",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is the significance of linear chromosomes?",
        options: ["They indicate a common evolutionary origin", "They prevent genetic mutations", "They help with protein synthesis", "They regulate cell division"].shuffled(),
        correctAnswer: "They indicate a common evolutionary origin",
        explanation: "Linear chromosomes in eukaryotes suggest a shared evolutionary ancestry among these organisms.",
        topic: "7.7",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are introns in eukaryotic DNA?",
        options: ["Non-coding regions", "Coding sequences for proteins", "Molecular markers for species identification", "Genes that regulate cell division"].shuffled(),
        correctAnswer: "Non-coding regions",
        explanation: "Introns are non-coding regions found in many eukaryotic genes and provide evidence of shared ancestry.",
        topic: "7.7",
        unit: 7
    ),
    PracticeQuestion(
        question: "What introduces genetic variation in a population?",
        options: ["Gene and chromosomal mutations", "Natural selection", "Gene flow", "Environmental factors"].shuffled(),
        correctAnswer: "Gene and chromosomal mutations",
        explanation: "Gene and chromosomal mutations introduce genetic variation, which drives evolutionary change.",
        topic: "7.8",
        unit: 7
    ),
    PracticeQuestion(
        question: "What role does meiosis play in genetic change?",
        options: ["It creates genetic diversity", "It stabilizes allele frequencies", "It eliminates mutations", "It restricts genetic variation"].shuffled(),
        correctAnswer: "It creates genetic diversity",
        explanation: "Meiosis and recombination create genetic diversity, which is essential for evolution.",
        topic: "7.8",
        unit: 7
    ),
    PracticeQuestion(
        question: "What drives genetic adaptations in populations?",
        options: ["Environmental disruptions", "Population size", "Gene flow", "Mating patterns"].shuffled(),
        correctAnswer: "Environmental disruptions",
        explanation: "Environmental disruptions can drive genetic adaptations and evolution in species.",
        topic: "7.8",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does the fossil record show about evolution?",
        options: ["Gradual species change over time", "Instantaneous species change", "Changes in genetic sequences", "External influences on genetics"].shuffled(),
        correctAnswer: "Gradual species change over time",
        explanation: "Fossils provide evidence of gradual changes in species over time, supporting the theory of evolution.",
        topic: "7.8",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is pathogen evolution evidence of?",
        options: ["Ongoing evolution", "Genetic stability", "Lack of environmental influence", "Immune resistance"].shuffled(),
        correctAnswer: "Ongoing evolution",
        explanation: "Pathogens evolve rapidly to adapt to host defenses and treatments, showing evidence of ongoing evolution.",
        topic: "7.8",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is phylogeny the study of?",
        options: ["Evolutionary relationships", "Genetic mutations", "Species distribution", "Genetic drift"].shuffled(),
        correctAnswer: "Evolutionary relationships",
        explanation: "Phylogeny studies the evolutionary history and connections between species.",
        topic: "7.9",
        unit: 7
    ),
    PracticeQuestion(
        question: "What do phylogenetic trees show?",
        options: ["Common ancestry and divergence", "Geographical distribution", "Behavioral traits", "Population size"].shuffled(),
        correctAnswer: "Common ancestry and divergence",
        explanation: "Phylogenetic trees illustrate evolutionary relationships and divergence among species.",
        topic: "7.9",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is the purpose of a cladogram?",
        options: ["To show shared derived traits", "To show time of divergence", "To track migration patterns", "To show population size"].shuffled(),
        correctAnswer: "To show shared derived traits",
        explanation: "Cladograms group organisms based on shared derived characteristics, not time.",
        topic: "7.9",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is an out-group used for in cladistics?",
        options: ["To determine ancestral and derived traits", "To represent the oldest species", "To identify species mutations", "To show extinct organisms"].shuffled(),
        correctAnswer: "To determine ancestral and derived traits",
        explanation: "An out-group helps determine which traits are ancestral or derived in a cladogram.",
        topic: "7.9",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does a node in a phylogenetic tree represent?",
        options: ["A common ancestor", "A newly evolved species", "A species extinction event", "A random genetic mutation"].shuffled(),
        correctAnswer: "A common ancestor",
        explanation: "A node represents the common ancestor from which species diverged in a phylogenetic tree.",
        topic: "7.9",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is a derived character in a phylogenetic tree?",
        options: ["A trait unique to a clade", "A mutation occurring in a single species", "A trait shared by all species", "A characteristic of extinct species"].shuffled(),
        correctAnswer: "A trait unique to a clade",
        explanation: "Derived characters are traits unique to a clade and help define evolutionary branches in trees.",
        topic: "7.9",
        unit: 7
    ),
    PracticeQuestion(
        question: "How are cladograms constructed?",
        options: ["By using shared derived traits", "By analyzing genetic sequences", "By tracking species migration", "By measuring physical size differences"].shuffled(),
        correctAnswer: "By using shared derived traits",
        explanation: "Cladograms are built by grouping organisms based on shared derived characteristics.",
        topic: "7.9",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is speciation?",
        options: ["Formation of new species", "Mating between different species", "Mutation in a single species", "Natural selection in a population"].shuffled(),
        correctAnswer: "Formation of new species",
        explanation: "Speciation occurs when populations diverge and become reproductively isolated.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "Where does speciation occur?",
        options: ["In isolated or overlapping populations", "In populations with identical genes", "In a single environment", "Only in isolated populations"].shuffled(),
        correctAnswer: "In isolated or overlapping populations",
        explanation: "Speciation can occur in different environments or within the same area.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What results from speciation?",
        options: ["Genetically distinct species", "Increased genetic flow", "Similar genetic makeup", "Hybrid species"].shuffled(),
        correctAnswer: "Genetically distinct species",
        explanation: "Over time, genetic divergence leads to the emergence of new species.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is reproductive isolation?",
        options: ["Prevents gene flow between populations", "Leads to mutations", "Increases hybridization", "Involves random mating"].shuffled(),
        correctAnswer: "Prevents gene flow between populations",
        explanation: "Reproductive isolation maintains species boundaries by preventing interbreeding.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What do biological barriers prevent?",
        options: ["Interbreeding successfully", "Species extinction", "Natural selection", "Gene mutations"].shuffled(),
        correctAnswer: "Interbreeding successfully",
        explanation: "Reproductive barriers keep species separate and maintain genetic distinctions.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is the role of prezygotic barriers?",
        options: ["Prevent fertilization", "Increase hybrid fitness", "Allow gene flow", "Promote genetic drift"].shuffled(),
        correctAnswer: "Prevent fertilization",
        explanation: "Prezygotic barriers stop different species from mating or forming zygotes.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is habitat isolation?",
        options: ["Species live in different environments", "Species breed at different times", "Species exhibit different courtship behaviors", "Species have incompatible reproductive organs"].shuffled(),
        correctAnswer: "Species live in different environments",
        explanation: "Habitat isolation prevents closely related species from encountering each other.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does temporal isolation result in?",
        options: ["Species reproduce at different times", "Species are physically separated", "Species share similar behaviors", "Species adapt to the same environment"].shuffled(),
        correctAnswer: "Species reproduce at different times",
        explanation: "Temporal isolation occurs when mating seasons do not overlap.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is behavioral isolation?",
        options: ["Differences in mating behaviors", "Differences in habitat", "Physical separation", "Genetic mutations"].shuffled(),
        correctAnswer: "Differences in mating behaviors",
        explanation: "Unique courtship behaviors prevent interbreeding between species.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does mechanical isolation involve?",
        options: ["Incompatible reproductive structures", "Timing of reproductive events", "Differences in genetic makeup", "Habitat separation"].shuffled(),
        correctAnswer: "Incompatible reproductive structures",
        explanation: "Mechanical isolation prevents mating due to physical differences.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does gamete isolation prevent?",
        options: ["Incompatible sperm and egg", "Different mating seasons", "Genetic drift", "Natural selection"].shuffled(),
        correctAnswer: "Incompatible sperm and egg",
        explanation: "Gamete isolation prevents fertilization due to molecular differences.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What do postzygotic barriers prevent?",
        options: ["Hybrid viability or fertility", "Species from diverging", "Mating behavior differences", "Fertilization events"].shuffled(),
        correctAnswer: "Hybrid viability or fertility",
        explanation: "Postzygotic barriers lead to weak or infertile offspring.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is hybrid inviability?",
        options: ["Hybrid fails to develop or survive", "Hybrid is infertile", "Hybrid breeds successfully", "Hybrid has genetic mutations"].shuffled(),
        correctAnswer: "Hybrid fails to develop or survive",
        explanation: "Genetic incompatibilities cause hybrids to die early or not form properly.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is hybrid sterility?",
        options: ["Hybrid cannot reproduce", "Hybrid is inviable", "Hybrid is genetically identical to parents", "Hybrid shows rapid evolution"].shuffled(),
        correctAnswer: "Hybrid cannot reproduce",
        explanation: "Hybrid sterility prevents gene flow by producing infertile offspring.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is hybrid breakdown?",
        options: ["Weak or sterile later generations", "Increased genetic diversity", "Formation of new species", "Increased fitness in hybrids"].shuffled(),
        correctAnswer: "Weak or sterile later generations",
        explanation: "Hybrid breakdown leads to unfit descendants over multiple generations.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is allopatric speciation?",
        options: ["Speciation due to geographic separation", "Speciation due to behavioral changes", "Speciation within the same location", "Speciation due to climate change"].shuffled(),
        correctAnswer: "Speciation due to geographic separation",
        explanation: "Physical barriers prevent gene flow, leading to divergence.",
        topic: "7.10",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is extinction?",
        options: ["Permanent loss of a species", "Decrease in population size", "Increase in species variety", "Temporary species disappearance"].shuffled(),
        correctAnswer: "Permanent loss of a species",
        explanation: "Extinction occurs when a species can no longer survive or reproduce.",
        topic: "7.11",
        unit: 7
    ),
    PracticeQuestion(
        question: "What causes ecological stress?",
        options: ["Environmental changes affecting survival", "Migration of species", "Genetic mutations", "Increase in population size"].shuffled(),
        correctAnswer: "Environmental changes affecting survival",
        explanation: "Ecological stress, like resource scarcity, can lead to population decline.",
        topic: "7.11",
        unit: 7
    ),
    PracticeQuestion(
        question: "What role does human activity play in extinction?",
        options: ["Causes environmental changes", "Increases biodiversity", "Promotes habitat restoration", "Limits resource use"].shuffled(),
        correctAnswer: "Causes environmental changes",
        explanation: "Deforestation, pollution, and hunting contribute to species extinction.",
        topic: "7.11",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is habitat loss?",
        options: ["Destruction of living spaces", "Increased population density", "Expansion of protected areas", "Migration of species"].shuffled(),
        correctAnswer: "Destruction of living spaces",
        explanation: "Deforestation and urbanization reduce habitats, endangering species.",
        topic: "7.11",
        unit: 7
    ),
    PracticeQuestion(
        question: "What impact does climate change have on species?",
        options: ["Long-term shifts in temperature", "Species adaptation to new environments", "Increased biodiversity", "Reduction in natural disasters"].shuffled(),
        correctAnswer: "Long-term shifts in temperature",
        explanation: "Rising temperatures and extreme weather threaten species' survival.",
        topic: "7.11",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is pollution?",
        options: ["Harmful substances in ecosystems", "Increase in available resources", "Improvement of habitat conditions", "Increase in population diversity"].shuffled(),
        correctAnswer: "Harmful substances in ecosystems",
        explanation: "Pollution contaminates air, water, and land, impacting biodiversity.",
        topic: "7.11",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does habitat degradation mean?",
        options: ["Decline in habitat quality", "Increase in habitat size", "Improvement in biodiversity", "Decreased species competition"].shuffled(),
        correctAnswer: "Decline in habitat quality",
        explanation: "Pollution, invasive species, and deforestation reduce habitat viability.",
        topic: "7.11",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is a niche?",
        options: ["Organism's role in an ecosystem", "Physical location of a species", "Amount of resources used", "Species' reproductive cycle"].shuffled(),
        correctAnswer: "Organism's role in an ecosystem",
        explanation: "A niche includes an organism's habitat, diet, and interactions.",
        topic: "7.11",
        unit: 7
    ),
    PracticeQuestion(
        question: "What does poaching threaten?",
        options: ["Endangered species", "Invasive species", "Species with high reproduction rates", "Species with low genetic variation"].shuffled(),
        correctAnswer: "Endangered species",
        explanation: "Poaching threatens endangered species by reducing their populations.",
        topic: "7.11",
        unit: 7
    ),
    PracticeQuestion(
        question: "What is variation in a population?",
        options: ["Differences among individuals in a population", "Similarities among individuals", "Equal genetic makeup", "Changes in population size"].shuffled(),
        correctAnswer: "Differences among individuals in a population",
        explanation: "Variation arises from mutations, genetic recombination, and environmental factors.",
        topic: "7.12",
        unit: 7
    ),
    PracticeQuestion(
        question: "What are communication mechanisms?",
        options: ["Visual, audible, tactile, electrical, chemical", "Hearing, seeing, smelling", "Verbal, non-verbal", "Signs, symbols, signals"].shuffled(),
        correctAnswer: "Visual, audible, tactile, electrical, chemical",
        explanation: "Organisms use various communication methods to interact with their environment.",
        topic: "8.1",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are the uses of communication mechanisms?",
        options: ["Find food, establish territory, ensure reproductive success", "Signal predators", "Protect territory", "Defend against environmental threats"].shuffled(),
        correctAnswer: "Find food, establish territory, ensure reproductive success",
        explanation: "These mechanisms help organisms navigate their social and ecological environments.",
        topic: "8.1",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are innate behaviors?",
        options: ["Genetically programmed, instinctive actions", "Learned through experience", "Cultural behaviors", "Social behaviors"].shuffled(),
        correctAnswer: "Genetically programmed, instinctive actions",
        explanation: "Innate behaviors are inherited and occur without prior learning.",
        topic: "8.1",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are learned behaviors?",
        options: ["Acquired through experience and interaction", "Inherited through genetics", "Instinctual", "Culturally transmitted"].shuffled(),
        correctAnswer: "Acquired through experience and interaction",
        explanation: "Learned behaviors are shaped by an organism's interactions with its environment.",
        topic: "8.1",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are cooperative behaviors?",
        options: ["Working together for mutual benefit", "Self-preserving actions", "Aggressive behaviors", "Avoidance behaviors"].shuffled(),
        correctAnswer: "Working together for mutual benefit",
        explanation: "Cooperative behaviors enhance survival and reproductive success through collaboration.",
        topic: "8.1",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are warning traits?",
        options: ["Signal danger or unpalatability", "Attract mates", "Attract predators", "Aid in migration"].shuffled(),
        correctAnswer: "Signal danger or unpalatability",
        explanation: "Warning traits, like bright colors, deter predators by signaling toxicity or danger.",
        topic: "8.1",
        unit: 8
    ),
    PracticeQuestion(
        question: "How do organisms regulate body temperature and metabolism?",
        options: ["Behavioral, physiological, and morphological adaptations", "External environment only", "Environmental regulation", "Energy intake"].shuffled(),
        correctAnswer: "Behavioral, physiological, and morphological adaptations",
        explanation: "Organisms regulate temperature and metabolism through various strategies to survive.",
        topic: "8.2",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is metabolic rate?",
        options: ["Energy used by an organism per unit of time", "Energy stored by an organism", "The rate of reproduction", "The rate of survival"].shuffled(),
        correctAnswer: "Energy used by an organism per unit of time",
        explanation: "Metabolic rate determines how much energy an organism consumes to maintain life.",
        topic: "8.2",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is net gain in energy?",
        options: ["Energy storage or growth", "Energy loss", "Energy used for reproduction", "Energy lost in metabolism"].shuffled(),
        correctAnswer: "Energy storage or growth",
        explanation: "Net gain refers to energy accumulated for future use or increased biomass.",
        topic: "8.2",
        unit: 8
    ),
    PracticeQuestion(
        question: "The smaller the organism...",
        options: ["The higher the metabolic rate", "The lower the metabolic rate", "The more energy it requires", "The more it can store energy"].shuffled(),
        correctAnswer: "The higher the metabolic rate",
        explanation: "Smaller organisms typically require more energy per unit of body mass.",
        topic: "8.2",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is a trophic level?",
        options: ["Position in a food chain or web", "Energy level", "Reproductive level", "Survival level"].shuffled(),
        correctAnswer: "Position in a food chain or web",
        explanation: "Trophic levels represent the feeding relationships and energy flow through ecosystems.",
        topic: "8.2",
        unit: 8
    ),
    PracticeQuestion(
        question: "How does energy availability affect ecosystems?",
        options: ["Impact population size and ecosystem dynamics", "Increase species variety", "Increase reproductive success", "Reduce competition"].shuffled(),
        correctAnswer: "Impact population size and ecosystem dynamics",
        explanation: "Fluctuations in energy availability can cause shifts in species abundance and behavior.",
        topic: "8.2",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is a food chain?",
        options: ["Linear sequence of energy transfer", "Branching sequence of energy transfer", "Network of interrelated species", "System of predator-prey interactions"].shuffled(),
        correctAnswer: "Linear sequence of energy transfer",
        explanation: "A food chain illustrates the flow of energy from one organism to another.",
        topic: "8.2",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are food webs?",
        options: ["Complex network of interrelated food chains", "Single food chain", "System of predator-prey relationships", "Energy flow diagrams"].shuffled(),
        correctAnswer: "Complex network of interrelated food chains",
        explanation: "Food webs show how energy flows through interconnected species within an ecosystem.",
        topic: "8.2",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are autotrophs?",
        options: ["Organisms that produce their own food", "Organisms that consume other organisms", "Organisms that decompose matter", "Organisms that rely on others for food"].shuffled(),
        correctAnswer: "Organisms that produce their own food",
        explanation: "Autotrophs, like plants, convert sunlight into chemical energy via photosynthesis.",
        topic: "8.2",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are heterotrophs?",
        options: ["Organisms that consume other organisms", "Organisms that produce their own food", "Organisms that recycle nutrients", "Organisms that live off dead matter"].shuffled(),
        correctAnswer: "Organisms that consume other organisms",
        explanation: "Heterotrophs depend on autotrophs or other heterotrophs for energy.",
        topic: "8.2",
        unit: 8
    ),
    PracticeQuestion(
        question: "What defines a population?",
        options: ["Group of individuals of the same species", "Group of different species", "Individual organisms", "Organisms of the same age group"].shuffled(),
        correctAnswer: "Group of individuals of the same species",
        explanation: "A population consists of individuals that live in the same area and interact.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "How does food availability affect population growth?",
        options: ["More food supports higher population growth", "More food reduces competition", "More food causes higher death rates", "Less food increases reproductive success"].shuffled(),
        correctAnswer: "More food supports higher population growth",
        explanation: "Increased food availability leads to better survival and reproduction rates.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are adaptations to energy availability?",
        options: ["Efficiency in energy use and storage", "More food intake", "Increased energy waste", "Slower metabolism"].shuffled(),
        correctAnswer: "Efficiency in energy use and storage",
        explanation: "Adaptations help organisms maximize energy use for survival and reproduction.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What factors affect population growth?",
        options: ["Environmental factors, resources, and interactions", "Only food availability", "Reproductive rate only", "Climate change only"].shuffled(),
        correctAnswer: "Environmental factors, resources, and interactions",
        explanation: "Environmental factors, resources, and interactions influence population dynamics.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is age at reproductive maturity?",
        options: ["Age when an organism can reproduce", "Age when an organism dies", "Age when an organism grows the most", "Age when an organism develops social behaviors"].shuffled(),
        correctAnswer: "Age when an organism can reproduce",
        explanation: "Earlier reproductive maturity can accelerate population growth.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "How does the number of offspring produced affect population growth?",
        options: ["Determines the rate of population growth", "Has no impact on population size", "Reduces the growth rate", "Affects the migration patterns"].shuffled(),
        correctAnswer: "Determines the rate of population growth",
        explanation: "Higher offspring numbers can lead to faster population expansion.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is the frequency of reproduction?",
        options: ["How often organisms reproduce", "How many offspring are born", "How long organisms live", "How often organisms migrate"].shuffled(),
        correctAnswer: "How often organisms reproduce",
        explanation: "Frequent reproduction increases population size over time.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What determines long-term population growth?",
        options: ["Survivorship of offspring to reproductive maturity", "Food availability", "Predation rates", "Habitat size"].shuffled(),
        correctAnswer: "Survivorship of offspring to reproductive maturity",
        explanation: "Higher survival rates increase the likelihood of reproductive success.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is the population growth equation?",
        options: ["dN/dt = B - D", "dN/dt = N*rmax", "B - D = N", "dN/dt = B + D"].shuffled(),
        correctAnswer: "dN/dt = B - D",
        explanation: "The equation describes the rate of population change over time.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does dN represent in the population growth equation?",
        options: ["Change in population size", "Rate of reproduction", "Death rate", "Time interval"].shuffled(),
        correctAnswer: "Change in population size",
        explanation: "dN represents the difference in population size between time intervals.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does dt represent in the population growth equation?",
        options: ["Change in time", "Change in population size", "Rate of death", "Rate of reproduction"].shuffled(),
        correctAnswer: "Change in time",
        explanation: "dt represents the time period over which population change is measured.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does B represent in the population growth equation?",
        options: ["Birth rate", "Death rate", "Population size", "Time interval"].shuffled(),
        correctAnswer: "Birth rate",
        explanation: "B is the number of births per time period.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does D represent in the population growth equation?",
        options: ["Death rate", "Population size", "Birth rate", "Time period"].shuffled(),
        correctAnswer: "Death rate",
        explanation: "D is the number of deaths per time period.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is exponential growth?",
        options: ["Rapid population increase under ideal conditions", "Gradual population increase", "Constant population size", "Rapid decline in population size"].shuffled(),
        correctAnswer: "Rapid population increase under ideal conditions",
        explanation: "Exponential growth occurs when resources are unlimited and growth is unrestricted.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What leads to exponential growth in population?",
        options: ["Unlimited resources and favorable conditions", "Predator introduction", "Limited food supply", "Environmental stress"].shuffled(),
        correctAnswer: "Unlimited resources and favorable conditions",
        explanation: "Exponential growth happens when resources are abundant, and competition is minimal.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is the exponential growth equation?",
        options: ["dN/dt = N*rmax", "dN/dt = B - D", "dN/dt = N/D", "N = rmax * dN/dt"].shuffled(),
        correctAnswer: "dN/dt = N*rmax",
        explanation: "This equation shows the rate of exponential population growth.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does N represent in the exponential growth equation?",
        options: ["Population size", "Birth rate", "Time period", "Death rate"].shuffled(),
        correctAnswer: "Population size",
        explanation: "N represents the current population number in the exponential growth equation.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is rmax in the exponential growth equation?",
        options: ["Maximum per capita growth rate", "Maximum birth rate", "Population size", "Death rate"].shuffled(),
        correctAnswer: "Maximum per capita growth rate",
        explanation: "rmax is the highest possible growth rate under ideal conditions.",
        topic: "8.3",
        unit: 8
    ),
    PracticeQuestion(
        question: "What impacts population density?",
        options: ["Resource availability", "Reproductive rate", "Predator presence", "Climate change"].shuffled(),
        correctAnswer: "Resource availability",
        explanation: "Limited resources reduce population density, while abundant resources support higher density.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are density-dependent factors?",
        options: ["Competition, territoriality, disease, predation", "Natural disasters", "Temperature fluctuations", "Genetic mutations"].shuffled(),
        correctAnswer: "Competition, territoriality, disease, predation",
        explanation: "These factors impact populations more as density increases, affecting survival and reproduction.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are density-independent factors?",
        options: ["Natural disasters", "Competition and disease", "Invasive species", "Predation"].shuffled(),
        correctAnswer: "Natural disasters",
        explanation: "These factors affect population size regardless of density, such as hurricanes or wildfires.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does the logistic growth model describe?",
        options: ["Population growth slows as it approaches carrying capacity", "Exponential growth in ideal conditions", "Population decline due to competition", "Population growth based on immigration rate"].shuffled(),
        correctAnswer: "Population growth slows as it approaches carrying capacity",
        explanation: "In the logistic model, growth initially is exponential but slows as resources become limited.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is carrying capacity?",
        options: ["Maximum population size an environment can support", "The rate at which a population grows", "The space required for organisms to thrive", "The number of offspring produced per individual"].shuffled(),
        correctAnswer: "Maximum population size an environment can support",
        explanation: "Carrying capacity is determined by resource availability and environmental factors.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is the logistic growth equation?",
        options: ["dN/dt = (N * rmax)((K-N)/K)", "dN/dt = N * rmax", "dN/dt = B - D", "dN/dt = N * K"].shuffled(),
        correctAnswer: "dN/dt = (N * rmax)((K-N)/K)",
        explanation: "This equation models population growth with environmental limits and carrying capacity.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does dN represent in the logistic growth equation?",
        options: ["Change in population size", "Change in time", "Growth rate", "Carrying capacity"].shuffled(),
        correctAnswer: "Change in population size",
        explanation: "dN represents the difference in population size over time.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does dt represent in population growth equations?",
        options: ["Change in time", "Change in population size", "Population growth rate", "Carrying capacity"].shuffled(),
        correctAnswer: "Change in time",
        explanation: "dt represents the time period over which population change is measured.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does N represent in population equations?",
        options: ["Population size", "Carrying capacity", "Growth rate", "Number of births"].shuffled(),
        correctAnswer: "Population size",
        explanation: "N represents the number of individuals in the population at a given time.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does K represent in population growth models?",
        options: ["Carrying capacity", "Population size", "Growth rate", "Number of offspring"].shuffled(),
        correctAnswer: "Carrying capacity",
        explanation: "K is the maximum population size that the environment can sustainably support.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does rmax represent in the logistic growth model?",
        options: ["Maximum per capita growth rate", "Population size", "Rate of immigration", "Carrying capacity"].shuffled(),
        correctAnswer: "Maximum per capita growth rate",
        explanation: "rmax is the highest rate of growth that the population can achieve under ideal conditions.",
        topic: "8.4",
        unit: 8
    ),
    PracticeQuestion(
        question: "What defines a community in ecology?",
        options: ["All species living in an area", "A single species in an ecosystem", "Only plants in a specific area", "Species that interact through predation"].shuffled(),
        correctAnswer: "All species living in an area",
        explanation: "A community consists of interacting species in a specific habitat.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is species diversity?",
        options: ["Variety of species in an area", "Number of individuals in a species", "Presence of only dominant species", "Species richness alone"].shuffled(),
        correctAnswer: "Variety of species in an area",
        explanation: "Species diversity includes both species richness and evenness in an ecosystem.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does species composition refer to?",
        options: ["Types and abundance of species", "Only the number of individuals", "Species richness", "Ecological niches of species"].shuffled(),
        correctAnswer: "Types and abundance of species",
        explanation: "Species composition refers to the specific species present and their relative abundance.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does Simpson's diversity index measure?",
        options: ["Diversity in a community", "Population growth rate", "Species competition", "Habitat preference of species"].shuffled(),
        correctAnswer: "Diversity in a community",
        explanation: "This index measures the diversity in a community, accounting for both richness and evenness.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does 'n' represent in Simpson's diversity index?",
        options: ["Total number of organisms of a particular species", "Total number of species", "Total biomass in an ecosystem", "Carrying capacity of the ecosystem"].shuffled(),
        correctAnswer: "Total number of organisms of a particular species",
        explanation: "n represents the number of individuals of a given species in the community.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What does 'N' represent in Simpson's diversity index?",
        options: ["Total number of organisms of all species", "Total number of species", "Number of interactions between species", "Total population growth rate"].shuffled(),
        correctAnswer: "Total number of organisms of all species",
        explanation: "N represents the total population of all species within the community.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What defines mutualism?",
        options: ["Both species benefit", "One species benefits, the other is unaffected", "One species benefits, the other is harmed", "Species share resources"].shuffled(),
        correctAnswer: "Both species benefit",
        explanation: "In mutualism, both species involved gain benefits from the interaction.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is commensalism?",
        options: ["One species benefits, other is unaffected", "Both species benefit", "One species benefits, the other is harmed", "Species share a common habitat"].shuffled(),
        correctAnswer: "One species benefits, other is unaffected",
        explanation: "Commensalism benefits one species while the other is neither helped nor harmed.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What happens in a predator-prey interaction?",
        options: ["One benefits, the other is harmed", "Both benefit", "Both are harmed", "Neither species is affected"].shuffled(),
        correctAnswer: "One benefits, the other is harmed",
        explanation: "Predator-prey interactions involve one species hunting and consuming another.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What defines parasitism?",
        options: ["One benefits, the other is harmed", "Both species benefit", "One benefits, the other is unaffected", "Species share resources"].shuffled(),
        correctAnswer: "One benefits, the other is harmed",
        explanation: "In parasitism, the parasite benefits at the expense of the host.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is a trophic cascade?",
        options: ["Effects spread through the food chain", "Only occurs in top predators", "Involves plant growth", "Occurs only in marine ecosystems"].shuffled(),
        correctAnswer: "Effects spread through the food chain",
        explanation: "A trophic cascade occurs when changes at one trophic level affect others.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is niche partitioning?",
        options: ["Species divide resources to avoid competition", "Species compete for the same resources", "Species form symbiotic relationships", "Species migrate to new areas"].shuffled(),
        correctAnswer: "Species divide resources to avoid competition",
        explanation: "Niche partitioning helps species coexist by using different resources or habitats.",
        topic: "8.5",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is ecosystem diversity?",
        options: ["Related to resilience to environmental changes", "The number of species in an ecosystem", "The amount of primary productivity", "The presence of keystone species"].shuffled(),
        correctAnswer: "Related to resilience to environmental changes",
        explanation: "Greater ecosystem diversity increases resilience to disturbances like climate change.",
        topic: "8.6",
        unit: 8
    ),
    PracticeQuestion(
        question: "What factors help maintain ecosystem diversity?",
        options: ["Abiotic and biotic factors", "Only abiotic factors", "Only biotic factors", "Temperature and precipitation"].shuffled(),
        correctAnswer: "Abiotic and biotic factors",
        explanation: "Abiotic and biotic factors interact to support diverse species and ecological functions.",
        topic: "8.6",
        unit: 8
    ),
    PracticeQuestion(
        question: "What role do dominant predators play in an ecosystem?",
        options: ["Help keep prey populations under control", "Increase prey diversity", "Decrease ecosystem stability", "Encourage habitat destruction"].shuffled(),
        correctAnswer: "Help keep prey populations under control",
        explanation: "Dominant predators regulate prey populations, maintaining ecological balance.",
        topic: "8.6",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are keystone species?",
        options: ["Species crucial for ecosystem stability", "Only top predators", "Species with high reproductive rates", "Species with large populations"].shuffled(),
        correctAnswer: "Species crucial for ecosystem stability",
        explanation: "Keystone species have a disproportionate impact on their ecosystem relative to their abundance.",
        topic: "8.6",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is adaptation in ecology?",
        options: ["A species' adjustment to environment", "A random genetic mutation", "Species migration", "Loss of biodiversity"].shuffled(),
        correctAnswer: "A species' adjustment to environment",
        explanation: "Adaptation helps organisms survive by improving fitness in their environment.",
        topic: "8.7",
        unit: 8
    ),
    PracticeQuestion(
        question: "What do mutations lead to?",
        options: ["Genetic changes affecting traits", "Species migration", "Environmental changes", "Resource distribution changes"].shuffled(),
        correctAnswer: "Genetic changes affecting traits",
        explanation: "Mutations introduce genetic variation, which can lead to adaptation or disruption.",
        topic: "8.7",
        unit: 8
    ),
    PracticeQuestion(
        question: "What are invasive species?",
        options: ["Non-native species harming ecosystems", "Native species adapting to new environments", "Species thriving in stable ecosystems", "Species with high genetic diversity"].shuffled(),
        correctAnswer: "Non-native species harming ecosystems",
        explanation: "Invasive species can outcompete native species and disrupt ecosystem balance.",
        topic: "8.7",
        unit: 8
    ),
    PracticeQuestion(
        question: "How does distribution change over time?",
        options: ["It shifts due to environmental changes", "It remains fixed", "It increases with population size", "It only changes due to migration"].shuffled(),
        correctAnswer: "It shifts due to environmental changes",
        explanation: "Species' distribution can change based on climate, resources, and competition.",
        topic: "8.7",
        unit: 8
    ),
    PracticeQuestion(
        question: "What is the result of natural selection?",
        options: ["Better-adapted individuals survive and reproduce", "Random individuals are selected", "All species become equally adapted", "Environmental factors have no impact"].shuffled(),
        correctAnswer: "Better-adapted individuals survive and reproduce",
        explanation: "Natural selection favors traits that enhance survival and reproductive success.",
        topic: "8.7",
        unit: 8
    ),
    PracticeQuestion(
        question: "Where do the light reactions occur?",
        options: ["Mitochondria", "Stroma", "Thylakoid membrane", "Cytoplasm"].shuffled(),
        correctAnswer: "Thylakoid membrane",
        explanation: "The light reactions take place in the thylakoid membrane of the chloroplast, where light energy is converted into chemical energy.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the main function of the light reactions?",
        options: ["Produce glucose", "Generate oxygen", "Convert light energy into chemical energy", "Fix carbon dioxide"].shuffled(),
        correctAnswer: "Convert light energy into chemical energy",
        explanation: "The light reactions convert light energy into chemical energy in the form of ATP and NADPH, which are used in the Calvin cycle.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What molecule is split during the light reactions?",
        options: ["Glucose", "Water", "Oxygen", "Carbon dioxide"].shuffled(),
        correctAnswer: "Water",
        explanation: "Water is split into oxygen, protons, and electrons during the light reactions, providing the electrons for the electron transport chain.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the role of NADP+ in the light reactions?",
        options: ["Accepts electrons and hydrogen ions", "Releases energy to make ATP", "Splits water molecules", "Transports oxygen"].shuffled(),
        correctAnswer: "Accepts electrons and hydrogen ions",
        explanation: "NADP+ accepts electrons and hydrogen ions during the light reactions to form NADPH, which is used in the Calvin cycle.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the end product of the light reactions?",
        options: ["Glucose", "ATP and NADPH", "Oxygen", "Water"].shuffled(),
        correctAnswer: "ATP and NADPH",
        explanation: "The light reactions produce ATP and NADPH, which provide the energy and reducing power for the Calvin cycle.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the role of the electron transport chain in the light reactions?",
        options: ["Generate oxygen", "Pump protons into the thylakoid space", "Convert light energy into ATP", "Fix carbon dioxide"].shuffled(),
        correctAnswer: "Pump protons into the thylakoid space",
        explanation: "The electron transport chain pumps protons into the thylakoid space, creating a proton gradient used to generate ATP.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the source of electrons in the light reactions?",
        options: ["Carbon dioxide", "Water", "Oxygen", "Glucose"].shuffled(),
        correctAnswer: "Water",
        explanation: "Electrons are provided by the splitting of water molecules during the light reactions, which also produces oxygen as a byproduct.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What happens to oxygen during the light reactions?",
        options: ["It is used to form glucose", "It is released as a byproduct", "It is absorbed by the plant", "It is converted to NADPH"].shuffled(),
        correctAnswer: "It is released as a byproduct",
        explanation: "Oxygen is released as a byproduct of the splitting of water molecules during the light reactions.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "Which of the following is not produced in the light reactions?",
        options: ["ATP", "Oxygen", "Glucose", "NADPH"].shuffled(),
        correctAnswer: "Glucose",
        explanation: "Glucose is not produced in the light reactions; it is produced later in the Calvin cycle using the ATP and NADPH generated by the light reactions.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What role does the proton gradient play in the light reactions?",
        options: ["Drives the production of ATP", "Fixes carbon dioxide", "Transfers electrons", "Generates oxygen"].shuffled(),
        correctAnswer: "Drives the production of ATP",
        explanation: "The proton gradient created by the electron transport chain drives ATP production through ATP synthase during the light reactions.",
        topic: "9.1",
        unit: 9
    ),
    PracticeQuestion(
        question: "What happens to NADPH after the light reactions?",
        options: ["It is used in the Calvin cycle", "It is broken down to release energy", "It is converted into glucose", "It is recycled into NADP+"].shuffled(),
        correctAnswer: "It is used in the Calvin cycle",
        explanation: "NADPH provides the electrons needed for the reduction phase of the Calvin cycle, where carbon dioxide is converted into organic compounds.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the function of photosystem II in the light reactions?",
        options: ["Absorbs light and splits water", "Transports electrons to NADP+", "Synthesis of ATP", "Stores energy in glucose"].shuffled(),
        correctAnswer: "Absorbs light and splits water",
        explanation: "Photosystem II absorbs light energy and uses it to split water molecules, releasing electrons, protons, and oxygen.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the purpose of the light-harvesting complex?",
        options: ["To capture light energy", "To split water molecules", "To produce ATP", "To form NADPH"].shuffled(),
        correctAnswer: "To capture light energy",
        explanation: "The light-harvesting complex collects light energy and transfers it to the reaction center of photosystem II.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "Which of the following processes is not part of the light reactions?",
        options: ["Electron transport chain", "ATP synthesis", "Carbon fixation", "Water splitting"].shuffled(),
        correctAnswer: "Carbon fixation",
        explanation: "Carbon fixation occurs in the Calvin cycle, not during the light reactions, which focus on energy capture and storage in ATP and NADPH.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "How does ATP synthase produce ATP in the light reactions?",
        options: ["By transferring electrons to NADP+", "By using the proton gradient", "By splitting water molecules", "By fixing carbon dioxide"].shuffled(),
        correctAnswer: "By using the proton gradient",
        explanation: "ATP synthase uses the proton gradient established by the electron transport chain to synthesize ATP from ADP and inorganic phosphate.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the role of the thylakoid membrane in the light reactions?",
        options: ["Where light energy is absorbed", "Where carbon dioxide is fixed", "Where oxygen is produced", "Where glucose is synthesized"].shuffled(),
        correctAnswer: "Where light energy is absorbed",
        explanation: "The thylakoid membrane houses the photosystems, electron transport chain, and ATP synthase, which are involved in capturing light energy and converting it into chemical energy.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the function of the chlorophyll molecule in photosynthesis?",
        options: ["Absorbs light energy", "Generates ATP", "Fixes carbon dioxide", "Synthesizes glucose"].shuffled(),
        correctAnswer: "Absorbs light energy",
        explanation: "Chlorophyll absorbs light energy, primarily in the blue and red wavelengths, and uses it to power the light reactions of photosynthesis.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the role of photosystem I in the light reactions?",
        options: ["Transports electrons to NADP+", "Splits water molecules", "Generates ATP", "Captures light energy to split carbon dioxide"].shuffled(),
        correctAnswer: "Transports electrons to NADP+",
        explanation: "Photosystem I absorbs light energy to excite electrons, which are then transferred to NADP+ to form NADPH, which is used in the Calvin cycle.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the role of water in the light reactions?",
        options: ["Provides electrons to the electron transport chain", "Synthesizes glucose", "Absorbs light energy", "Produces oxygen"].shuffled(),
        correctAnswer: "Provides electrons to the electron transport chain",
        explanation: "Water is split during the light reactions to provide electrons for the electron transport chain, releasing oxygen as a byproduct.",
        topic: "9.1",
        unit: 9
    ),

    PracticeQuestion(
        question: "Which molecule is produced as a byproduct of the light reactions?",
        options: ["Oxygen", "Glucose", "Carbon dioxide", "Water"].shuffled(),
        correctAnswer: "Oxygen",
        explanation: "Oxygen is released as a byproduct during the splitting of water molecules in the light reactions of photosynthesis.",
        topic: "9.1",
        unit: 9
    ),
    PracticeQuestion(
        question: "Where does the Calvin cycle occur?",
        options: ["Mitochondria", "Cytoplasm", "Stroma of the chloroplast", "Thylakoid membrane"].shuffled(),
        correctAnswer: "Stroma of the chloroplast",
        explanation: "The Calvin cycle occurs in the stroma of the chloroplast, where it uses ATP and NADPH from the light reactions to synthesize sugars.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the main purpose of the Calvin cycle?",
        options: ["To produce ATP", "To fix carbon dioxide into an organic molecule", "To generate oxygen", "To split water molecules"].shuffled(),
        correctAnswer: "To fix carbon dioxide into an organic molecule",
        explanation: "The Calvin cycle's main purpose is to fix carbon dioxide and convert it into organic compounds like glucose, using ATP and NADPH produced in the light reactions.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "Which molecule enters the Calvin cycle from the atmosphere?",
        options: ["Glucose", "Oxygen", "Carbon dioxide", "Water"].shuffled(),
        correctAnswer: "Carbon dioxide",
        explanation: "Carbon dioxide enters the Calvin cycle from the atmosphere and is incorporated into organic molecules during carbon fixation.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the first product formed when carbon dioxide is fixed in the Calvin cycle?",
        options: ["G3P", "RuBP", "Glucose", "3-PGA"].shuffled(),
        correctAnswer: "3-PGA",
        explanation: "The first product formed during the carbon fixation step of the Calvin cycle is 3-phosphoglycerate (3-PGA), after carbon dioxide is attached to RuBP.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is RuBP in the Calvin cycle?",
        options: ["A molecule that fixes carbon dioxide", "A product of the Calvin cycle", "A substrate for ATP", "A five-carbon sugar"].shuffled(),
        correctAnswer: "A five-carbon sugar",
        explanation: "RuBP (ribulose bisphosphate) is a five-carbon sugar that binds to carbon dioxide during the first step of the Calvin cycle, allowing carbon fixation to occur.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "What molecule is reduced in the Calvin cycle using NADPH?",
        options: ["G3P", "RuBP", "3-PGA", "Oxygen"].shuffled(),
        correctAnswer: "3-PGA",
        explanation: "In the Calvin cycle, 3-phosphoglycerate (3-PGA) is reduced to G3P (glyceraldehyde-3-phosphate) using the electrons from NADPH.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "How many molecules of G3P are needed to form one glucose molecule?",
        options: ["1", "3", "6", "2"].shuffled(),
        correctAnswer: "6",
        explanation: "It takes two molecules of G3P to form one glucose molecule, and six molecules of G3P are produced in the Calvin cycle for every three molecules of carbon dioxide fixed.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "What role does ATP play in the Calvin cycle?",
        options: ["To fix carbon dioxide", "To reduce 3-PGA to G3P", "To regenerate RuBP", "To release oxygen"].shuffled(),
        correctAnswer: "To regenerate RuBP",
        explanation: "ATP is used in the Calvin cycle to regenerate RuBP (ribulose bisphosphate) from G3P, enabling the cycle to continue.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "How many ATP molecules are consumed in one turn of the Calvin cycle?",
        options: ["2", "3", "6", "12"].shuffled(),
        correctAnswer: "3",
        explanation: "Three ATP molecules are consumed in one turn of the Calvin cycle to regenerate RuBP, ensuring the cycle can continue.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "What happens to the remaining G3P molecules in the Calvin cycle?",
        options: ["They are converted into glucose", "They are used to form RuBP", "They are released as oxygen", "They are exported to the cytoplasm"].shuffled(),
        correctAnswer: "They are used to form RuBP",
        explanation: "Some of the G3P molecules produced in the Calvin cycle are used to regenerate RuBP, which is required for the continuation of the cycle.",
        topic: "9.2",
        unit: 9
    ),
    PracticeQuestion(
        question: "What is the role of NADPH in the Calvin cycle?",
        options: ["To provide energy for carbon fixation", "To reduce 3-PGA to G3P", "To regenerate RuBP", "To produce oxygen"].shuffled(),
        correctAnswer: "To reduce 3-PGA to G3P",
        explanation: "NADPH provides the electrons necessary to reduce 3-phosphoglycerate (3-PGA) to glyceraldehyde-3-phosphate (G3P) in the Calvin cycle.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "Which enzyme catalyzes the fixation of carbon dioxide in the Calvin cycle?",
        options: ["ATP synthase", "Rubisco", "NADP reductase", "Cytochrome c"].shuffled(),
        correctAnswer: "Rubisco",
        explanation: "Rubisco (ribulose bisphosphate carboxylase/oxygenase) is the enzyme that catalyzes the fixation of carbon dioxide by combining it with RuBP to form 3-PGA.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "How many turns of the Calvin cycle are required to produce one glucose molecule?",
        options: ["1", "2", "3", "6"].shuffled(),
        correctAnswer: "6",
        explanation: "Six turns of the Calvin cycle are needed to produce one glucose molecule, as each turn fixes one molecule of carbon dioxide, and glucose requires six carbon atoms.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "What happens to the G3P produced in the Calvin cycle?",
        options: ["It is stored as starch", "It is converted into glucose", "It is used to regenerate RuBP", "All of the above"].shuffled(),
        correctAnswer: "All of the above",
        explanation: "G3P can be used to regenerate RuBP, be converted into glucose for energy storage, or be stored as starch in the plant cells.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the role of the enzyme ATP synthase in the Calvin cycle?",
        options: ["To convert 3-PGA to G3P", "To fix carbon dioxide", "To regenerate RuBP", "It does not play a role in the Calvin cycle"].shuffled(),
        correctAnswer: "It does not play a role in the Calvin cycle",
        explanation: "ATP synthase is not directly involved in the Calvin cycle. It is primarily involved in ATP production during the light reactions.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the molecule that is regenerated in the Calvin cycle to allow the cycle to continue?",
        options: ["RuBP", "G3P", "NADPH", "Oxygen"].shuffled(),
        correctAnswer: "RuBP",
        explanation: "RuBP (ribulose bisphosphate) is regenerated in the Calvin cycle so it can bind with carbon dioxide and continue the cycle.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "What is the primary input required for the Calvin cycle?",
        options: ["ATP", "Glucose", "Carbon dioxide", "Oxygen"].shuffled(),
        correctAnswer: "Carbon dioxide",
        explanation: "The primary input required for the Calvin cycle is carbon dioxide, which is fixed into an organic molecule during the cycle.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "How many molecules of G3P are produced for every three molecules of carbon dioxide that enter the Calvin cycle?",
        options: ["1", "2", "3", "6"].shuffled(),
        correctAnswer: "6",
        explanation: "For every three molecules of carbon dioxide that enter the Calvin cycle, six molecules of G3P are produced, although only two are used to form glucose.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "Which molecule provides the energy needed to regenerate RuBP in the Calvin cycle?",
        options: ["ATP", "NADPH", "Oxygen", "Glucose"].shuffled(),
        correctAnswer: "ATP",
        explanation: "ATP provides the energy required to regenerate RuBP from G3P in the Calvin cycle, allowing the cycle to continue.",
        topic: "9.2",
        unit: 9
    ),

    PracticeQuestion(
        question: "How is the Calvin cycle related to the light reactions?",
        options: ["It produces glucose from carbon dioxide", "It generates ATP and NADPH for the light reactions", "It converts light energy into chemical energy", "It uses the products of the light reactions, ATP and NADPH, to fix carbon dioxide into organic molecules"].shuffled(),
        correctAnswer: "It uses the products of the light reactions, ATP and NADPH, to fix carbon dioxide into organic molecules",
        explanation: "The Calvin cycle depends on the ATP and NADPH produced during the light reactions to power the synthesis of glucose from carbon dioxide.",
        topic: "9.2",
        unit: 9
    ),
    PracticeQuestion(
        question: "Where does glycolysis occur?",
        options: ["Cytoplasm", "Mitochondria", "Nucleus", "Chloroplast"].shuffled(),
        correctAnswer: "Cytoplasm",
        explanation: "Glycolysis occurs in the cytoplasm where glucose is broken down into two molecules of pyruvate.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is the main product of glycolysis?",
        options: ["ATP", "Pyruvate", "Acetyl-CoA", "Oxygen"].shuffled(),
        correctAnswer: "Pyruvate",
        explanation: "Glycolysis breaks down glucose into two molecules of pyruvate, which then enter the mitochondria for further processing.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What molecule is produced during the citric acid cycle?",
        options: ["Oxygen", "Pyruvate", "NADH", "Glucose"].shuffled(),
        correctAnswer: "NADH",
        explanation: "The citric acid cycle produces NADH by transferring electrons to NAD+ as acetyl-CoA is oxidized.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is the final electron acceptor in cellular respiration?",
        options: ["NADH", "FADH2", "Oxygen", "Glucose"].shuffled(),
        correctAnswer: "Oxygen",
        explanation: "Oxygen is the final electron acceptor in the electron transport chain, where it combines with electrons and protons to form water.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is the primary purpose of the electron transport chain?",
        options: ["To produce ATP", "To generate NADH", "To produce glucose", "To create a proton gradient"].shuffled(),
        correctAnswer: "To create a proton gradient",
        explanation: "The electron transport chain generates a proton gradient by transferring electrons through protein complexes, which drives ATP synthesis in chemiosmosis.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "How many ATP are produced by glycolysis?",
        options: ["2", "4", "6", "38"].shuffled(),
        correctAnswer: "2",
        explanation: "Glycolysis produces 2 ATP molecules through substrate-level phosphorylation, but it requires an initial investment of 2 ATP.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "Where does the citric acid cycle take place?",
        options: ["Cytoplasm", "Mitochondrial matrix", "Inner mitochondrial membrane", "Nucleus"].shuffled(),
        correctAnswer: "Mitochondrial matrix",
        explanation: "The citric acid cycle takes place in the mitochondrial matrix, where acetyl-CoA is processed to produce ATP and electron carriers.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is the net ATP gain from one molecule of glucose during cellular respiration?",
        options: ["2", "4", "36", "38"].shuffled(),
        correctAnswer: "38",
        explanation: "The complete breakdown of one glucose molecule through glycolysis, the citric acid cycle, and oxidative phosphorylation yields approximately 38 ATP molecules.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is produced as a byproduct of the citric acid cycle?",
        options: ["Water", "Carbon dioxide", "Glucose", "Oxygen"].shuffled(),
        correctAnswer: "Carbon dioxide",
        explanation: "The citric acid cycle releases carbon dioxide as a byproduct when acetyl-CoA is oxidized.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is the role of oxygen in cellular respiration?",
        options: ["To produce ATP", "To act as an electron carrier", "To accept electrons and form water", "To produce glucose"].shuffled(),
        correctAnswer: "To accept electrons and form water",
        explanation: "Oxygen acts as the final electron acceptor in the electron transport chain, combining with electrons and protons to form water.",
        topic: "10.1",
        unit: 10
    ),
    PracticeQuestion(
        question: "What is the main function of NADH in cellular respiration?",
        options: ["To transport electrons", "To produce ATP", "To store glucose", "To form acetyl-CoA"].shuffled(),
        correctAnswer: "To transport electrons",
        explanation: "NADH functions as an electron carrier in cellular respiration, transferring electrons to the electron transport chain to generate ATP.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "How many molecules of NADH are produced from one molecule of glucose in glycolysis?",
        options: ["1", "2", "3", "4"].shuffled(),
        correctAnswer: "2",
        explanation: "Two molecules of NADH are produced during glycolysis as glucose is converted into two molecules of pyruvate.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What happens to pyruvate before entering the citric acid cycle?",
        options: ["It is broken down into glucose", "It is converted into acetyl-CoA", "It enters the electron transport chain", "It is converted into NADH"].shuffled(),
        correctAnswer: "It is converted into acetyl-CoA",
        explanation: "Before entering the citric acid cycle, pyruvate is converted into acetyl-CoA, which then combines with oxaloacetate to begin the cycle.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "How is ATP produced during the citric acid cycle?",
        options: ["Through substrate-level phosphorylation", "By splitting glucose", "Through oxidative phosphorylation", "By the breakdown of NADH"].shuffled(),
        correctAnswer: "Through substrate-level phosphorylation",
        explanation: "ATP is produced during the citric acid cycle through substrate-level phosphorylation, where a phosphate group is transferred to ADP to form ATP.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What molecule is regenerated in the citric acid cycle to enable it to continue?",
        options: ["NADH", "FADH2", "Oxaloacetate", "Acetyl-CoA"].shuffled(),
        correctAnswer: "Oxaloacetate",
        explanation: "Oxaloacetate is regenerated in the citric acid cycle, allowing it to combine with acetyl-CoA and continue the cycle.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "How many ATP are produced by the electron transport chain for each NADH molecule?",
        options: ["1", "2", "3", "4"].shuffled(),
        correctAnswer: "3",
        explanation: "Each NADH molecule typically produces 3 ATP molecules during oxidative phosphorylation in the electron transport chain.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "How is the proton gradient formed in the electron transport chain?",
        options: ["By the breakdown of glucose", "By the transfer of electrons through protein complexes", "By the conversion of NADH", "By the production of water"].shuffled(),
        correctAnswer: "By the transfer of electrons through protein complexes",
        explanation: "The proton gradient is formed by the transfer of electrons through protein complexes in the inner mitochondrial membrane, which pumps protons across the membrane.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is chemiosmosis in cellular respiration?",
        options: ["The production of glucose", "The movement of protons down their concentration gradient", "The breakdown of NADH", "The transfer of electrons to oxygen"].shuffled(),
        correctAnswer: "The movement of protons down their concentration gradient",
        explanation: "Chemiosmosis is the process where protons move down their concentration gradient through ATP synthase, driving the production of ATP.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "How many ATP molecules are produced from one molecule of glucose after the complete process of cellular respiration?",
        options: ["2", "18", "38", "40"].shuffled(),
        correctAnswer: "38",
        explanation: "The complete oxidation of one glucose molecule through glycolysis, the citric acid cycle, and oxidative phosphorylation typically produces about 38 ATP molecules.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is the role of FADH2 in cellular respiration?",
        options: ["To produce ATP", "To store glucose", "To carry electrons to the electron transport chain", "To split glucose"].shuffled(),
        correctAnswer: "To carry electrons to the electron transport chain",
        explanation: "FADH2 is an electron carrier that transports electrons to the electron transport chain for ATP production.",
        topic: "10.1",
        unit: 10
    ),
    PracticeQuestion(
        question: "Where does glycolysis occur in the cell?",
        options: ["In the mitochondria", "In the cytoplasm", "In the nucleus", "In the endoplasmic reticulum"].shuffled(),
        correctAnswer: "In the cytoplasm",
        explanation: "Glycolysis occurs in the cytoplasm, where glucose is broken down into pyruvate.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is the first molecule produced during glycolysis?",
        options: ["Pyruvate", "Glucose", "ATP", "Fructose-1,6-bisphosphate"].shuffled(),
        correctAnswer: "Fructose-1,6-bisphosphate",
        explanation: "The first molecule produced during glycolysis is fructose-1,6-bisphosphate, after glucose is phosphorylated.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "Which molecule acts as the final electron acceptor in the electron transport chain?",
        options: ["Oxygen", "NADH", "ATP", "Glucose"].shuffled(),
        correctAnswer: "Oxygen",
        explanation: "Oxygen acts as the final electron acceptor in the electron transport chain, combining with electrons and protons to form water.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is produced when oxygen accepts electrons in the electron transport chain?",
        options: ["Water", "ATP", "Glucose", "Pyruvate"].shuffled(),
        correctAnswer: "Water",
        explanation: "Oxygen combines with electrons and protons to form water as the final product of the electron transport chain.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "How does the proton gradient contribute to ATP synthesis?",
        options: ["It decreases the availability of ATP", "It powers the enzyme ATP synthase", "It splits glucose", "It provides electrons to NADH"].shuffled(),
        correctAnswer: "It powers the enzyme ATP synthase",
        explanation: "The proton gradient creates a flow of protons through ATP synthase, which drives the production of ATP.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "Which part of the mitochondrion does the citric acid cycle occur in?",
        options: ["Matrix", "Cristae", "Outer membrane", "Intermembrane space"].shuffled(),
        correctAnswer: "Matrix",
        explanation: "The citric acid cycle occurs in the matrix of the mitochondrion, where acetyl-CoA is oxidized.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "How many ATP molecules are produced by one molecule of FADH2 during oxidative phosphorylation?",
        options: ["1", "2", "3", "4"].shuffled(),
        correctAnswer: "2",
        explanation: "One FADH2 molecule produces approximately 2 ATP molecules during oxidative phosphorylation.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "What is the primary function of the electron transport chain?",
        options: ["To produce glucose", "To generate ATP by chemiosmosis", "To produce pyruvate", "To produce NADH"].shuffled(),
        correctAnswer: "To generate ATP by chemiosmosis",
        explanation: "The primary function of the electron transport chain is to generate ATP through chemiosmosis, powered by the transfer of electrons.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "Which molecule is formed at the end of glycolysis?",
        options: ["Pyruvate", "Acetyl-CoA", "Citric acid", "Oxygen"].shuffled(),
        correctAnswer: "Pyruvate",
        explanation: "At the end of glycolysis, glucose is broken down into two molecules of pyruvate.",
        topic: "10.1",
        unit: 10
    ),

    PracticeQuestion(
        question: "Which of the following is NOT a product of the citric acid cycle?",
        options: ["NADH", "ATP", "Pyruvate", "CO2"].shuffled(),
        correctAnswer: "Pyruvate",
        explanation: "Pyruvate is produced during glycolysis, not the citric acid cycle. The citric acid cycle produces NADH, ATP, and CO2.",
        topic: "10.1",
        unit: 10
    )





]

