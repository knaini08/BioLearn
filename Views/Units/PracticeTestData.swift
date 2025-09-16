//
//  PracticeTestData.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/28/25.
//

import Foundation

struct TestQuestion: Identifiable, Equatable, Codable, Hashable {
    var id = UUID()
    let question: String
    let options: [String]
    let correctAnswer: String
    let explanation: String
    let unit: Int // Add this field to associate questions with specific units
    var selectedAnswer: String?
}

// Sample data for multiple units
let allTestQuestions: [TestQuestion] = [
    TestQuestion(
            question: "Water exhibits cohesion due to which molecular interaction?",
            options: ["Covalent bonds between hydrogen and oxygen atoms", "Hydrogen bonds between adjacent water molecules", "Van der Waals forces within water molecules", "Ionic attractions between hydronium ions"].shuffled(),
            correctAnswer: "Hydrogen bonds between adjacent water molecules",
            explanation: "Cohesion in water is due to hydrogen bonding between molecules, which allows water to form droplets and surface tension.",
            unit: 1
        ),
        TestQuestion(
            question: "Why does ice float on liquid water?",
            options: ["Hydrogen bonds in ice are less stable, causing it to be denser", "Ice forms a crystalline structure that increases its density", "Ice forms a hexagonal lattice, making it less dense than liquid water", "Covalent bonds expand at low temperatures"].shuffled(),
            correctAnswer: "Ice forms a hexagonal lattice, making it less dense than liquid water",
            explanation: "Water expands upon freezing due to the hexagonal lattice structure formed by hydrogen bonds, making ice less dense than liquid water.",
            unit: 1
        ),
        TestQuestion(
            question: "A scientist observes that the temperature of a pond fluctuates less than the surrounding air over a 24-hour period. What property of water best explains this observation?",
            options: ["Capillary action", "High specific heat capacity", "Low viscosity", "Ionization potential"].shuffled(),
            correctAnswer: "High specific heat capacity",
            explanation: "Water's high specific heat capacity allows it to resist temperature changes, stabilizing ecosystems.",
            unit: 1
        ),
        TestQuestion(
            question: "A small plant uses capillary action to transport water through its xylem. This movement occurs due to:",
            options: ["Van der Waals interactions", "Cohesion and adhesion", "Ionic bonding within the xylem walls", "Hydrolysis reactions breaking water into smaller molecules"].shuffled(),
            correctAnswer: "Cohesion and adhesion",
            explanation: "Capillary action results from cohesion (water molecules sticking together) and adhesion (water molecules sticking to other surfaces).",
            unit: 1
        ),
        TestQuestion(
            question: "Water has a high heat of vaporization. Which of the following best explains its biological significance?",
            options: ["It allows aquatic organisms to maintain osmotic balance", "It facilitates the transport of nutrients in vascular plants", "It enables evaporative cooling, regulating body temperature", "It makes water an effective solvent for nonpolar substances"].shuffled(),
            correctAnswer: "It enables evaporative cooling, regulating body temperature",
            explanation: "The high heat of vaporization allows water to absorb large amounts of heat before evaporating, helping organisms cool down.",
            unit: 1
        ),
        TestQuestion(
            question: "If a molecule is hydrophilic, what is most likely true?",
            options: ["It contains many nonpolar covalent bonds", "It will repel water molecules", "It has partial or full charges that interact with water", "It does not form hydrogen bonds"].shuffled(),
            correctAnswer: "It has partial or full charges that interact with water",
            explanation: "Hydrophilic molecules are polar or charged, making them soluble in water.",
            unit: 1
        ),
        TestQuestion(
            question: "A solution has a pH of 4. How does it compare to a solution with a pH of 7?",
            options: ["It has three times as many H⁺ ions", "It has 1000 times as many H⁺ ions", "It has 1/1000 the number of H⁺ ions", "It has seven times as many H⁺ ions"].shuffled(),
            correctAnswer: "It has 1000 times as many H⁺ ions",
            explanation: "Each pH unit represents a tenfold change in H⁺ concentration, so a pH of 4 is 1000 times more acidic than a pH of 7.",
            unit: 1
        ),
        TestQuestion(
            question: "Which of the following correctly describes the relationship between pH and hydrogen ion concentration?",
            options: ["As pH decreases, [H⁺] decreases", "As pH increases, [H⁺] increases", "A difference of 1 pH unit reflects a 10-fold change in [H⁺]", "A neutral pH means no H⁺ ions are present"].shuffled(),
            correctAnswer: "A difference of 1 pH unit reflects a 10-fold change in [H⁺]",
            explanation: "The pH scale is logarithmic, meaning a 1-unit change in pH represents a tenfold change in H⁺ concentration.",
            unit: 1
        ),
        TestQuestion(
            question: "Buffers are crucial in biological systems because they:",
            options: ["Prevent changes in pH by donating or accepting H⁺ ions", "Dissociate completely in water to neutralize acids", "Maintain a constant temperature in cells", "Break down macromolecules through hydrolysis"].shuffled(),
            correctAnswer: "Prevent changes in pH by donating or accepting H⁺ ions",
            explanation: "Buffers help maintain a stable pH by either donating H⁺ when pH rises or accepting H⁺ when pH drops.",
            unit: 1
        ),
        TestQuestion(
            question: "Which macromolecule contains both nitrogen and phosphorus?",
            options: ["Protein", "Lipid", "Carbohydrate", "Nucleic acid"].shuffled(),
            correctAnswer: "Nucleic acid",
            explanation: "Nucleic acids (DNA and RNA) contain nitrogenous bases and a phosphate backbone.",
            unit: 1
        ),
        TestQuestion(
            question: "Which macromolecule is the primary structural component of plant cell walls?",
            options: ["Starch", "Glycogen", "Cellulose", "Chitin"].shuffled(),
            correctAnswer: "Cellulose",
            explanation: "Cellulose is a carbohydrate that forms strong fibers in plant cell walls, providing structural support.",
            unit: 1
        ),
        TestQuestion(
            question: "What type of bond is formed between amino acids during protein synthesis?",
            options: ["Glycosidic bond", "Phosphodiester bond", "Peptide bond", "Hydrogen bond"].shuffled(),
            correctAnswer: "Peptide bond",
            explanation: "Peptide bonds link amino acids together in proteins through dehydration synthesis.",
            unit: 1
        ),
        TestQuestion(
            question: "Which level of protein structure is most directly affected by hydrogen bonding?",
            options: ["Primary", "Secondary", "Tertiary", "Quaternary"].shuffled(),
            correctAnswer: "Secondary",
            explanation: "The secondary structure (alpha helices and beta sheets) forms due to hydrogen bonding between backbone atoms.",
            unit: 1
        ),
        TestQuestion(
            question: "What is the role of an enzyme in a reaction?",
            options: ["It lowers the activation energy", "It increases the energy of the reactants", "It gets consumed in the reaction", "It eliminates the need for substrates"].shuffled(),
            correctAnswer: "It lowers the activation energy",
            explanation: "Enzymes speed up reactions by lowering the activation energy required for the reaction to proceed.",
            unit: 1
        ),
    TestQuestion(
            question: "Which of the following factors would most likely decrease the rate of an enzymatic reaction?",
            options: ["Increasing substrate concentration", "Increasing temperature slightly", "Introducing a competitive inhibitor", "Adding more enzyme"].shuffled(),
            correctAnswer: "Introducing a competitive inhibitor",
            explanation: "Competitive inhibitors bind to the active site, preventing the substrate from binding and slowing the reaction.",
            unit: 1
        ),
        TestQuestion(
            question: "A mutation that changes the primary structure of an enzyme is most likely to directly affect which property?",
            options: ["The enzyme’s ability to form hydrogen bonds", "The enzyme’s ability to bind to its substrate", "The number of peptide bonds in the enzyme", "The enzyme’s solubility in water"].shuffled(),
            correctAnswer: "The enzyme’s ability to bind to its substrate",
            explanation: "Changes in the primary structure can alter the enzyme's active site, preventing substrate binding.",
            unit: 1
        ),
        TestQuestion(
            question: "Which statement about enzymes is true?",
            options: ["They are consumed in chemical reactions", "They work best at any temperature", "They lower activation energy", "They can catalyze any reaction"].shuffled(),
            correctAnswer: "They lower activation energy",
            explanation: "Enzymes function by reducing the activation energy needed to start a reaction.",
            unit: 1
        ),
        TestQuestion(
            question: "Which of the following best describes the induced fit model of enzyme function?",
            options: ["The enzyme and substrate have a perfect lock-and-key fit", "The enzyme changes shape slightly to accommodate the substrate", "The enzyme permanently changes shape during the reaction", "Enzymes function best when in a rigid conformation"].shuffled(),
            correctAnswer: "The enzyme changes shape slightly to accommodate the substrate",
            explanation: "The induced fit model suggests that an enzyme adjusts its shape slightly to bind the substrate more effectively.",
            unit: 1
        ),
        TestQuestion(
            question: "Which property of carbon allows it to serve as the backbone for a wide variety of biological molecules?",
            options: ["Its ability to form ionic bonds", "Its tendency to form hydrogen bonds", "Its valence of four, allowing it to form up to four covalent bonds", "Its high electronegativity"].shuffled(),
            correctAnswer: "Its valence of four, allowing it to form up to four covalent bonds",
            explanation: "Carbon’s four valence electrons enable it to form diverse and stable covalent bonds with other atoms.",
            unit: 1
        ),
        TestQuestion(
            question: "Which type of molecule contains a significant proportion of nonpolar covalent bonds and is thus insoluble in water?",
            options: ["Proteins", "Nucleic acids", "Lipids", "Carbohydrates"].shuffled(),
            correctAnswer: "Lipids",
            explanation: "Lipids are primarily composed of nonpolar hydrocarbon chains, making them hydrophobic and insoluble in water.",
            unit: 1
        ),
        TestQuestion(
            question: "Which of the following best describes a dehydration synthesis reaction?",
            options: ["A water molecule is added to break a bond", "A water molecule is removed to form a bond", "Ions are exchanged between two molecules", "A protein loses its three-dimensional structure"].shuffled(),
            correctAnswer: "A water molecule is removed to form a bond",
            explanation: "Dehydration synthesis links monomers into polymers by removing a water molecule.",
            unit: 1
        ),
        TestQuestion(
            question: "What is the primary function of carbohydrates in living organisms?",
            options: ["Long-term energy storage", "Information storage", "Catalyzing chemical reactions", "Immediate energy and structural support"].shuffled(),
            correctAnswer: "Immediate energy and structural support",
            explanation: "Carbohydrates serve as a quick energy source and provide structural support in cell walls (e.g., cellulose).",
            unit: 1
        ),
        TestQuestion(
            question: "What type of macromolecule is most responsible for carrying genetic information?",
            options: ["Proteins", "Lipids", "Nucleic acids", "Carbohydrates"].shuffled(),
            correctAnswer: "Nucleic acids",
            explanation: "Nucleic acids, such as DNA and RNA, store and transmit genetic information.",
            unit: 1
        ),
        TestQuestion(
            question: "Which molecule is a common component of biological membranes?",
            options: ["Cellulose", "Cholesterol", "Ribose", "Glycogen"].shuffled(),
            correctAnswer: "Cholesterol",
            explanation: "Cholesterol is a lipid that helps maintain membrane fluidity and stability.",
            unit: 1
        ),
        TestQuestion(
            question: "Which structural feature differentiates saturated and unsaturated fatty acids?",
            options: ["Presence of nitrogen in the molecule", "Number of phosphate groups", "Presence of double bonds in the hydrocarbon chain", "Number of amino groups"].shuffled(),
            correctAnswer: "Presence of double bonds in the hydrocarbon chain",
            explanation: "Unsaturated fatty acids contain one or more double bonds, which create kinks in the hydrocarbon chain and prevent tight packing.",
            unit: 1
        ),
        TestQuestion(
            question: "Which type of macromolecule is primarily responsible for speeding up biochemical reactions?",
            options: ["Lipids", "Proteins", "Carbohydrates", "Nucleic acids"].shuffled(),
            correctAnswer: "Proteins",
            explanation: "Enzymes are proteins that function as biological catalysts, speeding up chemical reactions.",
            unit: 1
        ),
        TestQuestion(
            question: "Which element is present in proteins but not carbohydrates or lipids?",
            options: ["Carbon", "Hydrogen", "Oxygen", "Nitrogen"].shuffled(),
            correctAnswer: "Nitrogen",
            explanation: "Proteins contain nitrogen due to the presence of amino groups in their amino acids.",
            unit: 1
        ),
        TestQuestion(
            question: "Which molecule is the most abundant in a typical cell?",
            options: ["Proteins", "Lipids", "Water", "Carbohydrates"].shuffled(),
            correctAnswer: "Water",
            explanation: "Water makes up the majority of a cell’s mass and plays a key role in cellular processes.",
            unit: 1
        ),
        TestQuestion(
            question: "Which of the following is a function of RNA?",
            options: ["Storage of genetic information", "Catalyzing metabolic reactions", "Providing structural support in plant cells", "Serving as a long-term energy source"].shuffled(),
            correctAnswer: "Catalyzing metabolic reactions",
            explanation: "Some RNA molecules, known as ribozymes, have catalytic activity in biochemical reactions.",
            unit: 1
        ),
        TestQuestion(
            question: "Which of the following best describes the function of phospholipids in cells?",
            options: ["They store genetic information", "They act as catalysts for biochemical reactions", "They form the structural basis of cell membranes", "They provide long-term energy storage"].shuffled(),
            correctAnswer: "They form the structural basis of cell membranes",
            explanation: "Phospholipids make up the bilayer of cell membranes, providing a selectively permeable barrier.",
            unit: 1
        ),
        TestQuestion(
            question: "Why are phospholipids well-suited for forming cellular membranes?",
            options: ["They dissolve easily in water", "They are completely nonpolar", "They contain both hydrophilic and hydrophobic regions", "They store genetic information"].shuffled(),
            correctAnswer: "They contain both hydrophilic and hydrophobic regions",
            explanation: "Phospholipids have a hydrophilic head and hydrophobic tails, allowing them to form bilayers in water.",
            unit: 1
        ),
    TestQuestion(
        question: "A researcher is studying the effect of pH on enzyme activity. She measures the reaction rate of an enzyme at pH values ranging from 2 to 10 and finds that the enzyme works best at pH 7, with little to no activity at pH 3 and pH 9. What conclusion can be drawn from this data?",
        options: ["The enzyme is most effective in acidic conditions.", "The enzyme is most effective in neutral conditions.", "The enzyme functions best in extreme pH environments.", "The enzyme activity is not affected by pH."].shuffled(),
        correctAnswer: "The enzyme is most effective in neutral conditions.",
        explanation: "The data shows peak enzyme activity at pH 7, suggesting that the enzyme functions best in neutral conditions.",
        unit: 1
    ),
    TestQuestion(
        question: "A student is investigating osmosis by placing potato slices in different sucrose solutions. After one hour, the slices in pure water increased in mass, while those in a 1.0 M sucrose solution lost mass. What is the most likely explanation?",
        options: ["Water entered the potato cells in the sucrose solution.", "Water left the potato cells in the pure water solution.", "Water moved into the potato cells in pure water and out in the sucrose solution.", "Sucrose entered the potato cells, increasing their mass."].shuffled(),
        correctAnswer: "Water moved into the potato cells in pure water and out in the sucrose solution.",
        explanation: "Osmosis moves water from low to high solute concentration. Pure water moves into cells, while sucrose solutions cause water to leave.",
        unit: 1
    ),
    TestQuestion(
        question: "A scientist measures the amount of ATP produced by two groups of cells: one in the presence of oxygen and one in the absence of oxygen. The oxygenated cells produce significantly more ATP. What is the best explanation for this result?",
        options: ["Cells need oxygen to complete glycolysis.", "Oxygen allows for more efficient ATP production through oxidative phosphorylation.", "Oxygen directly converts glucose into ATP.", "The absence of oxygen increases ATP production through fermentation."].shuffled(),
        correctAnswer: "Oxygen allows for more efficient ATP production through oxidative phosphorylation.",
        explanation: "Aerobic respiration, which includes oxidative phosphorylation, produces far more ATP than anaerobic fermentation.",
        unit: 1
    ),
    TestQuestion(
        question: "In an experiment, a scientist disrupts the hydrogen bonding in a protein. What is the most likely effect on the protein’s function?",
        options: ["The primary structure will be altered.", "The protein will be unaffected.", "The protein will likely lose its three-dimensional shape and function.", "The protein will increase in enzymatic activity."].shuffled(),
        correctAnswer: "The protein will likely lose its three-dimensional shape and function.",
        explanation: "Hydrogen bonds are critical for maintaining secondary and tertiary structure. Their disruption leads to denaturation and loss of function.",
        unit: 1
    ),
    TestQuestion(
        question: "Researchers analyze the composition of an unknown macromolecule and find that it contains carbon, hydrogen, oxygen, nitrogen, and phosphorus. Which macromolecule is it most likely to be?",
        options: ["Carbohydrate", "Lipid", "Protein", "Nucleic Acid"].shuffled(),
        correctAnswer: "Nucleic Acid",
        explanation: "Nucleic acids contain phosphorus, which is not found in proteins, carbohydrates, or lipids.",
        unit: 1
    ),
    TestQuestion(
        question: "A scientist introduces a toxin that inhibits ribosome function in a cell. What immediate effect will this have?",
        options: ["The cell will stop producing ATP.", "The cell will be unable to synthesize proteins.", "The cell will no longer be able to divide.", "The cell membrane will break down."].shuffled(),
        correctAnswer: "The cell will be unable to synthesize proteins.",
        explanation: "Ribosomes are responsible for protein synthesis. Inhibiting their function prevents the cell from producing proteins.",
        unit: 1
    ),
    TestQuestion(
        question: "A biologist measures the rate of diffusion of a molecule across a membrane under different conditions. The rate increases when the concentration gradient is steeper and when temperature is increased. What is the best explanation for this trend?",
        options: ["Molecules move faster at higher temperatures and when the gradient is stronger.", "Molecules move slower in warm conditions.", "Diffusion does not depend on temperature.", "Diffusion is unaffected by the concentration gradient."].shuffled(),
        correctAnswer: "Molecules move faster at higher temperatures and when the gradient is stronger.",
        explanation: "Higher temperatures increase kinetic energy, and a steeper gradient increases the driving force for diffusion.",
        unit: 1
    ),
    TestQuestion(
        question: "A researcher adds a nonpolar dye to a sample of cells and finds that it accumulates in the membrane. What property of the cell membrane explains this result?",
        options: ["The membrane is hydrophilic and attracts nonpolar molecules.", "The membrane is composed of a phospholipid bilayer with hydrophobic tails.", "The membrane is impermeable to all molecules.", "The membrane actively transports the dye into the cell."].shuffled(),
        correctAnswer: "The membrane is composed of a phospholipid bilayer with hydrophobic tails.",
        explanation: "The hydrophobic tails of phospholipids attract nonpolar molecules, allowing the dye to accumulate in the membrane.",
        unit: 1
    ),
    TestQuestion(
        question: "Which of the following is a characteristic of prokaryotic cells?",
        options: ["Contain membrane-bound organelles", "Lack a nucleus", "Have linear chromosomes", "Contain a mitochondrion"].shuffled(),
        correctAnswer: "Lack a nucleus",
        explanation: "Prokaryotic cells lack a nucleus and membrane-bound organelles, unlike eukaryotic cells.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following organelles is involved in the synthesis of proteins?",
        options: ["Mitochondria", "Rough endoplasmic reticulum", "Smooth endoplasmic reticulum", "Golgi apparatus"].shuffled(),
        correctAnswer: "Rough endoplasmic reticulum",
        explanation: "The rough endoplasmic reticulum has ribosomes attached to its surface, making it involved in protein synthesis.",
        unit: 2
    ),
    TestQuestion(
        question: "Which subcellular structure is responsible for producing ATP in the cell?",
        options: ["Chloroplast", "Ribosome", "Mitochondrion", "Nucleus"].shuffled(),
        correctAnswer: "Mitochondrion",
        explanation: "The mitochondrion is the powerhouse of the cell, where ATP is produced through cellular respiration.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following is NOT a function of the smooth endoplasmic reticulum?",
        options: ["Lipid synthesis", "Detoxification of drugs", "Protein synthesis", "Calcium storage"].shuffled(),
        correctAnswer: "Protein synthesis",
        explanation: "The smooth endoplasmic reticulum is involved in lipid synthesis, detoxification, and calcium storage, but not protein synthesis, which occurs in the rough ER.",
        unit: 2
    ),
    TestQuestion(
        question: "What is the main function of the Golgi apparatus?",
        options: ["Synthesize proteins", "Store genetic information", "Modify, package, and ship proteins", "Produce ATP"].shuffled(),
        correctAnswer: "Modify, package, and ship proteins",
        explanation: "The Golgi apparatus modifies proteins from the rough ER, packages them into vesicles, and ships them to other parts of the cell or outside the cell.",
        unit: 2
    ),
    TestQuestion(
        question: "Which organelle is responsible for synthesizing lipids?",
        options: ["Mitochondrion", "Rough ER", "Smooth ER", "Golgi apparatus"].shuffled(),
        correctAnswer: "Smooth ER",
        explanation: "The smooth endoplasmic reticulum synthesizes lipids and detoxifies certain chemicals.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following is a feature shared by both plant and animal cells?",
        options: ["Chloroplasts", "Plasma membrane", "Cell wall", "Central vacuole"].shuffled(),
        correctAnswer: "Plasma membrane",
        explanation: "Both plant and animal cells have a plasma membrane that regulates the movement of substances in and out of the cell.",
        unit: 2
    ),
    TestQuestion(
        question: "Which structure regulates the movement of materials in and out of the cell?",
        options: ["Cell wall", "Plasma membrane", "Cytoplasm", "Nucleus"].shuffled(),
        correctAnswer: "Plasma membrane",
        explanation: "The plasma membrane controls the entry and exit of materials through its selective permeability.",
        unit: 2
    ),
    TestQuestion(
        question: "What is the main reason that cells are small?",
        options: ["To increase their surface area-to-volume ratio", "To limit the amount of DNA in the cell", "To decrease metabolic efficiency", "To increase the amount of cytoplasm"].shuffled(),
        correctAnswer: "To increase their surface area-to-volume ratio",
        explanation: "Smaller cells have a larger surface area relative to their volume, which increases efficiency in transporting nutrients and wastes.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following can pass directly through the phospholipid bilayer of the plasma membrane?",
        options: ["Large polar molecules", "Small nonpolar molecules", "Ions", "Glucose"].shuffled(),
        correctAnswer: "Small nonpolar molecules",
        explanation: "Small nonpolar molecules, like oxygen, can pass freely through the phospholipid bilayer, while polar molecules and ions require transport proteins.",
        unit: 2
    ),
    TestQuestion(
        question: "Which type of transport requires the use of a carrier protein but does not require energy?",
        options: ["Active transport", "Facilitated diffusion", "Endocytosis", "Exocytosis"].shuffled(),
        correctAnswer: "Facilitated diffusion",
        explanation: "Facilitated diffusion is a passive process that uses a carrier protein to help move molecules down their concentration gradient.",
        unit: 2
    ),
    TestQuestion(
        question: "What does it mean for a membrane to be selectively permeable?",
        options: ["It allows all substances to pass freely", "It only allows large molecules to pass", "It controls which substances can enter and exit", "It does not allow any substances to pass"].shuffled(),
        correctAnswer: "It controls which substances can enter and exit",
        explanation: "A selectively permeable membrane allows some substances to pass through while blocking others based on size, charge, and other factors.",
        unit: 2
    ),
    TestQuestion(
        question: "In a hypertonic solution, a plant cell will",
        options: ["Swelling", "Plasmolyze", "Burst", "Remain the same size"].shuffled(),
        correctAnswer: "Plasmolyze",
        explanation: "In a hypertonic solution, water moves out of the plant cell, causing the cell membrane to pull away from the cell wall (plasmolysis).",
        unit: 2
    ),
    TestQuestion(
        question: "What happens to an animal cell placed in a hypotonic solution?",
        options: ["It will shrink", "It will burst", "It will remain the same", "It will become turgid"].shuffled(),
        correctAnswer: "It will burst",
        explanation: "In a hypotonic solution, water enters the cell, causing it to swell and potentially burst.",
        unit: 2
    ),
    TestQuestion(
        question: "What is the function of the sodium-potassium pump?",
        options: ["To transport sodium ions into the cell", "To transport potassium ions into the cell", "To actively transport sodium out and potassium into the cell", "To move both sodium and potassium ions into the cell"].shuffled(),
        correctAnswer: "To actively transport sodium out and potassium into the cell",
        explanation: "The sodium-potassium pump moves sodium ions out of the cell and potassium ions into the cell against their concentration gradients, requiring ATP.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following is true about facilitated diffusion?",
        options: ["It requires energy in the form of ATP", "It moves substances against their concentration gradient", "It requires a transport protein", "It is a form of active transport"].shuffled(),
        correctAnswer: "It requires a transport protein",
        explanation: "Facilitated diffusion involves the use of a transport protein to move molecules down their concentration gradient without energy input.",
        unit: 2
    ),
    TestQuestion(
        question: "The concept that mitochondria and chloroplasts were once independent prokaryotic cells is best explained by which theory?",
        options: ["Endosymbiotic theory", "Cell theory", "Fluid mosaic model", "Osmotic theory"].shuffled(),
        correctAnswer: "Endosymbiotic theory",
        explanation: "Endosymbiotic theory suggests that mitochondria and chloroplasts were once free-living prokaryotes that were engulfed by a host cell.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following statements best describes the structure of the plasma membrane?",
        options: ["A rigid layer made of proteins and lipids", "A fluid structure made of proteins and phospholipids", "A solid barrier made only of proteins", "A semi-permeable structure with only carbohydrates"].shuffled(),
        correctAnswer: "A fluid structure made of proteins and phospholipids",
        explanation: "The plasma membrane is a dynamic structure composed of a phospholipid bilayer with embedded proteins, allowing for flexibility and selective permeability.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following structures is responsible for maintaining the shape of plant cells?",
        options: ["Plasma membrane", "Cell wall", "Cytoskeleton", "Nucleus"].shuffled(),
        correctAnswer: "Cell wall",
        explanation: "The cell wall provides structural support and helps maintain the shape of plant cells.",
        unit: 2
    ),
    TestQuestion(
        question: "What is the primary role of lysosomes in a cell?",
        options: ["Synthesize proteins", "Store genetic material", "Digest cellular waste", "Produce ATP"].shuffled(),
        correctAnswer: "Digest cellular waste",
        explanation: "Lysosomes contain enzymes that break down and digest cellular waste, damaged organelles, and other materials.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following is NOT a function of membrane proteins?",
        options: ["Facilitate transport of molecules", "Act as enzymes", "Transmit signals", "Store energy"].shuffled(),
        correctAnswer: "Store energy",
        explanation: "Membrane proteins help with transport, signaling, and enzymatic functions, but they do not store energy.",
        unit: 2
    ),
    TestQuestion(
        question: "What happens to a plant cell in an isotonic solution?",
        options: ["It will become plasmolyzed", "It will become turgid", "It will shrivel", "It will remain the same size"].shuffled(),
        correctAnswer: "It will remain the same size",
        explanation: "In an isotonic solution, there is no net movement of water, so the plant cell remains unchanged in size.",
        unit: 2
    ),
    TestQuestion(
        question: "Which type of transport involves movement of large molecules into the cell via vesicles?",
        options: ["Exocytosis", "Endocytosis", "Facilitated diffusion", "Active transport"].shuffled(),
        correctAnswer: "Endocytosis",
        explanation: "Endocytosis is the process by which large molecules are engulfed by the cell membrane and brought into the cell via vesicles.",
        unit: 2
    ),
    TestQuestion(
        question: "What is the role of the nuclear membrane in a eukaryotic cell?",
        options: ["To control what enters and leaves the nucleus", "To produce proteins", "To synthesize lipids", "To store genetic information"].shuffled(),
        correctAnswer: "To control what enters and leaves the nucleus",
        explanation: "The nuclear membrane, or nuclear envelope, controls the movement of materials into and out of the nucleus, including RNA and ribosomal subunits.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following is a feature of a eukaryotic cell that is absent in prokaryotic cells?",
        options: ["Nucleus", "Ribosomes", "Plasma membrane", "Cytoplasm"].shuffled(),
        correctAnswer: "Nucleus",
        explanation: "Eukaryotic cells have a membrane-bound nucleus, while prokaryotic cells do not.",
        unit: 2
    ),
    TestQuestion(
        question: "In an experiment, two solutions are separated by a semipermeable membrane. Solution A has a solute concentration of 1M NaCl, while Solution B has a solute concentration of 0.5M NaCl. Which direction will the water move?",
        options: ["Water will move from Solution A to Solution B", "Water will move from Solution B to Solution A", "Water will not move", "Water will move in both directions equally"].shuffled(),
        correctAnswer: "Water will move from Solution B to Solution A",
        explanation: "Water moves from the area of lower solute concentration (Solution B) to the area of higher solute concentration (Solution A) by osmosis.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following describes the function of the plasma membrane in a cell?",
        options: ["Provide structural support to the cell", "Regulate the passage of substances in and out of the cell", "Generate ATP for the cell", "Control the genetic material of the cell"].shuffled(),
        correctAnswer: "Regulate the passage of substances in and out of the cell",
        explanation: "The plasma membrane is selectively permeable and controls the movement of molecules in and out of the cell.",
        unit: 2
    ),
    TestQuestion(
        question: "A plant cell is placed in a solution with a higher solute concentration than the cell's cytoplasm. What will happen to the plant cell?",
        options: ["The cell will swell", "The cell will shrink", "The cell will remain unchanged", "The cell will burst"].shuffled(),
        correctAnswer: "The cell will shrink",
        explanation: "In a hypertonic solution, water will leave the plant cell, causing it to shrink (plasmolysis).",
        unit: 2
    ),
    TestQuestion(
        question: "If a cell is placed in a solution that is hypotonic compared to its cytoplasm, what will happen?",
        options: ["Water will leave the cell", "The cell will shrink", "Water will enter the cell", "The cell will remain unchanged"].shuffled(),
        correctAnswer: "Water will enter the cell",
        explanation: "In a hypotonic solution, water enters the cell because the solute concentration inside the cell is higher than in the surrounding solution.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following is an example of active transport?",
        options: ["Facilitated diffusion", "Endocytosis", "Osmosis", "Simple diffusion"].shuffled(),
        correctAnswer: "Endocytosis",
        explanation: "Endocytosis requires energy to move large molecules into the cell via vesicles, which is a form of active transport.",
        unit: 2
    ),
    TestQuestion(
        question: "What would happen if a plant cell were placed in a solution with the same solute concentration as its cytoplasm?",
        options: ["The cell would burst", "The cell would remain the same size", "The cell would shrink", "The cell would become turgid"].shuffled(),
        correctAnswer: "The cell would remain the same size",
        explanation: "In an isotonic solution, there is no net movement of water, and the plant cell would maintain its size.",
        unit: 2
    ),
    TestQuestion(
        question: "A researcher conducts an experiment where Solution A has a pH of 8, and Solution B has a pH of 6. Which solution is more acidic?",
        options: ["Solution A", "Solution B", "Both have the same acidity", "The pH does not indicate acidity"].shuffled(),
        correctAnswer: "Solution B",
        explanation: "The lower the pH, the more acidic the solution. Solution B with pH 6 is more acidic than Solution A with pH 8.",
        unit: 2
    ),
    TestQuestion(
        question: "A group of plant cells is exposed to a solution. After 30 minutes, the cells are examined under a microscope. Some cells show evidence of plasmolysis. What conclusion can be drawn?",
        options: ["The solution was hypertonic", "The solution was hypotonic", "The solution was isotonic", "The cells were in an optimal environment"].shuffled(),
        correctAnswer: "The solution was hypertonic",
        explanation: "Plasmolysis occurs when a plant cell shrinks due to the loss of water in a hypertonic solution.",
        unit: 2
    ),
    TestQuestion(
        question: "A scientist is studying two different cells. Cell A has a large central vacuole, while Cell B does not. Based on this, which of the following is true?",
        options: ["Cell A is a prokaryotic cell", "Cell A is a plant cell", "Cell B is a plant cell", "Cell B contains chloroplasts"].shuffled(),
        correctAnswer: "Cell A is a plant cell",
        explanation: "The presence of a large central vacuole is characteristic of plant cells.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following experimental setups would allow a scientist to measure the rate of osmosis in a plant cell?",
        options: ["Placing plant cells in different concentrations of sugar solution", "Heating the plant cells to different temperatures", "Cutting plant cells into smaller pieces", "Adding salt to the solution"].shuffled(),
        correctAnswer: "Placing plant cells in different concentrations of sugar solution",
        explanation: "By placing plant cells in various concentrations of sugar solution, the scientist can measure the movement of water (osmosis) in response to the concentration gradient.",
        unit: 2
    ),
    TestQuestion(
        question: "A solution is added to a red blood cell, and the cell bursts. What can be concluded about the solution?",
        options: ["It is hypotonic", "It is hypertonic", "It is isotonic", "It contains salt"].shuffled(),
        correctAnswer: "It is hypotonic",
        explanation: "In a hypotonic solution, water enters the red blood cell, causing it to swell and eventually burst (hemolysis).",
        unit: 2
    ),
    TestQuestion(
        question: "A cell is placed in a solution, and the cell shrinks over time. Which of the following is the best explanation for this observation?",
        options: ["The solution is hypertonic", "The solution is hypotonic", "The solution is isotonic", "The cell has a low concentration of solutes"].shuffled(),
        correctAnswer: "The solution is hypertonic",
        explanation: "In a hypertonic solution, water will move out of the cell, causing it to shrink.",
        unit: 2
    ),
    TestQuestion(
        question: "A research study investigates the effect of temperature on the fluidity of the plasma membrane. At higher temperatures, the membrane becomes more fluid. What conclusion can be drawn?",
        options: ["Membrane proteins become more rigid at higher temperatures", "The phospholipids in the membrane become more tightly packed at higher temperatures", "The membrane becomes more fluid due to increased kinetic energy", "The membrane becomes more rigid due to higher kinetic energy"].shuffled(),
        correctAnswer: "The membrane becomes more fluid due to increased kinetic energy",
        explanation: "At higher temperatures, the kinetic energy of phospholipids increases, leading to more fluid movement in the membrane.",
        unit: 2
    ),
    TestQuestion(
        question: "A student is measuring the rate of facilitated diffusion of glucose in a cell. Which of the following factors would most likely increase the rate of diffusion?",
        options: ["Increasing the concentration of glucose outside the cell", "Decreasing the number of carrier proteins", "Increasing the temperature inside the cell", "Decreasing the concentration of glucose inside the cell"].shuffled(),
        correctAnswer: "Increasing the concentration of glucose outside the cell",
        explanation: "Facilitated diffusion depends on the concentration gradient. Increasing the concentration of glucose outside the cell will increase the rate of diffusion.",
        unit: 2
    ),
    TestQuestion(
        question: "Which of the following is true about enzymes?",
        options: ["They are used up in chemical reactions", "They increase the activation energy of reactions", "They are highly specific to their substrates", "They work at the same rate at all temperatures"].shuffled(),
        correctAnswer: "They are highly specific to their substrates",
        explanation: "Enzymes are highly specific, meaning each enzyme only catalyzes one type of reaction or interacts with a specific substrate.",
        unit: 3
    ),
    TestQuestion(
        question: "What is the effect of a competitive inhibitor on an enzyme-catalyzed reaction?",
        options: ["It binds to the enzyme's active site and prevents substrate binding", "It changes the shape of the enzyme", "It increases the enzyme's affinity for its substrate", "It speeds up the reaction rate"].shuffled(),
        correctAnswer: "It binds to the enzyme's active site and prevents substrate binding",
        explanation: "Competitive inhibitors bind to the active site of an enzyme, preventing the substrate from binding and slowing the reaction rate.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following factors would most likely decrease the activity of an enzyme?",
        options: ["Increase in substrate concentration", "Decrease in pH", "Increase in temperature", "Increase in enzyme concentration"].shuffled(),
        correctAnswer: "Decrease in pH",
        explanation: "Most enzymes have an optimal pH range, and a decrease in pH may cause denaturation, decreasing enzyme activity.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following is the primary purpose of photosynthesis?",
        options: ["To convert light energy into chemical energy", "To break down glucose into ATP", "To convert oxygen into glucose", "To release carbon dioxide into the atmosphere"].shuffled(),
        correctAnswer: "To convert light energy into chemical energy",
        explanation: "Photosynthesis is the process by which plants convert light energy into chemical energy stored in glucose molecules.",
        unit: 3
    ),
    TestQuestion(
        question: "Where in the chloroplast does the Calvin cycle take place?",
        options: ["Thylakoid membrane", "Stroma", "Inner membrane", "Outer membrane"].shuffled(),
        correctAnswer: "Stroma",
        explanation: "The Calvin cycle occurs in the stroma, the fluid-filled space inside the chloroplast surrounding the thylakoids.",
        unit: 3
    ),
    TestQuestion(
        question: "In the process of cellular respiration, which of the following is the final electron acceptor in the electron transport chain?",
        options: ["Oxygen", "Glucose", "Carbon dioxide", "NAD+"].shuffled(),
        correctAnswer: "Oxygen",
        explanation: "Oxygen is the final electron acceptor in the electron transport chain, forming water when it combines with electrons and protons.",
        unit: 3
    ),
    TestQuestion(
        question: "What is the net ATP yield from one molecule of glucose during glycolysis?",
        options: ["1 ATP", "2 ATP", "4 ATP", "32 ATP"].shuffled(),
        correctAnswer: "2 ATP",
        explanation: "Glycolysis produces a net gain of 2 ATP molecules per glucose molecule, despite using 2 ATP during the early steps of the pathway.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following processes occurs in the mitochondria?",
        options: ["Glycolysis", "Citric acid cycle", "Photosynthesis", "Fermentation"].shuffled(),
        correctAnswer: "Citric acid cycle",
        explanation: "The citric acid cycle (Krebs cycle) takes place in the mitochondria, where it generates ATP and electron carriers for the electron transport chain.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following best describes the role of NADH in cellular respiration?",
        options: ["It is used to produce glucose", "It is an electron carrier that donates electrons to the electron transport chain", "It produces oxygen", "It breaks down glucose into pyruvate"].shuffled(),
        correctAnswer: "It is an electron carrier that donates electrons to the electron transport chain",
        explanation: "NADH carries electrons from glycolysis and the citric acid cycle to the electron transport chain, where they are used to produce ATP.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following molecules is produced during the light-dependent reactions of photosynthesis?",
        options: ["Glucose", "Oxygen", "Carbon dioxide", "ATP"].shuffled(),
        correctAnswer: "Oxygen",
        explanation: "The light-dependent reactions produce oxygen as a byproduct, which is released into the atmosphere, along with ATP and NADPH.",
        unit: 3
    ),
    TestQuestion(
        question: "In the electron transport chain of cellular respiration, the energy from electrons is used to:",
        options: ["Pump protons across the mitochondrial membrane", "Break down glucose", "Produce glucose", "Form NADH and FADH2"].shuffled(),
        correctAnswer: "Pump protons across the mitochondrial membrane",
        explanation: "The energy from electrons is used to pump protons across the inner mitochondrial membrane, creating a proton gradient that drives ATP production.",
        unit: 3
    ),
    TestQuestion(
        question: "In which of the following stages of cellular respiration is the majority of ATP produced?",
        options: ["Glycolysis", "Citric acid cycle", "Electron transport chain", "Fermentation"].shuffled(),
        correctAnswer: "Electron transport chain",
        explanation: "The electron transport chain produces the majority of ATP during cellular respiration through oxidative phosphorylation.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following occurs during the light-independent reactions of photosynthesis?",
        options: ["The splitting of water", "The production of ATP", "The fixation of carbon dioxide into organic molecules", "The formation of oxygen"].shuffled(),
        correctAnswer: "The fixation of carbon dioxide into organic molecules",
        explanation: "The light-independent reactions (Calvin cycle) use ATP and NADPH from the light-dependent reactions to fix carbon dioxide into organic molecules like glucose.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following is the first step of cellular respiration?",
        options: ["Glycolysis", "Citric acid cycle", "Electron transport chain", "Fermentation"].shuffled(),
        correctAnswer: "Glycolysis",
        explanation: "Glycolysis is the first step of cellular respiration and occurs in the cytoplasm, where glucose is broken down into pyruvate.",
        unit: 3
    ),
    TestQuestion(
        question: "What is the main purpose of fermentation in the absence of oxygen?",
        options: ["To produce ATP via the electron transport chain", "To regenerate NAD+ so glycolysis can continue", "To produce glucose", "To convert pyruvate into acetyl-CoA"].shuffled(),
        correctAnswer: "To regenerate NAD+ so glycolysis can continue",
        explanation: "Fermentation regenerates NAD+ from NADH, allowing glycolysis to continue producing ATP in the absence of oxygen.",
        unit: 3
    ),
    TestQuestion(
        question: "What is the role of ATP synthase in cellular respiration?",
        options: ["It catalyzes the breakdown of glucose", "It transports electrons in the electron transport chain", "It synthesizes ATP using the energy from the proton gradient", "It breaks down ATP into ADP and phosphate"].shuffled(),
        correctAnswer: "It synthesizes ATP using the energy from the proton gradient",
        explanation: "ATP synthase uses the proton gradient generated by the electron transport chain to produce ATP from ADP and inorganic phosphate.",
        unit: 3
    ),
    TestQuestion(
        question: "In the absence of oxygen, yeast cells undergo which type of fermentation?",
        options: ["Lactic acid fermentation", "Alcoholic fermentation", "Aerobic respiration", "Acidic fermentation"].shuffled(),
        correctAnswer: "Alcoholic fermentation",
        explanation: "In the absence of oxygen, yeast cells undergo alcoholic fermentation, converting glucose into ethanol and carbon dioxide while regenerating NAD+.",
        unit: 3
    ),
    TestQuestion(
        question: "What is the relationship between the light-dependent and light-independent reactions in photosynthesis?",
        options: ["The light-dependent reactions produce glucose, which is used in the light-independent reactions", "The light-independent reactions produce oxygen, which is used in the light-dependent reactions", "The light-independent reactions produce ATP and NADPH, which are used in the light-dependent reactions", "The light-dependent reactions produce ATP and NADPH, which are used in the light-independent reactions"].shuffled(),
        correctAnswer: "The light-dependent reactions produce ATP and NADPH, which are used in the light-independent reactions",
        explanation: "The ATP and NADPH produced in the light-dependent reactions provide the energy and reducing power needed for the Calvin cycle in the light-independent reactions.",
        unit: 3
    ),
    TestQuestion(
        question: "During which part of cellular respiration is carbon dioxide produced?",
        options: ["Glycolysis", "Citric acid cycle", "Electron transport chain", "Fermentation"].shuffled(),
        correctAnswer: "Citric acid cycle",
        explanation: "Carbon dioxide is produced during the citric acid cycle as glucose is broken down into smaller molecules.",
        unit: 3
    ),
    TestQuestion(
        question: "Which molecule is directly produced by the Calvin cycle in photosynthesis?",
        options: ["Oxygen", "Glucose", "ATP", "NADPH"].shuffled(),
        correctAnswer: "Glucose",
        explanation: "The Calvin cycle fixes carbon dioxide into glucose, which is then used as an energy source by the plant.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following is true about the role of oxygen in cellular respiration?",
        options: ["It is used to break down glucose", "It is a byproduct of glycolysis", "It acts as the final electron acceptor in the electron transport chain", "It is produced during the citric acid cycle"].shuffled(),
        correctAnswer: "It acts as the final electron acceptor in the electron transport chain",
        explanation: "Oxygen is the final electron acceptor in the electron transport chain, combining with electrons and protons to form water.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following best describes the function of the thylakoid membrane in the chloroplast?",
        options: ["It contains the enzymes for the Calvin cycle", "It is the site of the electron transport chain in photosynthesis", "It produces glucose from carbon dioxide", "It synthesizes ATP during cellular respiration"].shuffled(),
        correctAnswer: "It is the site of the electron transport chain in photosynthesis",
        explanation: "The thylakoid membrane is the site of the electron transport chain in the light-dependent reactions of photosynthesis.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following is true about the energy released in cellular respiration?",
        options: ["It is stored as ATP", "It is released as heat", "It is used to form glucose", "It is stored as NADH"].shuffled(),
        correctAnswer: "It is stored as ATP",
        explanation: "The energy released during cellular respiration is captured in the form of ATP, which is used by cells for various metabolic processes.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following best describes the role of FADH2 in cellular respiration?",
        options: ["It donates electrons to the electron transport chain at complex II", "It directly produces ATP in the citric acid cycle", "It transports protons across the inner mitochondrial membrane", "It is used to split glucose in glycolysis"].shuffled(),
        correctAnswer: "It donates electrons to the electron transport chain at complex II",
        explanation: "FADH2 donates electrons to the electron transport chain at complex II, which contributes to the proton gradient necessary for ATP synthesis.",
        unit: 3
    ),
    TestQuestion(
        question: "In photosynthesis, which molecule is regenerated during the light-dependent reactions and used in the Calvin cycle?",
        options: ["Glucose", "NADPH", "ATP", "Carbon dioxide"].shuffled(),
        correctAnswer: "ATP",
        explanation: "ATP is regenerated in the light-dependent reactions and used to power the Calvin cycle, where it provides the energy for carbon fixation and synthesis of glucose.",
        unit: 3
    ),
    TestQuestion(
        question: "What happens to the ATP produced in the light-dependent reactions of photosynthesis?",
        options: ["It is used to drive the Calvin cycle", "It is stored in the thylakoid membrane", "It is released as oxygen", "It is converted into glucose"].shuffled(),
        correctAnswer: "It is used to drive the Calvin cycle",
        explanation: "The ATP produced in the light-dependent reactions is used to drive the Calvin cycle, providing the energy needed for carbon fixation and glucose production.",
        unit: 3
    ),
    TestQuestion(
        question: "Which of the following is true about the relationship between the citric acid cycle and the electron transport chain?",
        options: ["The citric acid cycle directly generates ATP through substrate-level phosphorylation", "The citric acid cycle generates NADH and FADH2, which are used by the electron transport chain", "The citric acid cycle produces oxygen as a byproduct", "The citric acid cycle occurs in the cytoplasm while the electron transport chain occurs in the mitochondria"].shuffled(),
        correctAnswer: "The citric acid cycle generates NADH and FADH2, which are used by the electron transport chain",
        explanation: "The citric acid cycle generates NADH and FADH2, which donate electrons to the electron transport chain, facilitating the production of ATP.",
        unit: 3
    ),
    TestQuestion(
        question: "In which process is oxygen consumed as a reactant to produce water?",
        options: ["Glycolysis", "Citric acid cycle", "Electron transport chain", "Fermentation"].shuffled(),
        correctAnswer: "Electron transport chain",
        explanation: "In the electron transport chain, oxygen acts as the final electron acceptor, forming water as it combines with electrons and protons.",
        unit: 3
    ),
    TestQuestion(
        question: "What is the role of RuBP in the Calvin cycle of photosynthesis?",
        options: ["It binds to carbon dioxide to form an unstable 6-carbon molecule", "It produces oxygen by splitting water", "It carries electrons to the electron transport chain", "It converts ATP into glucose"].shuffled(),
        correctAnswer: "It binds to carbon dioxide to form an unstable 6-carbon molecule",
        explanation: "RuBP (ribulose bisphosphate) binds with carbon dioxide in the Calvin cycle, forming an unstable 6-carbon molecule that is then split into two molecules of 3-phosphoglycerate.",
        unit: 3
    ),
    TestQuestion(
        question: "A plant is placed in a dark room for 24 hours and then placed under light for 2 hours. After the light exposure, the oxygen levels in the surrounding environment are measured. What can be concluded from this data?",
        options: ["The plant is not undergoing photosynthesis", "The plant has produced more oxygen in the light", "The plant uses oxygen for cellular respiration only", "The plant does not produce oxygen during the dark period"].shuffled(),
        correctAnswer: "The plant has produced more oxygen in the light",
        explanation: "Photosynthesis in plants generates oxygen as a byproduct, so in the presence of light, oxygen levels would increase as the plant undergoes the light-dependent reactions.",
        unit: 3
    ),
    TestQuestion(
        question: "In a laboratory experiment, a researcher measures the rate of oxygen production in two plant species. Species A produces 10 mL of oxygen per hour, while Species B produces 5 mL of oxygen per hour. What conclusion can be drawn from this data?",
        options: ["Species A performs photosynthesis more efficiently than Species B", "Species B is not undergoing photosynthesis", "Species A is using more carbon dioxide than Species B", "Species A is a more efficient consumer of oxygen"].shuffled(),
        correctAnswer: "Species A performs photosynthesis more efficiently than Species B",
        explanation: "The rate of oxygen production is a direct indicator of the rate of photosynthesis. Species A produces more oxygen, suggesting it is performing photosynthesis more efficiently.",
        unit: 3
    ),
    TestQuestion(
        question: "A student measures the rate of ATP production in a plant during the day and night. During the day, ATP production is 100 units, and during the night, it is 50 units. What is the likely reason for the difference in ATP production?",
        options: ["Photosynthesis is only active during the day, generating ATP", "ATP is consumed more during the night than it is produced", "The plant is not undergoing cellular respiration at night", "ATP production remains constant, regardless of time of day"].shuffled(),
        correctAnswer: "Photosynthesis is only active during the day, generating ATP",
        explanation: "Photosynthesis only occurs during the day when light is available, generating ATP. At night, only cellular respiration occurs, which produces ATP at a slower rate.",
        unit: 3
    ),
    TestQuestion(
        question: "A student is studying the effect of temperature on enzyme activity. The enzyme activity at 10°C is 5 units, at 25°C is 50 units, and at 40°C is 25 units. What conclusion can be drawn from this data?",
        options: ["The enzyme activity increases continuously with temperature", "The enzyme activity is highest at 25°C", "The enzyme activity is lowest at 25°C", "The enzyme activity decreases as temperature increases"].shuffled(),
        correctAnswer: "The enzyme activity is highest at 25°C",
        explanation: "The data shows that enzyme activity peaks at 25°C and decreases at both lower (10°C) and higher (40°C) temperatures, suggesting 25°C is the optimal temperature for this enzyme.",
        unit: 3
    ),
    TestQuestion(
        question: "In an experiment, yeast cells are placed in a solution with glucose and oxygen. The oxygen concentration is measured over time. The data shows a sharp decrease in oxygen levels, followed by a stabilization. What can be inferred from this observation?",
        options: ["The yeast cells underwent fermentation after consuming all the oxygen", "The yeast cells consumed oxygen for cellular respiration and then switched to anaerobic respiration", "The yeast cells produced oxygen via photosynthesis", "The yeast cells stopped metabolizing glucose after the oxygen was consumed"].shuffled(),
        correctAnswer: "The yeast cells underwent fermentation after consuming all the oxygen",
        explanation: "Once the oxygen is consumed, the yeast cells switch to anaerobic respiration (fermentation), where they continue metabolizing glucose in the absence of oxygen, leading to the stabilization of oxygen levels.",
        unit: 3
    ),
    TestQuestion(
        question: "In a photosynthesis experiment, a plant is exposed to light of different wavelengths. The plant shows the highest rate of oxygen production when exposed to red and blue light. What does this data suggest about the plant's photosynthetic activity?",
        options: ["The plant performs photosynthesis most efficiently under red and blue light", "The plant does not respond to red and blue light", "The plant is more efficient at producing glucose under green light", "The plant's photosynthesis is independent of light wavelength"].shuffled(),
        correctAnswer: "The plant performs photosynthesis most efficiently under red and blue light",
        explanation: "Chlorophyll absorbs light most efficiently in the red and blue wavelengths, which leads to the highest rate of photosynthesis and oxygen production.",
        unit: 3
    ),
    TestQuestion(
        question: "A researcher compares the amount of ATP produced by two cells. Cell A produces 36 ATP molecules per glucose molecule, while Cell B produces 2 ATP molecules per glucose molecule. What is the likely difference between the two cells?",
        options: ["Cell A undergoes fermentation, and Cell B undergoes aerobic respiration", "Cell A undergoes aerobic respiration, and Cell B undergoes fermentation", "Cell A does not produce ATP, and Cell B produces ATP in glycolysis", "Cell A produces more glucose than Cell B"].shuffled(),
        correctAnswer: "Cell A undergoes aerobic respiration, and Cell B undergoes fermentation",
        explanation: "Cell A produces 36 ATP per glucose molecule, typical of aerobic respiration. Cell B produces only 2 ATP, suggesting it undergoes fermentation, which is much less efficient.",
        unit: 3
    ),
    TestQuestion(
        question: "What is the primary role of receptor proteins in cell communication?",
        options: ["To transmit signals from the nucleus to the cytoplasm", "To bind to signaling molecules and initiate a cellular response", "To transport molecules across the plasma membrane", "To regulate gene expression"].shuffled(),
        correctAnswer: "To bind to signaling molecules and initiate a cellular response",
        explanation: "Receptor proteins bind to signaling molecules, triggering a conformational change that initiates a cascade of cellular responses.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following is an example of a second messenger in cell signaling?",
        options: ["G protein", "ATP", "cAMP", "Receptor Tyrosine Kinase"].shuffled(),
        correctAnswer: "cAMP",
        explanation: "cAMP (cyclic AMP) is a common second messenger in cell signaling, which transduces the signal from the receptor to downstream effectors.",
        unit: 4
    ),
    TestQuestion(
        question: "In G-protein coupled receptor (GPCR) signaling, what happens after the receptor is activated?",
        options: ["The receptor phosphorylates ATP", "The G protein binds to the receptor and releases a GDP molecule", "The G protein exchanges GDP for GTP", "The receptor dimerizes with another GPCR"].shuffled(),
        correctAnswer: "The G protein exchanges GDP for GTP",
        explanation: "Upon activation, the GPCR causes the associated G protein to exchange GDP for GTP, which activates the G protein and leads to signal transduction.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following is a characteristic feature of receptor tyrosine kinases (RTKs)?",
        options: ["They are located in the nucleus", "They form dimers upon ligand binding", "They are activated by GTP binding", "They do not require phosphorylation to activate signaling pathways"].shuffled(),
        correctAnswer: "They form dimers upon ligand binding",
        explanation: "Receptor tyrosine kinases (RTKs) dimerize when ligands bind to them, and this dimerization leads to phosphorylation of tyrosine residues on the receptors, initiating a signaling cascade.",
        unit: 4
    ),
    TestQuestion(
        question: "What is the function of the enzyme phospholipase C in cell signaling?",
        options: ["To convert ATP to cAMP", "To cleave phosphoinositides into second messengers", "To activate protein kinase A", "To degrade GTP"].shuffled(),
        correctAnswer: "To cleave phosphoinositides into second messengers",
        explanation: "Phospholipase C cleaves phosphatidylinositol bisphosphate (PIP2) into inositol trisphosphate (IP3) and diacylglycerol (DAG), which act as second messengers in signaling pathways.",
        unit: 4
    ),
    TestQuestion(
        question: "In the MAPK signaling pathway, what is the role of mitogen-activated protein kinases (MAPKs)?",
        options: ["They act as second messengers", "They phosphorylate and activate transcription factors", "They hydrolyze GTP", "They transport signals to the nucleus"].shuffled(),
        correctAnswer: "They phosphorylate and activate transcription factors",
        explanation: "MAPKs (mitogen-activated protein kinases) are part of a signaling cascade that ultimately leads to the phosphorylation and activation of transcription factors, affecting gene expression.",
        unit: 4
    ),
    TestQuestion(
        question: "What type of signaling involves the transmission of signals from a cell to nearby cells?",
        options: ["Autocrine signaling", "Paracrine signaling", "Endocrine signaling", "Juxtacrine signaling"].shuffled(),
        correctAnswer: "Paracrine signaling",
        explanation: "Paracrine signaling involves the transmission of signals to nearby cells, often through the release of signaling molecules into the extracellular space.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following is true of apoptosis?",
        options: ["It is an irreversible process", "It involves the rapid release of intracellular contents", "It can be triggered by external signals such as death ligands", "It always results in cell proliferation"].shuffled(),
        correctAnswer: "It can be triggered by external signals such as death ligands",
        explanation: "Apoptosis is programmed cell death that can be triggered by external signals such as death ligands (e.g., Fas ligand) binding to cell surface receptors.",
        unit: 4
    ),
    TestQuestion(
        question: "What is the function of the protein p53 in the context of cell signaling?",
        options: ["It inhibits apoptosis", "It promotes the repair of damaged DNA or induces cell cycle arrest", "It activates G-protein coupled receptors", "It catalyzes ATP production"].shuffled(),
        correctAnswer: "It promotes the repair of damaged DNA or induces cell cycle arrest",
        explanation: "p53 is a tumor suppressor protein that plays a critical role in regulating the cell cycle and DNA repair, promoting repair of damaged DNA or inducing cell cycle arrest.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following is true regarding signal amplification in a signaling cascade?",
        options: ["Each step in the pathway results in fewer molecules being activated", "The signal becomes weaker as it passes through each step", "At each step, the number of molecules involved increases", "Amplification only occurs in intracellular signaling pathways"].shuffled(),
        correctAnswer: "At each step, the number of molecules involved increases",
        explanation: "Signal amplification occurs in signaling cascades, where each step activates multiple molecules, allowing a small initial signal to result in a large cellular response.",
        unit: 4
    ),
    TestQuestion(
        question: "What is the role of cyclic AMP (cAMP) in cell signaling?",
        options: ["It binds to receptors on the plasma membrane", "It activates protein kinase A (PKA)", "It hydrolyzes ATP to ADP", "It phosphorylates receptor tyrosine kinases"].shuffled(),
        correctAnswer: "It activates protein kinase A (PKA)",
        explanation: "cAMP acts as a second messenger and activates protein kinase A (PKA), which then phosphorylates various target proteins to mediate cellular responses.",
        unit: 4
    ),
    TestQuestion(
        question: "In the process of signal transduction, what does a ligand bind to in order to initiate a cellular response?",
        options: ["Receptor proteins", "Second messengers", "ATP molecules", "DNA sequences"].shuffled(),
        correctAnswer: "Receptor proteins",
        explanation: "In signal transduction, a ligand binds to a receptor protein on the cell surface or inside the cell, triggering a cascade of molecular events that lead to a cellular response.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following is true of ion channel-linked receptors?",
        options: ["They function through a G-protein coupled signaling pathway", "They change shape when bound by their ligand, allowing ions to pass through the membrane", "They release second messengers", "They only respond to steroid hormones"].shuffled(),
        correctAnswer: "They change shape when bound by their ligand, allowing ions to pass through the membrane",
        explanation: "Ion channel-linked receptors, also known as ligand-gated ion channels, change shape when bound by a ligand, allowing ions to flow through the membrane and trigger cellular responses.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following is an example of juxtacrine signaling?",
        options: ["Cell signaling through gap junctions", "Release of hormones into the bloodstream", "Ligand binding to a G-protein coupled receptor", "Binding of growth factors to receptors on nearby cells"].shuffled(),
        correctAnswer: "Cell signaling through gap junctions",
        explanation: "Juxtacrine signaling involves direct communication between adjacent cells, often through gap junctions, where molecules pass directly between cells.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following best describes the role of the ligand in receptor-mediated endocytosis?",
        options: ["The ligand stimulates the release of intracellular proteins", "The ligand activates a G protein", "The ligand binds to the receptor on the cell surface, triggering internalization", "The ligand transports molecules into the cell through a channel"].shuffled(),
        correctAnswer: "The ligand binds to the receptor on the cell surface, triggering internalization",
        explanation: "In receptor-mediated endocytosis, the ligand binds to a receptor on the cell surface, triggering the internalization of the ligand-receptor complex into the cell.",
        unit: 4
    ),
    TestQuestion(
        question: "What type of molecule is typically used to relay a signal inside the cell after the receptor has been activated?",
        options: ["Proteins", "Lipids", "Nucleic acids", "Sugars"].shuffled(),
        correctAnswer: "Proteins",
        explanation: "After a receptor is activated, proteins, such as second messengers or kinases, relay the signal inside the cell to effect changes in cellular activity.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following is a characteristic feature of signal transduction pathways that involve second messengers?",
        options: ["They involve direct DNA binding by the receptor", "They typically amplify the initial signal", "They involve the synthesis of proteins within the nucleus", "They require oxygen as a cofactor"].shuffled(),
        correctAnswer: "They typically amplify the initial signal",
        explanation: "Signal transduction pathways involving second messengers amplify the initial signal at various points in the pathway, allowing for a stronger cellular response.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following is a result of signal transduction pathways being tightly regulated?",
        options: ["Increased risk of uncontrolled cell growth", "Decreased response to external signals", "Normal cellular processes can be disrupted", "Accurate cellular responses are ensured"].shuffled(),
        correctAnswer: "Accurate cellular responses are ensured",
        explanation: "Tightly regulated signal transduction pathways ensure that cellular responses to external signals are accurate and appropriate for the cell's needs.",
        unit: 4
    ),
    TestQuestion(
        question: "What does the term 'signal amplification' refer to in signal transduction?",
        options: ["The receptor releases more signaling molecules", "The cell membrane expands to accommodate more receptors", "Each step in the signaling pathway produces multiple copies of the signal", "The cell responds more quickly to external signals"].shuffled(),
        correctAnswer: "Each step in the signaling pathway produces multiple copies of the signal",
        explanation: "Signal amplification occurs when each step in the pathway leads to the activation of many molecules, making the response more substantial than the original signal.",
        unit: 4
    ),
    TestQuestion(
        question: "Which phase of the cell cycle is characterized by the synthesis of new DNA?",
        options: ["G1 phase", "S phase", "G2 phase", "M phase"].shuffled(),
        correctAnswer: "S phase",
        explanation: "The S phase is the stage of the cell cycle in which DNA is synthesized in preparation for cell division.",
        unit: 4
    ),
    TestQuestion(
        question: "Which checkpoint of the cell cycle ensures that DNA replication has been completed before mitosis?",
        options: ["G1 checkpoint", "G2 checkpoint", "Metaphase checkpoint", "Anaphase checkpoint"].shuffled(),
        correctAnswer: "G2 checkpoint",
        explanation: "The G2 checkpoint ensures that DNA has been accurately replicated before the cell enters mitosis.",
        unit: 4
    ),
    TestQuestion(
        question: "What is the function of cyclins in the regulation of the cell cycle?",
        options: ["They inhibit cell division", "They activate cyclin-dependent kinases (CDKs)", "They are involved in DNA repair", "They stop the progression of the cell cycle at checkpoints"].shuffled(),
        correctAnswer: "They activate cyclin-dependent kinases (CDKs)",
        explanation: "Cyclins bind to cyclin-dependent kinases (CDKs), activating them to drive the progression of the cell cycle.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following is a key event in mitosis?",
        options: ["The nuclear envelope breaks down", "Chromosomes replicate", "DNA is synthesized", "The cell grows in size"].shuffled(),
        correctAnswer: "The nuclear envelope breaks down",
        explanation: "During mitosis, one key event is the breakdown of the nuclear envelope, allowing the chromosomes to move toward opposite poles of the cell.",
        unit: 4
    ),
    TestQuestion(
        question: "In which phase of mitosis do the chromosomes line up at the cell's equatorial plate?",
        options: ["Prophase", "Metaphase", "Anaphase", "Telophase"].shuffled(),
        correctAnswer: "Metaphase",
        explanation: "In metaphase, chromosomes align at the cell's equatorial plate, preparing for separation into two daughter cells.",
        unit: 4
    ),
    TestQuestion(
        question: "Which structure is responsible for pulling sister chromatids apart during mitosis?",
        options: ["Spindle fibers", "Centromere", "Chromatin", "Nucleolus"].shuffled(),
        correctAnswer: "Spindle fibers",
        explanation: "Spindle fibers, originating from the centrioles, attach to the centromeres and pull the sister chromatids apart during anaphase.",
        unit: 4
    ),
    TestQuestion(
        question: "What happens during telophase of mitosis?",
        options: ["Chromosomes condense", "The nuclear envelope reforms around the chromatids", "Spindle fibers attach to the chromosomes", "Chromosomes align at the equator of the cell"].shuffled(),
        correctAnswer: "The nuclear envelope reforms around the chromatids",
        explanation: "During telophase, the nuclear envelope reforms around each set of chromosomes, which begin to decondense.",
        unit: 4
    ),
    TestQuestion(
        question: "In which phase of the cell cycle does the cell grow and prepare for DNA replication?",
        options: ["G1 phase", "S phase", "G2 phase", "M phase"].shuffled(),
        correctAnswer: "G1 phase",
        explanation: "In G1 phase, the cell grows, produces proteins, and prepares for DNA replication in the subsequent S phase.",
        unit: 4
    ),
    TestQuestion(
        question: "What is the role of the mitotic spindle in mitosis?",
        options: ["It replicates DNA", "It separates the cytoplasm between daughter cells", "It helps to separate chromosomes into two daughter cells", "It controls the progression of the cell cycle"].shuffled(),
        correctAnswer: "It helps to separate chromosomes into two daughter cells",
        explanation: "The mitotic spindle is responsible for separating the sister chromatids and ensuring accurate distribution to the daughter cells.",
        unit: 4
    ),
    TestQuestion(
        question: "Which of the following is the primary function of the cell cycle's G0 phase?",
        options: ["Cell division", "DNA synthesis", "Cellular growth", "Resting state or non-dividing state"].shuffled(),
        correctAnswer: "Resting state or non-dividing state",
        explanation: "Cells in the G0 phase are in a resting state, where they are not actively dividing but still carry out normal functions.",
        unit: 4
    ),
    TestQuestion(
        question: "What is a key feature of cancer cells related to the cell cycle?",
        options: ["They have an increased number of cyclins", "They lack checkpoints to control the cell cycle", "They undergo apoptosis more frequently", "They only divide during G0 phase"].shuffled(),
        correctAnswer: "They lack checkpoints to control the cell cycle",
        explanation: "Cancer cells often bypass key checkpoints in the cell cycle, allowing uncontrolled cell division and the potential for tumor formation.",
        unit: 4
    ),
    TestQuestion(
        question: "During which stage of the cell cycle does the cell prepare for mitosis by producing necessary proteins?",
        options: ["G1 phase", "S phase", "G2 phase", "M phase"].shuffled(),
        correctAnswer: "G2 phase",
        explanation: "During the G2 phase, the cell synthesizes proteins required for mitosis and checks for DNA errors before entering the M phase.",
        unit: 4
    ),
    TestQuestion(
        question: "What happens during prophase of mitosis?",
        options: ["The chromatin condenses into chromosomes", "The nuclear envelope forms", "The spindle fibers break down", "The centromeres align at the cell's equator"].shuffled(),
        correctAnswer: "The chromatin condenses into chromosomes",
        explanation: "In prophase, chromatin condenses into visible chromosomes, and the mitotic spindle begins to form.",
        unit: 4
    ),
    TestQuestion(
        question: "What is the primary purpose of meiosis?",
        options: ["To produce genetically identical cells", "To create four haploid cells with half the chromosome number", "To duplicate DNA", "To repair damaged chromosomes"].shuffled(),
        correctAnswer: "To create four haploid cells with half the chromosome number",
        explanation: "Meiosis reduces the chromosome number by half, producing haploid gametes (sperm and egg cells) for sexual reproduction.",
        unit: 5
    ),
    TestQuestion(
        question: "During which phase of meiosis does crossing over occur?",
        options: ["Prophase I", "Metaphase I", "Anaphase I", "Telophase I"].shuffled(),
        correctAnswer: "Prophase I",
        explanation: "Crossing over occurs during Prophase I of meiosis, where homologous chromosomes exchange segments, increasing genetic diversity.",
        unit: 5
    ),
    TestQuestion(
        question: "Which of the following best describes anaphase I of meiosis?",
        options: ["Sister chromatids separate", "Homologous chromosomes separate", "Chromosomes line up at the equator", "Crossing over occurs"].shuffled(),
        correctAnswer: "Homologous chromosomes separate",
        explanation: "In Anaphase I, homologous chromosomes are pulled to opposite poles, reducing the chromosome number by half.",
        unit: 5
    ),
    TestQuestion(
        question: "How many daughter cells are produced at the end of meiosis?",
        options: ["Two", "Four", "Eight", "Sixteen"].shuffled(),
        correctAnswer: "Four",
        explanation: "Meiosis results in four haploid daughter cells, each with half the number of chromosomes as the parent cell.",
        unit: 5
    ),
    TestQuestion(
        question: "What is the difference between meiosis I and meiosis II?",
        options: ["Meiosis I involves chromosome replication, meiosis II does not", "Meiosis I results in haploid cells, meiosis II does not", "Meiosis I separates homologous chromosomes, meiosis II separates sister chromatids", "Meiosis I occurs in the somatic cells, meiosis II in the gametes"].shuffled(),
        correctAnswer: "Meiosis I separates homologous chromosomes, meiosis II separates sister chromatids",
        explanation: "In Meiosis I, homologous chromosomes are separated, while in Meiosis II, sister chromatids are separated, similar to mitosis.",
        unit: 5
    ),
    TestQuestion(
        question: "What is independent assortment in meiosis?",
        options: ["Homologous chromosomes are randomly distributed to daughter cells", "Sister chromatids are randomly distributed to daughter cells", "The chromosomes align in pairs at the equator", "Crossing over occurs between homologous chromosomes"].shuffled(),
        correctAnswer: "Homologous chromosomes are randomly distributed to daughter cells",
        explanation: "Independent assortment refers to the random distribution of homologous chromosomes to the daughter cells during meiosis I, contributing to genetic diversity.",
        unit: 5
    ),
    TestQuestion(
        question: "What is the significance of meiosis in sexual reproduction?",
        options: ["It produces genetically identical offspring", "It ensures that offspring inherit only one set of chromosomes from each parent", "It increases the chromosome number in gametes", "It allows for asexual reproduction"].shuffled(),
        correctAnswer: "It ensures that offspring inherit only one set of chromosomes from each parent",
        explanation: "Meiosis ensures that each gamete (sperm or egg) has half the chromosome number of the parent cell, maintaining the stability of the chromosome number in the species after fertilization.",
        unit: 5
    ),
    TestQuestion(
        question: "At which stage of meiosis do homologous chromosomes pair up?",
        options: ["Prophase I", "Metaphase I", "Anaphase I", "Telophase I"].shuffled(),
        correctAnswer: "Prophase I",
        explanation: "During Prophase I, homologous chromosomes pair up through synapsis, forming tetrads, which is crucial for crossing over.",
        unit: 5
    ),
    TestQuestion(
        question: "What is the result of meiosis in terms of chromosome number?",
        options: ["Chromosome number is doubled", "Chromosome number is halved", "Chromosome number stays the same", "Chromosome number varies"].shuffled(),
        correctAnswer: "Chromosome number is halved",
        explanation: "Meiosis reduces the chromosome number by half, ensuring that fertilization restores the diploid number in the zygote.",
        unit: 5
    ),
    TestQuestion(
        question: "Which process contributes to genetic diversity during meiosis?",
        options: ["DNA replication", "Crossing over", "Cell division", "Cytokinesis"].shuffled(),
        correctAnswer: "Crossing over",
        explanation: "Crossing over during Prophase I results in the exchange of genetic material between homologous chromosomes, increasing genetic variation.",
        unit: 5
    ),
    TestQuestion(
        question: "What is the law of segregation?",
        options: ["Each gene has two alleles, one inherited from each parent", "Different genes are inherited independently of each other", "Genes on different chromosomes segregate randomly during meiosis", "Alleles for the same gene separate during gamete formation"].shuffled(),
        correctAnswer: "Alleles for the same gene separate during gamete formation",
        explanation: "The law of segregation states that during meiosis, the two alleles for a gene segregate so that each gamete carries only one allele.",
        unit: 5
    ),
    TestQuestion(
        question: "What does a Punnett square predict?",
        options: ["The genotypes of offspring", "The phenotypes of offspring", "The probability of genetic mutations", "The inheritance of sex chromosomes"].shuffled(),
        correctAnswer: "The genotypes of offspring",
        explanation: "A Punnett square is used to predict the genotypes and, by extension, the phenotypes of offspring based on the genetic makeup of the parents.",
        unit: 5
    ),
    TestQuestion(
        question: "In a monohybrid cross between two heterozygous individuals (Aa x Aa), what is the probability of producing offspring with the homozygous recessive phenotype?",
        options: ["0%", "25%", "50%", "75%"].shuffled(),
        correctAnswer: "25%",
        explanation: "In a monohybrid cross of Aa x Aa, the probability of a homozygous recessive genotype (aa) is 25%.",
        unit: 5
    ),
    TestQuestion(
        question: "If a plant with red flowers (RR) is crossed with a plant with white flowers (rr), what color flowers will the F1 generation have?",
        options: ["Red", "White", "Pink", "Purple"].shuffled(),
        correctAnswer: "Red",
        explanation: "The F1 generation will all inherit one red allele from the RR parent and one white allele from the rr parent, resulting in a red flower phenotype.",
        unit: 5
    ),
    TestQuestion(
        question: "What is the genotype of an organism with a dominant phenotype but an unknown genotype?",
        options: ["Homozygous dominant", "Homozygous recessive", "Heterozygous", "Cannot be determined without testing"].shuffled(),
        correctAnswer: "Cannot be determined without testing",
        explanation: "An organism with a dominant phenotype could be either homozygous dominant or heterozygous, so a test cross is needed to determine its genotype.",
        unit: 5
    ),
    TestQuestion(
        question: "In Mendelian genetics, which of the following terms refers to the physical expression of an organism’s genetic makeup?",
        options: ["Genotype", "Phenotype", "Allele", "Locus"].shuffled(),
        correctAnswer: "Phenotype",
        explanation: "The phenotype refers to the observable traits or characteristics of an organism, determined by its genotype and environmental factors.",
        unit: 5
    ),
    TestQuestion(
        question: "What is the expected phenotypic ratio of a monohybrid cross between two heterozygous individuals (Aa x Aa)?",
        options: ["1:1", "3:1", "2:1", "4:0"].shuffled(),
        correctAnswer: "3:1",
        explanation: "The expected phenotypic ratio of a monohybrid cross between Aa x Aa is 3:1, with 3 offspring showing the dominant phenotype and 1 showing the recessive phenotype.",
        unit: 5
    ),
    TestQuestion(
        question: "Which of the following is an example of a homozygous dominant genotype?",
        options: ["AA", "Aa", "aa", "Ab"].shuffled(),
        correctAnswer: "AA",
        explanation: "A homozygous dominant genotype consists of two copies of the dominant allele (AA).",
        unit: 5
    ),
    TestQuestion(
        question: "What is the main idea behind Mendel’s law of independent assortment?",
        options: ["Genes on the same chromosome are inherited together", "The inheritance of one gene does not affect the inheritance of another gene", "Recessive traits are always masked by dominant traits", "Chromosomes are inherited in pairs"].shuffled(),
        correctAnswer: "The inheritance of one gene does not affect the inheritance of another gene",
        explanation: "Mendel's law of independent assortment states that genes located on different chromosomes are inherited independently of each other.",
        unit: 5
    ),
    TestQuestion(
        question: "What is incomplete dominance?",
        options: ["Both alleles are expressed equally", "The dominant allele completely masks the recessive allele", "The heterozygous phenotype is a blend of the two alleles", "The recessive allele is only expressed in homozygous individuals"].shuffled(),
        correctAnswer: "The heterozygous phenotype is a blend of the two alleles",
        explanation: "In incomplete dominance, the heterozygous phenotype is a mixture of the two alleles, such as red and white flowers producing pink flowers.",
        unit: 5
    ),
    TestQuestion(
        question: "Which of the following is an example of codominance?",
        options: ["AB blood type", "Pink flowers from red and white flowers", "A man with blue eyes and his offspring having brown eyes", "A plant with red flowers crossing with a plant with white flowers"].shuffled(),
        correctAnswer: "AB blood type",
        explanation: "Codominance occurs when both alleles contribute equally and visibly to the phenotype, as in the case of AB blood type where both A and B alleles are expressed.",
        unit: 5
    ),
    TestQuestion(
        question: "What is X-linked inheritance?",
        options: ["Traits inherited through the Y chromosome", "Traits controlled by genes on the X chromosome", "The inheritance of traits controlled by autosomal chromosomes", "The inheritance of traits not linked to any chromosome"].shuffled(),
        correctAnswer: "Traits controlled by genes on the X chromosome",
        explanation: "X-linked inheritance refers to traits controlled by genes located on the X chromosome, often affecting males more severely since they only have one X chromosome.",
        unit: 5
    ),
    TestQuestion(
        question: "Which type of inheritance pattern does not follow Mendel’s laws of inheritance?",
        options: ["Polygenic inheritance", "Mendelian inheritance", "Codominance", "Incomplete dominance"].shuffled(),
        correctAnswer: "Polygenic inheritance",
        explanation: "Polygenic inheritance involves the combined effect of multiple genes on a single phenotype, which does not follow Mendel’s simple dominant-recessive pattern.",
        unit: 5
    ),
    TestQuestion(
        question: "In mitochondrial inheritance, from whom do offspring inherit their mitochondria?",
        options: ["Father", "Mother", "Both parents", "Neither parent"].shuffled(),
        correctAnswer: "Mother",
        explanation: "Mitochondrial DNA is inherited maternally, meaning offspring inherit their mitochondria exclusively from their mother.",
        unit: 5
    ),
    TestQuestion(
        question: "If a man with blood type AB and a woman with blood type O have a child, what possible blood types can the child have?",
        options: ["A, B, AB, O", "A or B", "A or O", "B or O"].shuffled(),
        correctAnswer: "A or B",
        explanation: "The child can inherit either the A or B allele from the father and the O allele from the mother, resulting in either type A or type B blood.",
        unit: 5
    ),
    TestQuestion(
        question: "Which of the following is an example of an environmental factor affecting phenotype?",
        options: ["Skin color affected by exposure to sunlight", "Flower color determined by dominant alleles", "Height influenced by the genotype", "Blood type determined by alleles"].shuffled(),
        correctAnswer: "Skin color affected by exposure to sunlight",
        explanation: "Environmental factors such as exposure to sunlight can affect phenotypes like skin color, which may darken with increased sun exposure.",
        unit: 5
    ),
    TestQuestion(
        question: "Which of the following is an example of a phenotypic trait influenced by the environment?",
        options: ["Eye color", "Height", "Blood type", "Flower petal color due to dominant alleles"].shuffled(),
        correctAnswer: "Height",
        explanation: "Height is influenced by both genetic factors and environmental factors, such as nutrition and overall health.",
        unit: 5
    ),
    TestQuestion(
        question: "What is an example of an environmental effect on the expression of a gene?",
        options: ["The coat color of a Himalayan rabbit influenced by temperature", "Blood type of a child determined by the parents' genotypes", "The number of freckles on a person", "The presence of an extra finger due to a genetic mutation"].shuffled(),
        correctAnswer: "The coat color of a Himalayan rabbit influenced by temperature",
        explanation: "In Himalayan rabbits, coat color is determined by an allele that is expressed only at cooler temperatures, demonstrating an environmental influence on phenotype.",
        unit: 5
    ),
    TestQuestion(
        question: "How does the temperature affect the fur color of arctic foxes?",
        options: ["Hot temperatures darken their fur", "Cold temperatures lighten their fur", "Cold temperatures darken their fur", "Temperature has no effect on their fur color"].shuffled(),
        correctAnswer: "Cold temperatures lighten their fur",
        explanation: "Arctic foxes have fur that changes color depending on the temperature, with their fur becoming lighter in colder conditions to help them blend into snowy environments.",
        unit: 5
    ),
    TestQuestion(
        question: "Which of the following correctly describes the structure of DNA?",
        options: ["Single-stranded helix", "Double-stranded helix with complementary base pairs", "Triple-stranded helix", "Double-stranded linear structure without base pairs"].shuffled(),
        correctAnswer: "Double-stranded helix with complementary base pairs",
        explanation: "DNA consists of two strands forming a double helix, with complementary base pairs (A-T, C-G) connecting the two strands.",
        unit: 6
    ),
    TestQuestion(
        question: "Which of the following is a characteristic of RNA that distinguishes it from DNA?",
        options: ["RNA is double-stranded", "RNA contains thymine", "RNA contains ribose sugar", "RNA does not contain uracil"].shuffled(),
        correctAnswer: "RNA contains ribose sugar",
        explanation: "RNA is single-stranded and contains ribose as its sugar, while DNA contains deoxyribose and uses thymine, whereas RNA uses uracil.",
        unit: 6
    ),
    TestQuestion(
        question: "What is the role of the nitrogenous base thymine in DNA?",
        options: ["It pairs with guanine", "It pairs with adenine", "It pairs with cytosine", "It pairs with uracil"].shuffled(),
        correctAnswer: "It pairs with adenine",
        explanation: "Thymine (T) in DNA forms a base pair with adenine (A) through two hydrogen bonds.",
        unit: 6
    ),
    TestQuestion(
        question: "In RNA, what base pairs with adenine?",
        options: ["Guanine", "Cytosine", "Thymine", "Uracil"].shuffled(),
        correctAnswer: "Uracil",
        explanation: "In RNA, adenine pairs with uracil (U) instead of thymine (T), which is found in DNA.",
        unit: 6
    ),
    TestQuestion(
        question: "Which part of the nucleotide structure of DNA carries the genetic information?",
        options: ["The phosphate group", "The nitrogenous base", "The ribose sugar", "The hydroxyl group"].shuffled(),
        correctAnswer: "The nitrogenous base",
        explanation: "The nitrogenous base of a nucleotide carries the genetic information, with different bases (A, T, C, G) encoding the genetic instructions.",
        unit: 6
    ),
    TestQuestion(
        question: "What is the main function of helicase in DNA replication?",
        options: ["To synthesize the new DNA strand", "To unwind the DNA double helix", "To repair DNA damage", "To separate the two strands of RNA"].shuffled(),
        correctAnswer: "To unwind the DNA double helix",
        explanation: "Helicase is an enzyme that unwinds the DNA double helix, creating single-stranded regions that serve as templates for replication.",
        unit: 6
    ),
    TestQuestion(
        question: "Which enzyme is responsible for adding nucleotides during DNA replication?",
        options: ["Ligase", "Helicase", "DNA polymerase", "Primase"].shuffled(),
        correctAnswer: "DNA polymerase",
        explanation: "DNA polymerase adds nucleotides to the growing DNA strand, ensuring the accurate synthesis of a complementary strand.",
        unit: 6
    ),
    TestQuestion(
        question: "What is the purpose of the RNA primer in DNA replication?",
        options: ["To add nucleotides to the lagging strand", "To initiate DNA replication", "To stabilize the replication fork", "To repair damaged DNA"].shuffled(),
        correctAnswer: "To initiate DNA replication",
        explanation: "The RNA primer provides a starting point for DNA polymerase to begin adding nucleotides to the new DNA strand.",
        unit: 6
    ),
    TestQuestion(
        question: "In which direction does DNA replication occur?",
        options: ["From 3' to 5'", "From 5' to 3'", "In both directions simultaneously", "Randomly"].shuffled(),
        correctAnswer: "From 5' to 3'",
        explanation: "DNA replication occurs in the 5' to 3' direction on the newly synthesized strand, following the rules of complementarity between bases.",
        unit: 6
    ),
    TestQuestion(
        question: "Which strand is synthesized discontinuously during DNA replication?",
        options: ["Leading strand", "Lagging strand", "Both strands", "Neither strand"].shuffled(),
        correctAnswer: "Lagging strand",
        explanation: "The lagging strand is synthesized discontinuously in short segments called Okazaki fragments, while the leading strand is synthesized continuously.",
        unit: 6
    ),
    TestQuestion(
        question: "What is the role of RNA polymerase during transcription?",
        options: ["To unwind the DNA helix", "To add nucleotides to the growing RNA strand", "To attach the ribosome to the mRNA", "To replicate the DNA strand"].shuffled(),
        correctAnswer: "To add nucleotides to the growing RNA strand",
        explanation: "RNA polymerase reads the DNA template and adds complementary RNA nucleotides to form an RNA strand.",
        unit: 6
    ),
    TestQuestion(
        question: "What happens during RNA processing in eukaryotic cells?",
        options: ["Exons are removed and introns are spliced together", "Exons are spliced out and introns are retained", "A 5' cap and a poly-A tail are added", "The RNA is used directly for translation"].shuffled(),
        correctAnswer: "A 5' cap and a poly-A tail are added",
        explanation: "In eukaryotic RNA processing, a 5' cap and a poly-A tail are added to the mRNA to protect it and aid in translation.",
        unit: 6
    ),
    TestQuestion(
        question: "What are introns in RNA?",
        options: ["Coding regions", "Non-coding regions", "Exons", "Poly-A tails"].shuffled(),
        correctAnswer: "Non-coding regions",
        explanation: "Introns are non-coding regions of RNA that are spliced out during RNA processing, while exons are the coding regions that remain in the final mRNA.",
        unit: 6
    ),
    TestQuestion(
        question: "In prokaryotes, where does transcription occur?",
        options: ["In the nucleus", "In the cytoplasm", "In the mitochondria", "In the chloroplast"].shuffled(),
        correctAnswer: "In the cytoplasm",
        explanation: "In prokaryotes, transcription occurs in the cytoplasm because these cells lack a nucleus.",
        unit: 6
    ),
    TestQuestion(
        question: "What is the purpose of the 5' cap added to eukaryotic mRNA during RNA processing?",
        options: ["To protect the mRNA from degradation", "To facilitate translation", "To help the mRNA exit the nucleus", "All of the above"].shuffled(),
        correctAnswer: "All of the above",
        explanation: "The 5' cap protects mRNA from degradation, helps it exit the nucleus, and assists in translation initiation.",
        unit: 6
    ),
    TestQuestion(
        question: "Where does translation occur in the cell?",
        options: ["Nucleus", "Cytoplasm", "Mitochondria", "Endoplasmic reticulum"].shuffled(),
        correctAnswer: "Cytoplasm",
        explanation: "Translation occurs in the cytoplasm, where ribosomes translate mRNA into protein.",
        unit: 6
    ),
    TestQuestion(
        question: "What is the role of tRNA in translation?",
        options: ["To carry amino acids to the ribosome", "To synthesize mRNA", "To form the ribosome", "To unwind the DNA template"].shuffled(),
        correctAnswer: "To carry amino acids to the ribosome",
        explanation: "tRNA (transfer RNA) carries amino acids to the ribosome, where they are added to the growing polypeptide chain based on the mRNA sequence.",
        unit: 6
    ),
    TestQuestion(
        question: "What is the first step in translation?",
        options: ["Elongation", "Termination", "Initiation", "Transcription"].shuffled(),
        correctAnswer: "Initiation",
        explanation: "Translation begins with initiation, where the ribosome assembles around the mRNA and the first tRNA binds to the start codon.",
        unit: 6
    ),
    TestQuestion(
        question: "Which codon signals the start of translation?",
        options: ["UAA", "UGA", "AUG", "UAG"].shuffled(),
        correctAnswer: "AUG",
        explanation: "The codon AUG signals the start of translation and codes for methionine, the first amino acid in the polypeptide chain.",
        unit: 6
    ),
    TestQuestion(
        question: "Which of the following molecules is directly responsible for the synthesis of proteins?",
        options: ["mRNA", "tRNA", "DNA", "Ribosomes"].shuffled(),
        correctAnswer: "Ribosomes",
        explanation: "Ribosomes are the sites of protein synthesis, where mRNA is translated into a polypeptide chain.",
        unit: 6
    ),
    TestQuestion(
        question: "What is the function of the promoter in gene expression?",
        options: ["To encode the protein", "To bind RNA polymerase and initiate transcription", "To stop transcription", "To bind the ribosome"].shuffled(),
        correctAnswer: "To bind RNA polymerase and initiate transcription",
        explanation: "The promoter is a region of DNA where RNA polymerase binds to begin transcription of the gene.",
        unit: 6
    ),
    TestQuestion(
        question: "Which of the following is a way gene expression can be regulated?",
        options: ["Transcriptional regulation", "Post-transcriptional regulation", "Translational regulation", "All of the above"].shuffled(),
        correctAnswer: "All of the above",
        explanation: "Gene expression can be regulated at multiple levels, including transcription, RNA processing, and translation.",
        unit: 6
    ),
    TestQuestion(
        question: "What is an operon?",
        options: ["A segment of DNA that controls protein synthesis", "A group of genes regulated together", "A type of RNA molecule", "A mutation in a gene"].shuffled(),
        correctAnswer: "A group of genes regulated together",
        explanation: "An operon is a cluster of genes that are regulated together and typically function in a related metabolic pathway.",
        unit: 6
    ),
    TestQuestion(
        question: "Which of the following is a type of transcriptional regulation?",
        options: ["Histone modification", "RNA splicing", "Translation initiation", "Codon recognition"].shuffled(),
        correctAnswer: "Histone modification",
        explanation: "Histone modification is a form of transcriptional regulation where changes in chromatin structure affect gene expression.",
        unit: 6
    ),
    TestQuestion(
        question: "What role does the lac operon play in bacterial gene expression?",
        options: ["It controls the breakdown of lactose", "It inhibits transcription of the lactose genes", "It enhances the translation of lactose genes", "It regulates the ribosome function"].shuffled(),
        correctAnswer: "It controls the breakdown of lactose",
        explanation: "The lac operon regulates the genes responsible for the breakdown of lactose in bacteria.",
        unit: 6
    ),
    TestQuestion(
        question: "Which of the following is an example of a point mutation?",
        options: ["Deletion of a nucleotide", "Substitution of one base for another", "Addition of an extra chromosome", "Inversion of a segment of DNA"].shuffled(),
        correctAnswer: "Substitution of one base for another",
        explanation: "A point mutation involves the substitution of one base for another, which can affect the protein's function.",
        unit: 6
    ),
    TestQuestion(
        question: "What is a frameshift mutation?",
        options: ["A mutation that changes a single nucleotide", "A mutation that adds or deletes nucleotides, shifting the reading frame", "A mutation that results in no change to the protein", "A mutation that occurs outside the coding region"].shuffled(),
        correctAnswer: "A mutation that adds or deletes nucleotides, shifting the reading frame",
        explanation: "A frameshift mutation occurs when nucleotides are added or deleted, altering the reading frame and potentially changing the protein's structure.",
        unit: 6
    ),
    TestQuestion(
        question: "Which of the following mutations is most likely to be harmful?",
        options: ["Silent mutation", "Missense mutation", "Nonsense mutation", "Frame shift mutation"].shuffled(),
        correctAnswer: "Frame shift mutation",
        explanation: "Frameshift mutations often result in a completely different amino acid sequence and can disrupt protein function.",
        unit: 6
    ),
    TestQuestion(
        question: "What is a silent mutation?",
        options: ["A mutation that results in a different amino acid", "A mutation that introduces a stop codon", "A mutation that does not change the protein's amino acid sequence", "A mutation that causes a frameshift"].shuffled(),
        correctAnswer: "A mutation that does not change the protein's amino acid sequence",
        explanation: "A silent mutation does not change the amino acid sequence of the protein due to redundancy in the genetic code.",
        unit: 6
    ),
    TestQuestion(
        question: "Which of the following techniques is used to amplify DNA?",
        options: ["Gel electrophoresis", "Polymerase chain reaction (PCR)", "DNA sequencing", "Northern blotting"].shuffled(),
        correctAnswer: "Polymerase chain reaction (PCR)",
        explanation: "PCR is a technique used to amplify specific DNA sequences, creating millions of copies of a target gene.",
        unit: 6
    ),
    TestQuestion(
        question: "What is the primary principle behind the theory of natural selection?",
        options: ["Traits are inherited from parents", "Organisms produce more offspring than the environment can support", "Species are fixed and unchanging", "All organisms have equal reproductive success"].shuffled(),
        correctAnswer: "Organisms produce more offspring than the environment can support",
        explanation: "Natural selection occurs because more organisms are born than can survive, leading to competition for limited resources.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following is a key component of natural selection?",
        options: ["Heritable genetic variation", "Random mutations without impact", "Individuals evolve during their lifetime", "All offspring are genetically identical"].shuffled(),
        correctAnswer: "Heritable genetic variation",
        explanation: "Natural selection depends on genetic variation that is heritable, meaning traits can be passed down to future generations.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following best explains the process of natural selection?",
        options: ["Organisms with traits suited to the environment survive and reproduce more than others", "All traits are equally likely to be passed on to offspring", "Offspring inherit only traits that are beneficial to their survival", "Natural selection operates randomly without regard to traits"].shuffled(),
        correctAnswer: "Organisms with traits suited to the environment survive and reproduce more than others",
        explanation: "Natural selection favors traits that enhance survival and reproductive success in a given environment.",
        unit: 7
    ),
    TestQuestion(
        question: "How does natural selection lead to evolution?",
        options: ["It introduces new genetic material into the population", "It allows individuals to acquire traits during their lifetime", "It selects for traits that increase survival and reproduction", "It guarantees that all individuals in a population will survive"].shuffled(),
        correctAnswer: "It selects for traits that increase survival and reproduction",
        explanation: "Natural selection acts on individuals by favoring those with advantageous traits, which then become more common in the population over generations.",
        unit: 7
    ),
    TestQuestion(
        question: "What is an example of stabilizing selection?",
        options: ["Larger birds surviving during a food shortage", "Moths with light coloration becoming more common in a polluted environment", "Birth weight in humans remaining within a certain range", "Dark-colored beetles thriving in a light-colored environment"].shuffled(),
        correctAnswer: "Birth weight in humans remaining within a certain range",
        explanation: "Stabilizing selection favors individuals with intermediate traits and reduces variation in a population, such as the optimal birth weight range for humans.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following is an example of directional selection?",
        options: ["Moths becoming darker in response to industrial pollution", "Birds with intermediate beak sizes surviving more than others", "Mice with medium fur length thriving in a variable environment", "Butterflies with a balanced wing pattern being selected"].shuffled(),
        correctAnswer: "Moths becoming darker in response to industrial pollution",
        explanation: "Directional selection occurs when one extreme phenotype is favored, leading to a shift in the population’s characteristics, such as the darker moths during the Industrial Revolution.",
        unit: 7
    ),
    TestQuestion(
        question: "What is the key difference between natural selection and artificial selection?",
        options: ["Natural selection is driven by environmental pressures, while artificial selection is driven by human choice", "Natural selection favors genetic diversity, while artificial selection eliminates it", "Artificial selection is based on random chance, while natural selection is predictable", "Natural selection only occurs in animals, while artificial selection occurs in plants"].shuffled(),
        correctAnswer: "Natural selection is driven by environmental pressures, while artificial selection is driven by human choice",
        explanation: "In artificial selection, humans select for specific traits, whereas natural selection is a natural process influenced by environmental factors.",
        unit: 7
    ),
    TestQuestion(
        question: "What is an example of artificial selection?",
        options: ["Breeding dogs for specific traits", "Survival of the fittest in a natural population", "Antibiotic resistance in bacteria", "Increased fruit size in wild plants"].shuffled(),
        correctAnswer: "Breeding dogs for specific traits",
        explanation: "Artificial selection occurs when humans breed organisms to enhance desirable traits, such as selective breeding of dogs for traits like size and temperament.",
        unit: 7
    ),
    TestQuestion(
        question: "What would happen to a population if there were no genetic variation?",
        options: ["The population would be more resilient to changes in the environment", "The population would become extinct", "The population would evolve more rapidly", "The population would exhibit no traits"].shuffled(),
        correctAnswer: "The population would become extinct",
        explanation: "Without genetic variation, a population would have less ability to adapt to environmental changes and could eventually face extinction.",
        unit: 7
    ),
    TestQuestion(
        question: "Which factor is least likely to affect the gene pool of a population?",
        options: ["Mutations", "Gene flow", "Non-random mating", "Climate change"].shuffled(),
        correctAnswer: "Climate change",
        explanation: "While climate change can affect the environment, it doesn't directly influence the genetic makeup of a population like mutation, gene flow, or mating patterns do.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following is a key principle of population genetics?",
        options: ["The gene pool remains constant over time", "Mutations do not affect allele frequencies", "Alleles are fixed and unchanging", "Genetic variation in a population is maintained by random mating"].shuffled(),
        correctAnswer: "Genetic variation in a population is maintained by random mating",
        explanation: "Population genetics studies how genetic variation in populations changes over time, often through processes like mutation, genetic drift, and natural selection.",
        unit: 7
    ),
    TestQuestion(
        question: "What is genetic drift?",
        options: ["The change in allele frequency due to random chance events", "The introduction of new alleles into a population", "The movement of alleles from one population to another", "The selection of beneficial traits over time"].shuffled(),
        correctAnswer: "The change in allele frequency due to random chance events",
        explanation: "Genetic drift occurs when allele frequencies change due to random events, which can have significant effects in small populations.",
        unit: 7
    ),
    TestQuestion(
        question: "What would happen to a population if it was isolated from the rest of the species and had no gene flow?",
        options: ["The gene pool would become more genetically diverse", "The population could evolve into a separate species", "The population would experience more mutation", "The gene pool would remain stable over time"].shuffled(),
        correctAnswer: "The population could evolve into a separate species",
        explanation: "Isolated populations with no gene flow are more likely to evolve independently and could eventually become a distinct species.",
        unit: 7
    ),
    TestQuestion(
        question: "Which condition is required for a population to be in Hardy-Weinberg equilibrium?",
        options: ["Mutations must occur regularly", "Mating must be non-random", "No natural selection or genetic drift", "Migration must be frequent"].shuffled(),
        correctAnswer: "No natural selection or genetic drift",
        explanation: "For Hardy-Weinberg equilibrium, the population must have no natural selection, no genetic drift, random mating, no mutations, and no gene flow.",
        unit: 7
    ),
    TestQuestion(
        question: "If the frequency of an allele is 0.7 in a population, what is the frequency of the homozygous dominant genotype under Hardy-Weinberg equilibrium?",
        options: ["0.49", "0.21", "0.7", "0.3"].shuffled(),
        correctAnswer: "0.49",
        explanation: "Under Hardy-Weinberg equilibrium, the frequency of the homozygous dominant genotype is p^2, where p is the frequency of the dominant allele. In this case, 0.7^2 = 0.49.",
        unit: 7
    ),
    TestQuestion(
        question: "What is the Hardy-Weinberg equation used to calculate?",
        options: ["The allele frequencies in a population", "The number of offspring produced", "The number of mutations in a population", "The frequency of traits in a population"].shuffled(),
        correctAnswer: "The allele frequencies in a population",
        explanation: "The Hardy-Weinberg equation, p^2 + 2pq + q^2 = 1, is used to calculate allele frequencies and genotype distributions in a population under equilibrium conditions.",
        unit: 7
    ),
    TestQuestion(
        question: "What does the variable 'q' represent in the Hardy-Weinberg equation?",
        options: ["The frequency of the recessive allele", "The frequency of the dominant allele", "The frequency of heterozygotes", "The frequency of homozygous recessive individuals"].shuffled(),
        correctAnswer: "The frequency of the recessive allele",
        explanation: "In the Hardy-Weinberg equation, q represents the frequency of the recessive allele, and p represents the dominant allele frequency.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following provides the strongest evidence for evolution?",
        options: ["Fossil records", "Structural similarities between species", "Homologous structures", "All of the above"].shuffled(),
        correctAnswer: "All of the above",
        explanation: "Fossil records, structural similarities, and homologous structures all provide compelling evidence for evolutionary processes and common ancestry.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following is an example of a homologous structure?",
        options: ["The wing of a bat and the arm of a human", "The fin of a fish and the wing of a bird", "The shell of a turtle and the shell of a snail", "The tail of a dog and the tail of a horse"].shuffled(),
        correctAnswer: "The wing of a bat and the arm of a human",
        explanation: "Homologous structures are body parts that are similar due to shared ancestry, such as the wing of a bat and the arm of a human.",
        unit: 7
    ),
    TestQuestion(
        question: "What does the presence of vestigial structures suggest about evolutionary history?",
        options: ["Organisms evolved in response to environmental pressures", "These structures are the result of random genetic changes", "They are evidence of common ancestry", "They serve essential functions in modern organisms"].shuffled(),
        correctAnswer: "They are evidence of common ancestry",
        explanation: "Vestigial structures, such as the human appendix, suggest that organisms share common ancestors with species in which these structures had a functional role.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following is an example of a molecular homology?",
        options: ["Similar amino acid sequences in the proteins of different species", "Similar body plans in different species", "Shared ecological niches between species", "All of the above"].shuffled(),
        correctAnswer: "Similar amino acid sequences in the proteins of different species",
        explanation: "Molecular homology refers to the similarities in the molecular structure, such as protein sequences, between species that share a common evolutionary origin.",
        unit: 7
    ),
    TestQuestion(
        question: "The study of which of the following would provide evidence for adaptive radiation?",
        options: ["A single species that diversifies into many species with different ecological roles", "Species that have the same ecological role in different environments", "Species that show minimal genetic variation", "A population that remains unchanged over time"].shuffled(),
        correctAnswer: "A single species that diversifies into many species with different ecological roles",
        explanation: "Adaptive radiation is the process by which a single species evolves into several different species to fill various ecological niches.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following best defines speciation?",
        options: ["The process by which two populations become genetically distinct species", "The process of genetic drift in small populations", "The formation of new ecological niches", "The elimination of a species due to environmental changes"].shuffled(),
        correctAnswer: "The process by which two populations become genetically distinct species",
        explanation: "Speciation occurs when two populations of the same species become genetically distinct, typically due to reproductive isolation.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following is a key characteristic of allopatric speciation?",
        options: ["Geographic isolation of populations", "The formation of reproductive barriers without geographic separation", "The gradual accumulation of mutations in a population", "No genetic drift occurring within the population"].shuffled(),
        correctAnswer: "Geographic isolation of populations",
        explanation: "Allopatric speciation occurs when populations are geographically isolated and eventually diverge into separate species due to lack of gene flow.",
        unit: 7
    ),
    TestQuestion(
        question: "What does the fossil record primarily provide evidence for?",
        options: ["The extinction of species", "The origin of life", "The gradual changes in species over time", "The theory of creationism"].shuffled(),
        correctAnswer: "The gradual changes in species over time",
        explanation: "The fossil record shows the gradual changes in species over time, providing evidence for the theory of evolution.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following is an example of an extinction event?",
        options: ["The disappearance of the dinosaurs at the end of the Cretaceous", "The diversification of mammals after the mass extinction", "The rise of human civilization", "The gradual reduction in population size of a species"].shuffled(),
        correctAnswer: "The disappearance of the dinosaurs at the end of the Cretaceous",
        explanation: "The mass extinction event at the end of the Cretaceous led to the extinction of the dinosaurs and many other species.",
        unit: 7
    ),
    TestQuestion(
        question: "Which process leads to the formation of new species from an existing population?",
        options: ["Reproductive isolation", "Gene flow", "Homologous recombination", "Genetic drift"].shuffled(),
        correctAnswer: "Reproductive isolation",
        explanation: "Reproductive isolation, when populations can no longer interbreed, is a key factor in the formation of new species.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following best explains the concept of phylogeny?",
        options: ["The evolutionary history of a species", "The study of fossils", "The genetic relationships between species", "The classification of species based on physical traits"].shuffled(),
        correctAnswer: "The evolutionary history of a species",
        explanation: "Phylogeny refers to the evolutionary history and relationships among species, typically represented in a phylogenetic tree.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following is a likely result of environmental changes in a population?",
        options: ["The extinction of certain species", "The stabilization of gene flow", "The increased rate of mutation", "The uniformity of traits across the population"].shuffled(),
        correctAnswer: "The extinction of certain species",
        explanation: "Environmental changes can lead to the extinction of species that are unable to adapt or migrate, especially if they cannot survive the new conditions.",
        unit: 7
    ),
    TestQuestion(
        question: "Which of the following is an example of a behavioral response to an environmental stimulus?",
        options: ["A tree bending toward light", "Birds migrating to warmer climates", "A plant growing towards water", "A rabbit changing its fur color for camouflage"].shuffled(),
        correctAnswer: "Birds migrating to warmer climates",
        explanation: "Migration is a behavioral response to environmental changes such as temperature and seasonal shifts.",
        unit: 8
    ),
    TestQuestion(
        question: "What is the term used for the ability of organisms to maintain stable internal conditions despite external environmental changes?",
        options: ["Homeostasis", "Ecological balance", "Adaptation", "Exaptation"].shuffled(),
        correctAnswer: "Homeostasis",
        explanation: "Homeostasis is the process by which organisms maintain stable internal conditions, such as temperature or pH, despite external environmental changes.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following is an example of a physiological response to environmental changes?",
        options: ["A snake basking in the sun to warm up", "A bear hibernating in winter", "A cactus storing water during dry periods", "All of the above"].shuffled(),
        correctAnswer: "All of the above",
        explanation: "All of these are examples of physiological responses, such as thermoregulation, hibernation, and water storage, to environmental conditions.",
        unit: 8
    ),
    TestQuestion(
        question: "How do animals respond to environmental stresses such as temperature extremes?",
        options: ["By evolving new species", "By producing toxins", "Through behavioral, physiological, and structural adaptations", "By moving to a different ecosystem"].shuffled(),
        correctAnswer: "Through behavioral, physiological, and structural adaptations",
        explanation: "Animals can adapt to temperature extremes through behaviors like migration, physiological changes like producing antifreeze proteins, and structural changes like thicker fur.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following is an example of acclimatization?",
        options: ["A fish developing resistance to high salinity", "A plant changing its color in response to light", "A rabbit growing a thicker coat in winter", "A bird changing its song depending on its surroundings"].shuffled(),
        correctAnswer: "A rabbit growing a thicker coat in winter",
        explanation: "Acclimatization involves temporary, reversible changes in an organism’s physiology to adjust to environmental conditions, such as growing a thicker coat in winter.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following best describes the role of producers in an ecosystem?",
        options: ["They consume primary consumers", "They recycle nutrients in the ecosystem", "They convert solar energy into chemical energy", "They decompose dead organisms"].shuffled(),
        correctAnswer: "They convert solar energy into chemical energy",
        explanation: "Producers (plants, algae, and some bacteria) use sunlight to synthesize food through photosynthesis, converting solar energy into chemical energy.",
        unit: 8
    ),
    TestQuestion(
        question: "What is the primary source of energy for almost all ecosystems on Earth?",
        options: ["Wind energy", "Chemical energy", "Solar energy", "Geothermal energy"].shuffled(),
        correctAnswer: "Solar energy",
        explanation: "Solar energy is the primary source of energy for nearly all ecosystems, as producers use sunlight to generate energy through photosynthesis.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following organisms would be classified as a primary consumer?",
        options: ["A wolf", "A deer", "A snake", "A hawk"].shuffled(),
        correctAnswer: "A deer",
        explanation: "Primary consumers are herbivores that consume plants, such as a deer eating grass.",
        unit: 8
    ),
    TestQuestion(
        question: "What is a food chain?",
        options: ["A circular flow of energy in an ecosystem", "A linear sequence of organisms in an ecosystem, each dependent on the next as a source of food", "A web of energy transfer in an ecosystem", "A system where energy is stored in organisms"].shuffled(),
        correctAnswer: "A linear sequence of organisms in an ecosystem, each dependent on the next as a source of food",
        explanation: "A food chain is a sequence that shows how energy flows from producers to various consumers in an ecosystem.",
        unit: 8
    ),
    TestQuestion(
        question: "In an energy pyramid, why is there less energy at higher trophic levels?",
        options: ["Because energy is lost as heat at each level", "Because the number of organisms decreases at higher levels", "Because predators consume less energy", "Because primary consumers consume too much energy"].shuffled(),
        correctAnswer: "Because energy is lost as heat at each level",
        explanation: "As energy moves up trophic levels, only about 10% of the energy is transferred to the next level, with the rest being lost as heat.",
        unit: 8
    ),
    TestQuestion(
        question: "Which factor is most likely to cause exponential growth in a population?",
        options: ["Limited resources", "Predator-prey interactions", "Abundant resources and no competition", "Increased disease rates"].shuffled(),
        correctAnswer: "Abundant resources and no competition",
        explanation: "Exponential growth occurs when resources are abundant, and there is little competition or predation, allowing populations to grow rapidly.",
        unit: 8
    ),
    TestQuestion(
        question: "What is carrying capacity?",
        options: ["The maximum population size an ecosystem can support", "The population growth rate", "The minimum number of individuals needed for a species to survive", "The size of the ecosystem"].shuffled(),
        correctAnswer: "The maximum population size an ecosystem can support",
        explanation: "Carrying capacity is the maximum number of individuals that an environment can support indefinitely based on available resources.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following is a density-dependent factor that affects population size?",
        options: ["Earthquakes", "Floods", "Food availability", "Temperature changes"].shuffled(),
        correctAnswer: "Food availability",
        explanation: "Density-dependent factors, like food availability, impact populations more as the population density increases, leading to competition for resources.",
        unit: 8
    ),
    TestQuestion(
        question: "What would happen if a population exceeds its carrying capacity?",
        options: ["The population will continue to grow exponentially", "The population will experience a rapid die-off", "The population will stabilize at a higher level", "The carrying capacity will increase"].shuffled(),
        correctAnswer: "The population will experience a rapid die-off",
        explanation: "When a population exceeds its carrying capacity, resources become depleted, leading to competition and a rapid decline in population size.",
        unit: 8
    ),
    TestQuestion(
        question: "What is the term used to describe the average number of offspring produced by each individual in a population?",
        options: ["Fecundity", "Survivorship", "Mortality rate", "Generation time"].shuffled(),
        correctAnswer: "Fecundity",
        explanation: "Fecundity is the reproductive output of an individual, typically measured by the number of offspring produced.",
        unit: 8
    ),
    TestQuestion(
        question: "How does increased population density typically affect disease transmission?",
        options: ["It decreases disease transmission", "It has no effect on disease transmission", "It increases disease transmission", "It leads to a decrease in mortality rates"].shuffled(),
        correctAnswer: "It increases disease transmission",
        explanation: "Increased population density can lead to a higher rate of contact between individuals, facilitating the spread of diseases.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following is an example of a density-independent factor?",
        options: ["Floods", "Food availability", "Competition", "Predation"].shuffled(),
        correctAnswer: "Floods",
        explanation: "Density-independent factors, like floods, affect populations regardless of their density and can cause significant mortality.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following is most likely to decrease the size of a population?",
        options: ["Increased migration", "Increased birth rate", "Higher mortality rate", "More available resources"].shuffled(),
        correctAnswer: "Higher mortality rate",
        explanation: "A higher mortality rate leads to more deaths in a population, which decreases its overall size.",
        unit: 8
    ),
    TestQuestion(
        question: "What does the term 'r-selection' describe in population ecology?",
        options: ["Populations with high growth rates and many offspring", "Populations with low growth rates and few offspring", "Populations that live at or near the carrying capacity", "Populations with equal distribution of reproductive resources"].shuffled(),
        correctAnswer: "Populations with high growth rates and many offspring",
        explanation: "r-selection refers to species that produce many offspring, with little investment in each one, often thriving in unstable environments.",
        unit: 8
    ),
    TestQuestion(
        question: "Which type of population growth is represented by a J-shaped curve?",
        options: ["Exponential growth", "Logistic growth", "Carrying capacity stabilization", "Density-dependent regulation"].shuffled(),
        correctAnswer: "Exponential growth",
        explanation: "Exponential growth occurs when a population grows rapidly without being limited by resources, resulting in a J-shaped curve.",
        unit: 8
    ),
    TestQuestion(
        question: "What is an example of mutualism in community ecology?",
        options: ["Bees pollinating flowers", "A lion hunting a zebra", "A parasite living off its host", "A hawk and an eagle competing for the same nest"].shuffled(),
        correctAnswer: "Bees pollinating flowers",
        explanation: "Mutualism is a relationship where both species benefit, such as bees pollinating flowers while obtaining nectar.",
        unit: 8
    ),
    TestQuestion(
        question: "Which term describes the role of an organism in an ecosystem, including its habitat, interactions, and resources?",
        options: ["Niche", "Community", "Biome", "Trophic level"].shuffled(),
        correctAnswer: "Niche",
        explanation: "An organism’s niche includes its role in the ecosystem, its interactions with other species, and its use of resources.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following describes competitive exclusion?",
        options: ["Two species can coexist if they occupy the same niche", "One species will outcompete and exclude the other species", "Species can share resources equally", "Niche overlap will lead to mutualistic relationships"].shuffled(),
        correctAnswer: "One species will outcompete and exclude the other species",
        explanation: "Competitive exclusion occurs when two species compete for the same resources and one species outcompetes the other, leading to its exclusion from the niche.",
        unit: 8
    ),
    TestQuestion(
        question: "What is the competitive exclusion principle?",
        options: ["Two species can coexist indefinitely if they share resources", "No two species can occupy the same ecological niche for long", "Species adapt to their environment over time", "Predators regulate the size of prey populations"].shuffled(),
        correctAnswer: "No two species can occupy the same ecological niche for long",
        explanation: "The competitive exclusion principle states that two species competing for the same resources cannot coexist indefinitely in the same niche.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following would be an example of an ecological disturbance?",
        options: ["A flood", "Species migration", "Seed dispersal", "Trophic cascade"].shuffled(),
        correctAnswer: "A flood",
        explanation: "Ecological disturbances, like floods, can disrupt ecosystems and alter the structure of communities.",
        unit: 8
    ),
    TestQuestion(
        question: "What is the primary driver of biodiversity loss in ecosystems today?",
        options: ["Invasive species", "Pollution", "Habitat destruction", "Climate change"].shuffled(),
        correctAnswer: "Habitat destruction",
        explanation: "Habitat destruction, through activities like deforestation and urbanization, is the leading cause of biodiversity loss.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following best describes genetic diversity?",
        options: ["The variety of species in an ecosystem", "The variety of ecosystems in a region", "The variation in DNA among individuals of a species", "The variation in ecological roles of species"].shuffled(),
        correctAnswer: "The variation in DNA among individuals of a species",
        explanation: "Genetic diversity refers to the differences in DNA sequences within a population, contributing to its ability to adapt to environmental changes.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following ecosystems typically has the highest biodiversity?",
        options: ["Desert", "Tundra", "Tropical rainforest", "Temperate grassland"].shuffled(),
        correctAnswer: "Tropical rainforest",
        explanation: "Tropical rainforests are known for their high levels of biodiversity, with thousands of species living in close proximity.",
        unit: 8
    ),
    TestQuestion(
        question: "What is the importance of biodiversity in ecosystems?",
        options: ["It provides economic benefits only", "It maintains ecosystem services and resilience", "It reduces competition among species", "It ensures that all species have the same ecological role"].shuffled(),
        correctAnswer: "It maintains ecosystem services and resilience",
        explanation: "Biodiversity is crucial for ecosystem stability and resilience, supporting processes like nutrient cycling and pollination.",
        unit: 8
    ),
    TestQuestion(
        question: "What does the term 'endemic species' refer to?",
        options: ["A species that is found only in one place on Earth", "A species that is widespread across continents", "A species that migrates across large areas", "A species that lives in harsh environments"].shuffled(),
        correctAnswer: "A species that is found only in one place on Earth",
        explanation: "Endemic species are found only in a specific geographic area and are not naturally found anywhere else.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following is an example of a human-induced disruption to an ecosystem?",
        options: ["Natural wildfires", "Pollution from industrial waste", "Changes in seasonal weather patterns", "Migration of invasive species"].shuffled(),
        correctAnswer: "Pollution from industrial waste",
        explanation: "Pollution from human activities, such as industrial waste, can significantly disrupt ecosystems by harming species and altering their environments.",
        unit: 8
    ),
    TestQuestion(
        question: "How do invasive species disrupt ecosystems?",
        options: ["By increasing biodiversity", "By outcompeting native species for resources", "By providing new food sources for native species", "By stabilizing the ecosystem"].shuffled(),
        correctAnswer: "By outcompeting native species for resources",
        explanation: "Invasive species often outcompete native species for resources, leading to changes in the ecosystem structure and a reduction in biodiversity.",
        unit: 8
    ),
    TestQuestion(
        question: "What is the impact of deforestation on ecosystems?",
        options: ["Increases biodiversity", "Reduces habitat for species", "Promotes soil stability", "Decreases the carbon footprint"].shuffled(),
        correctAnswer: "Reduces habitat for species",
        explanation: "Deforestation destroys the habitats of countless species, leading to a reduction in biodiversity and disrupting ecosystem processes.",
        unit: 8
    ),
    TestQuestion(
        question: "Which of the following is a consequence of climate change on ecosystems?",
        options: ["Increased seasonal variation", "Increased biodiversity", "Shifts in species distribution", "Less severe weather events"].shuffled(),
        correctAnswer: "Shifts in species distribution",
        explanation: "Climate change can cause species to shift their distribution in response to changes in temperature, precipitation, and other environmental factors.",
        unit: 8
    ),
    TestQuestion(
        question: "What is the primary effect of overfishing on marine ecosystems?",
        options: ["It increases fish populations", "It disrupts food webs and ecosystem stability", "It enhances biodiversity", "It reduces the abundance of phytoplankton"].shuffled(),
        correctAnswer: "It disrupts food webs and ecosystem stability",
        explanation: "Overfishing removes key species from marine ecosystems, disrupting food webs and leading to imbalances in the ecosystem.",
        unit: 8
    )








   
    // Add more questions for each unit here...
]
