//
//  Unit2Flashcards.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct Unit2Flashcards: View {
    let allFlashcards: [Flashcard2] = [
        Flashcard2(
            question: "Ribosomes",
            answer: "synthesize proteins",
            explanation: "Ribosomes are responsible for protein synthesis in the cell. They can be found floating freely in the cytoplasm or attached to the rough endoplasmic reticulum, where they translate mRNA into polypeptide chains.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Rough ER",
            answer: "protein synthesis",
            explanation: "The rough endoplasmic reticulum (RER) is covered in ribosomes, giving it a 'rough' appearance. It plays a crucial role in synthesizing and modifying proteins, especially those destined for secretion or insertion into the cell membrane.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Smooth ER",
            answer: "lipid synthesis",
            explanation: "Unlike the rough ER, the smooth endoplasmic reticulum (SER) lacks ribosomes and is involved in lipid synthesis, detoxification of drugs and poisons, and calcium ion storage in muscle cells.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Golgi Complex",
            answer: "modifies & packages proteins",
            explanation: "The Golgi complex, or Golgi apparatus, processes, modifies, and packages proteins and lipids from the ER. It acts as a sorting and shipping center, sending proteins to their appropriate destinations within or outside the cell.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Nuclear Envelope",
            answer: "protects nucleus",
            explanation: "The nuclear envelope is a double membrane that encloses the nucleus, separating it from the cytoplasm. It contains nuclear pores that regulate the exchange of materials like RNA and proteins between the nucleus and cytoplasm.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Lysosomes",
            answer: "digest waste",
            explanation: "Lysosomes are membrane-bound organelles that contain digestive enzymes used to break down waste, cellular debris, and invading pathogens. They play a key role in cellular cleanup and recycling.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Peroxisomes",
            answer: "break down fatty acids",
            explanation: "Peroxisomes are small organelles that break down fatty acids and detoxify harmful substances, including hydrogen peroxide, which they convert into water and oxygen to prevent cellular damage.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Vesicles/Vacuoles",
            answer: "storage & transport",
            explanation: "Vesicles and vacuoles are membrane-bound compartments used for storage and transport of substances within the cell. In plants, the central vacuole helps maintain structure and store nutrients, while vesicles shuttle materials between organelles.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Plasma Membrane",
            answer: "cell boundary",
            explanation: "The plasma membrane is a selectively permeable barrier that surrounds the cell, controlling the movement of substances in and out. It is composed of a phospholipid bilayer with embedded proteins, allowing communication and transport.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Mitochondria",
            answer: "produce ATP",
            explanation: "Mitochondria are the powerhouse of the cell, generating ATP through cellular respiration. They have their own DNA and double membrane, and are thought to have originated from ancient symbiotic bacteria.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Chloroplasts",
            answer: "photosynthesis",
            explanation: "Chloroplasts are found in plant and algae cells, where they capture sunlight to convert carbon dioxide and water into glucose through photosynthesis. They contain chlorophyll, the pigment responsible for their green color.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Prokaryotes",
            answer: "no nucleus",
            explanation: "Prokaryotic cells, such as bacteria and archaea, lack a nucleus and membrane-bound organelles. Their DNA is found in a single circular chromosome within the cytoplasm, and they reproduce quickly through binary fission.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Eukaryotes",
            answer: "have a nucleus",
            explanation: "Eukaryotic cells, found in plants, animals, fungi, and protists, have a nucleus and membrane-bound organelles. Their complex structure allows for compartmentalization of functions, increasing cellular efficiency.",
            topic: "2.1"
        ),
        Flashcard2(
            question: "Nucleus",
            answer: "stores DNA",
            explanation: "The nucleus is the control center of the cell, housing DNA and coordinating cellular activities such as growth, metabolism, and reproduction. It is surrounded by the nuclear envelope and contains the nucleolus, which produces ribosomes.",
            topic: "2.1"
        ),
        Flashcard2(
               question: "Structure and function of Chloroplasts",
               answer: "site of photosynthesis in plant cells",
               explanation: "Chloroplasts convert light energy into chemical energy through photosynthesis. They contain chlorophyll, the green pigment that absorbs sunlight, and have a double membrane structure with internal compartments like the thylakoids, grana, and stroma.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function of Thylakoid",
               answer: "membrane sacs for light-dependent reactions",
               explanation: "Thylakoids are flattened, membrane-bound structures inside chloroplasts where the light-dependent reactions of photosynthesis occur. They contain photosystems that capture solar energy and produce ATP and NADPH.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function Grana",
               answer: "stacks of thylakoids in chloroplasts",
               explanation: "Grana are stacks of thylakoids connected by lamellae. Their structure increases surface area for the absorption of light and the production of ATP and NADPH during photosynthesis.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function of Stroma",
               answer: "fluid-filled space in chloroplasts",
               explanation: "The stroma surrounds the thylakoid membranes and contains enzymes, ribosomes, and chloroplast DNA. It is where the Calvin cycle takes place, converting carbon dioxide into glucose using ATP and NADPH.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function of Mitochondria",
               answer: "powerhouse of the cell, produces ATP",
               explanation: "Mitochondria generate ATP through cellular respiration. They have a double membrane, their own DNA, and enzymes that facilitate energy production, making them crucial for cellular metabolism.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function of Vacuoles",
               answer: "storage for water, waste, or nutrients",
               explanation: "Vacuoles are membrane-bound organelles that store substances such as water, ions, and nutrients. In plant cells, the central vacuole helps maintain turgor pressure, providing structural support.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function of Lysosomes",
               answer: "digestive organelles that break down waste",
               explanation: "Lysosomes contain hydrolytic enzymes that degrade cellular waste, pathogens, and old organelles. They play a key role in apoptosis (programmed cell death) and intracellular digestion.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function of Smooth ER",
               answer: "synthesizes lipids, detoxifies substances",
               explanation: "The smooth endoplasmic reticulum (SER) lacks ribosomes and is responsible for lipid synthesis, carbohydrate metabolism, and detoxification of harmful substances, such as drugs and alcohol.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function of Rough ER",
               answer: "produces and modifies proteins",
               explanation: "The rough endoplasmic reticulum (RER) is covered in ribosomes, giving it a rough appearance. It helps synthesize, fold, and transport proteins that will be secreted or embedded in membranes.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function of Mitochondrial Matrix",
               answer: "innermost compartment of mitochondria",
               explanation: "The mitochondrial matrix contains enzymes, mitochondrial DNA, and ribosomes. It is the site of the Krebs cycle, where acetyl-CoA is broken down to produce ATP, NADH, and FADH₂.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "What is Intermembrane Space",
               answer: "space between inner and outer mitochondrial membranes",
               explanation: "The intermembrane space plays a critical role in oxidative phosphorylation by maintaining a proton gradient, which drives ATP production through chemiosmosis.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "What is Cytoskeleton",
               answer: "network of fibers for cell shape & movement",
               explanation: "The cytoskeleton is composed of microtubules, microfilaments, and intermediate filaments. It provides structural support, facilitates intracellular transport, and enables cell movement.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function Microtubules",
               answer: "hollow tubes for structure & transport",
               explanation: "Microtubules are made of tubulin proteins and form structures like the mitotic spindle, cilia, and flagella. They also serve as tracks for motor proteins that move organelles and vesicles within the cell.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Structure and function of Microfilaments",
               answer: "thin filaments for movement & shape",
               explanation: "Microfilaments, composed of actin, are involved in cell movement, cytokinesis, and shape maintenance. They enable muscle contraction and the formation of cellular extensions like pseudopodia.",
               topic: "2.2"
           ),
           Flashcard2(
               question: "Intermediate Filaments",
               answer: "fibers for structural support",
               explanation: "Intermediate filaments provide mechanical strength to cells, reinforcing their shape and anchoring organelles. They are composed of various proteins like keratin and lamin, depending on the cell type.",
               topic: "2.2"
           ),
        Flashcard2(
                question: "Cell Size Importance",
                answer: "Cells must efficiently exchange materials with the environment.",
                explanation: "Cells need an optimal size to maintain proper nutrient intake and waste removal. If a cell becomes too large, diffusion and transport processes become inefficient, affecting overall function.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "Surface Area-to-Volume Ratio (SA:V)",
                answer: "Key factor in determining cell efficiency.",
                explanation: "A high SA:V ratio allows for efficient diffusion and material transport. As a cell grows, its volume increases faster than its surface area, decreasing SA:V and reducing efficiency.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "Surface Area Role",
                answer: "Determines material exchange capacity.",
                explanation: "A larger surface area enables greater exchange of nutrients, gases, and waste. Cells with increased surface area can transport materials more effectively.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "Volume Role",
                answer: "Represents cellular activity and resource demand.",
                explanation: "Larger volume means higher metabolic needs. However, if a cell's volume grows too much relative to its surface area, efficient material transport becomes challenging.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "Effects of Growth on SA:V",
                answer: "Volume increases faster than surface area.",
                explanation: "As a cell grows, its SA:V ratio decreases, making diffusion less efficient. This limits the maximum size a cell can reach before it must divide or develop adaptations.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "Diffusion Efficiency",
                answer: "Smaller cells have a higher SA:V for better diffusion.",
                explanation: "Cells rely on diffusion to transport materials. Smaller cells allow for quicker and more efficient diffusion, while larger cells struggle with material movement.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "Nutrient and Waste Exchange",
                answer: "Large cells struggle with rapid material movement.",
                explanation: "Efficient transport of nutrients and waste is crucial for cell survival. If a cell becomes too large, diffusion alone is insufficient, leading to transport inefficiencies.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "DNA and Protein Synthesis",
                answer: "Cells must stay small for genetic efficiency.",
                explanation: "As cells grow larger, the demand for DNA instructions increases. A small cell ensures that genetic material can be efficiently used for protein synthesis and cellular function.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "Adaptations to Optimize SA:V",
                answer: "Cells develop structures (compartmentalize) to increase surface area.",
                explanation: "Cells adapt by flattening (e.g., red blood cells), forming projections (e.g., microvilli in intestines), or compartmentalizing (e.g., eukaryotic organelles) to maximize efficiency.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "Flattened Shapes",
                answer: "Increase surface area for diffusion.",
                explanation: "Flattened cells, like epithelial cells, maximize surface area, improving their ability to exchange gases, nutrients, and waste efficiently.",
                topic: "2.3"
            ),
            
            Flashcard2(
                question: "Compartmentalization in Eukaryotes",
                answer: "Allows internal specialization and efficiency.",
                explanation: "Eukaryotic cells have membrane-bound organelles that compartmentalize functions, reducing reliance on diffusion and allowing complex processes to occur efficiently.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "Metabolic Rate and Cell Size",
                answer: "Higher activity requires efficient material transport.",
                explanation: "Highly active cells, such as neurons and muscle cells, require efficient exchange of gases and nutrients to sustain their high metabolic rates.",
                topic: "2.3"
            ),
            Flashcard2(
                question: "Why Large Organisms Have Many Small Cells",
                answer: "Maintains high SA:V for efficiency.",
                explanation: "Instead of growing large cells, multicellular organisms consist of many small cells to maximize diffusion efficiency and maintain proper metabolic function.",
                topic: "2.3"
            ),
        Flashcard2(
                question: "Cell Membrane",
                answer: "Selectively permeable phospholipid bilayer.",
                explanation: "The cell membrane regulates what enters and exits the cell, maintaining homeostasis. It consists of a phospholipid bilayer with embedded proteins, cholesterol, and carbohydrates.",
                topic: "2.4"
            ),
            Flashcard2(
                question: "Hydrophilic and Hydrophobic Regions",
                answer: "Phospholipid heads are hydrophilic, tails are hydrophobic.",
                explanation: "The cell membrane is composed of amphipathic phospholipids. The hydrophilic heads face outward toward water, while the hydrophobic tails face inward, forming a bilayer that regulates substance passage.",
                topic: "2.4"
            ),
            Flashcard2(
                question: "Peripheral Proteins",
                answer: "Loosely attached proteins on membrane surface.",
                explanation: "Peripheral proteins are not embedded in the lipid bilayer. They function in signaling, structural support, and interaction with the cytoskeleton or extracellular matrix.",
                topic: "2.4"
            ),
            Flashcard2(
                question: "Integral Proteins",
                answer: "Proteins embedded in the lipid bilayer.",
                explanation: "Integral proteins span the membrane or are partially embedded. They play roles in transport, cell signaling, and maintaining membrane structure.",
                topic: "2.4"
            ),
            Flashcard2(
                question: "Membrane Protein Functions",
                answer: "Transport, signaling, enzymatic activity, recognition, adhesion.",
                explanation: "Membrane proteins facilitate molecule movement, signal transduction, catalysis, cell recognition, and attachment to other cells or the extracellular matrix.",
                topic: "2.4"
            ),
            Flashcard2(
                question: "Fluid Mosaic Model",
                answer: "Describes membrane as dynamic and flexible.",
                explanation: "The fluid mosaic model states that membranes are fluid, with phospholipids and proteins moving laterally. It allows adaptability and functionality in changing environments.",
                topic: "2.4"
            ),
            Flashcard2(
                question: "Cholesterol in Membrane",
                answer: "Maintains fluidity and stability.",
                explanation: "Cholesterol is interspersed between phospholipids, preventing them from packing too tightly in cold temperatures and maintaining structure in high temperatures.",
                topic: "2.4"
            ),
            Flashcard2(
                question: "Glycoproteins",
                answer: "Proteins with carbohydrate chains for cell recognition.",
                explanation: "Glycoproteins function in cell-cell recognition, immune response, and signaling. They help distinguish self from non-self in immune system responses.",
                topic: "2.4"
            ),
            Flashcard2(
                question: "Glycolipids",
                answer: "Lipids with carbohydrate chains for recognition.",
                explanation: "Glycolipids contribute to cell communication and stability, playing roles in immune response and cell adhesion within tissues.",
                topic: "2.4"
            ),
        Flashcard2(
                question: "Amphipathic Phospholipids",
                answer: "Hydrophilic head is polar, hydrophobic tail is nonpolar.",
                explanation: "Phospholipids form a bilayer in the cell membrane. The hydrophilic phosphate heads face outward toward water, while the hydrophobic fatty acid tails face inward, preventing water-soluble substances from passing through.",
                topic: "2.5"
            ),
            Flashcard2(
                question: "Selective Permeability",
                answer: "Cell membrane regulates substance passage.",
                explanation: "The phospholipid bilayer allows some molecules to pass while restricting others. This helps maintain homeostasis by controlling the movement of nutrients, waste, and signaling molecules.",
                topic: "2.5"
            ),
            Flashcard2(
                question: "Small Nonpolar Molecules",
                answer: "Can pass freely through the membrane.",
                explanation: "Gases like oxygen (O₂) and carbon dioxide (CO₂) easily diffuse across the membrane because they are small and hydrophobic, interacting well with the lipid bilayer.",
                topic: "2.5"
            ),
            Flashcard2(
                question: "Hydrophilic Substances",
                answer: "Do not pass freely through the membrane.",
                explanation: "Polar and charged molecules, such as glucose and ions, are repelled by the hydrophobic core of the bilayer and require transport proteins to cross.",
                topic: "2.5"
            ),
            Flashcard2(
                question: "Large Polar Molecules and Ions",
                answer: "Cannot pass freely through the membrane.",
                explanation: "Molecules like glucose and ions such as Na⁺ and K⁺ are too large or charged to diffuse through the hydrophobic bilayer and require specialized transport proteins.",
                topic: "2.5"
            ),
            Flashcard2(
                question: "Channel Proteins",
                answer: "Provide hydrophilic passageways for specific molecules.",
                explanation: "Channel proteins form pores in the membrane, allowing specific ions or molecules to pass down their concentration gradient without requiring energy.",
                topic: "2.5"
            ),
            Flashcard2(
                question: "Carrier Proteins",
                answer: "Transport molecules by changing shape.",
                explanation: "Carrier proteins bind specific molecules, undergo conformational changes, and help move substances across the membrane, sometimes against the gradient (active transport).",
                topic: "2.5"
            ),
            Flashcard2(
                question: "Small Polar Molecules (H₂O)",
                answer: "Pass through in minimal amounts.",
                explanation: "Water molecules are small but polar, so they cross the membrane slowly. Aquaporins (specialized channel proteins) help facilitate rapid water transport.",
                topic: "2.5"
            ),
            Flashcard2(
                question: "Cell Wall",
                answer: "Provides structure and acts as a permeable barrier.",
                explanation: "Cell walls give shape, support, and protection while allowing small molecules to pass freely. They are found in plants, fungi, and some prokaryotes.",
                topic: "2.5"
            ),
            Flashcard2(
                question: "Cellulose",
                answer: "Main component of plant cell walls.",
                explanation: "Cellulose is a polysaccharide that provides structural support in plant cells. It forms strong fibers that help maintain cell shape and resist mechanical stress.",
                topic: "2.5"
            ),
            Flashcard2(
                question: "Chitin",
                answer: "Structural component of fungal cell walls.",
                explanation: "Chitin is a polysaccharide that strengthens fungal cell walls and exoskeletons in arthropods. It provides rigidity while allowing permeability.",
                topic: "2.5"
            ),
        Flashcard2(
               question: "Concentration Gradient",
               answer: "Difference in solute concentration across a membrane.",
               explanation: "Substances naturally move from areas of high concentration to low concentration (down the gradient) without energy, while moving against the gradient requires energy.",
               topic: "2.6"
           ),
           Flashcard2(
               question: "Passive Transport",
               answer: "Movement of molecules without energy input.",
               explanation: "Passive transport relies on concentration gradients to move substances across membranes, including simple diffusion and facilitated diffusion.",
               topic: "2.6"
           ),
           Flashcard2(
               question: "Simple Diffusion",
               answer: "Movement of small nonpolar molecules down gradient.",
               explanation: "Molecules like O₂ and CO₂ diffuse freely across the phospholipid bilayer from high to low concentration without requiring proteins.",
               topic: "2.6"
           ),
           Flashcard2(
               question: "Facilitated Diffusion",
               answer: "Passive transport using channel or carrier proteins.",
               explanation: "Large polar molecules and ions use protein channels or carriers to cross the membrane down their concentration gradient without energy input.",
               topic: "2.6"
           ),
           Flashcard2(
               question: "Active Transport",
               answer: "Movement against the concentration gradient using energy.",
               explanation: "Cells use ATP to move substances from low to high concentration via carrier proteins, such as the sodium-potassium pump.",
               topic: "2.6"
           ),
           Flashcard2(
               question: "Endocytosis",
               answer: "Cell engulfs material by forming vesicles.",
               explanation: "Large molecules or particles are brought into the cell via membrane folding, forming vesicles that transport substances internally.",
               topic: "2.6"
           ),
           Flashcard2(
               question: "Phagocytosis",
               answer: "Engulfing large particles or cells.",
               explanation: "A form of endocytosis where the cell engulfs large particles, such as bacteria, forming a vesicle that fuses with a lysosome for digestion.",
               topic: "2.6"
           ),
           Flashcard2(
               question: "Pinocytosis",
               answer: "Engulfing extracellular fluid and small molecules.",
               explanation: "A type of endocytosis where the cell takes in dissolved solutes by forming small vesicles, allowing nutrient absorption.",
               topic: "2.6"
           ),
           Flashcard2(
               question: "Receptor-Mediated Endocytosis",
               answer: "Selective uptake using receptor proteins.",
               explanation: "Specific molecules bind to receptors on the cell membrane, triggering vesicle formation and allowing targeted transport into the cell.",
               topic: "2.6"
           ),
           Flashcard2(
               question: "Exocytosis",
               answer: "Vesicles fuse with membrane to release contents.",
               explanation: "Cells expel large molecules, such as hormones or waste, by vesicles merging with the membrane and releasing contents outside the cell.",
               topic: "2.6"
           ),
        Flashcard2(
                question: "Molecules Using Facilitated Diffusion",
                answer: "Large polar molecules and ions.",
                explanation: "Molecules like glucose and charged ions (Na⁺, K⁺) cannot pass through the hydrophobic bilayer and require transport proteins to move down their concentration gradient.",
                topic: "2.7"
            ),
            Flashcard2(
                question: "Carrier Proteins (Pumps)",
                answer: "Transport proteins that move substances across membranes.",
                explanation: "Carrier proteins change shape to move molecules across membranes. Some function as pumps, requiring ATP for active transport.",
                topic: "2.7"
            ),
            Flashcard2(
                question: "ATP and Concentration Gradient",
                answer: "ATP powers active transport to create gradients.",
                explanation: "Cells use ATP to pump ions against their gradient, such as the sodium-potassium pump, maintaining essential concentration differences inside and outside the cell.",
                topic: "2.7"
            ),
            Flashcard2(
                question: "Cotransport",
                answer: "Coupled transport of two substances.",
                explanation: "One substance moves down its gradient, driving the active transport of another against its gradient. Example: sodium-glucose cotransport in intestinal cells.",
                topic: "2.7"
            ),
            Flashcard2(
                question: "Electrochemical Gradient",
                answer: "Combination of concentration and electrical gradients.",
                explanation: "Ions move based on both charge differences and concentration differences across membranes, driving processes like nerve signaling and ATP synthesis.",
                topic: "2.7"
            ),
        Flashcard2(
                question: "Concentration Gradient and Molecule Movement",
                answer: "Molecules move from high to low concentration.",
                explanation: "Substances diffuse across membranes down their concentration gradients. Water moves via osmosis from areas of low solute concentration to high solute concentration.",
                topic: "2.8"
            ),
            Flashcard2(
                question: "Osmosis",
                answer: "Passive diffusion of water across a membrane.",
                explanation: "Water moves from a region of high water potential (low solute concentration) to a region of low water potential (high solute concentration) to balance solute levels.",
                topic: "2.8"
            ),
            Flashcard2(
                question: "Water Potential",
                answer: "Determines direction of water movement.",
                explanation: "Water potential is affected by solute concentration and pressure. Water moves from areas of high water potential to low water potential.",
                topic: "2.8"
            ),
            Flashcard2(
                question: "Osmolarity",
                answer: "Solute concentration of a solution.",
                explanation: "Higher osmolarity means more solute and lower water potential, causing water to move toward that solution through osmosis.",
                topic: "2.8"
            ),
            Flashcard2(
                question: "Tonicity",
                answer: "Describes a solution’s effect on cell water balance.",
                explanation: "Solutions can be isotonic (equal solute), hypotonic (lower solute, water enters cell), or hypertonic (higher solute, water exits cell), affecting cell volume.",
                topic: "2.8"
            ),
            Flashcard2(
                question: "Osmoregulation",
                answer: "Control of water balance in cells.",
                explanation: "Cells regulate water balance to prevent shrinking or bursting. Organisms like freshwater fish actively regulate salt and water to maintain homeostasis.",
                topic: "2.8"
            ),
        Flashcard2(
                question: "Diffusion",
                answer: "Passive movement down a concentration gradient.",
                explanation: "Molecules naturally move from areas of high concentration to low concentration due to random motion, requiring no energy input.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Factors Affecting Diffusion",
                answer: "Temperature, molecule size, and concentration difference.",
                explanation: "Higher temperatures and steeper concentration gradients increase diffusion rate, while larger molecules diffuse more slowly.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Facilitated Diffusion",
                answer: "Passive transport using membrane proteins.",
                explanation: "Larger or charged molecules, such as glucose or ions, use channel or carrier proteins to move down their gradient without ATP.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Channel Proteins",
                answer: "Provide hydrophilic pathways for specific molecules.",
                explanation: "These proteins form tunnels allowing ions and small polar molecules to cross the membrane without interacting with the hydrophobic core.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Carrier Proteins",
                answer: "Bind and change shape to transport molecules.",
                explanation: "Carrier proteins selectively bind molecules and undergo conformational changes to move them across the membrane.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Osmosis",
                answer: "Passive diffusion of water across a membrane.",
                explanation: "Water moves from areas of high water potential (low solute concentration) to low water potential (high solute concentration) to reach equilibrium.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Aquaporins",
                answer: "Water channel proteins for rapid osmosis.",
                explanation: "Aquaporins allow water to pass through the membrane much faster than simple diffusion, playing a key role in osmoregulation.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Active Transport",
                answer: "Moves molecules against their concentration gradient using ATP.",
                explanation: "Cells use energy to transport substances from low to high concentration, which is essential for maintaining homeostasis.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Protein Pumps",
                answer: "Use ATP to transport ions against gradients.",
                explanation: "Examples include the sodium-potassium pump, which moves Na⁺ out and K⁺ into cells, maintaining membrane potential.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Endocytosis",
                answer: "Process of taking in large molecules via vesicles.",
                explanation: "The membrane engulfs external substances, forming a vesicle to transport them into the cell. Requires ATP.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Phagocytosis",
                answer: "Engulfing large particles or cells ('cell eating').",
                explanation: "Cells, like macrophages, engulf pathogens or debris, enclosing them in vesicles that fuse with lysosomes for digestion.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Pinocytosis",
                answer: "Engulfing extracellular fluid ('cell drinking').",
                explanation: "The cell takes in dissolved nutrients and solutes by forming small vesicles, helping in nutrient absorption.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Receptor-Mediated Endocytosis",
                answer: "Selective uptake using receptor proteins.",
                explanation: "Specific molecules bind to receptors on the membrane, triggering vesicle formation for targeted transport (e.g., cholesterol uptake).",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Exocytosis",
                answer: "Vesicles fuse with the membrane to release contents.",
                explanation: "Cells expel large molecules like hormones, neurotransmitters, or waste by merging vesicles with the membrane.",
                topic: "2.9"
            ),
            Flashcard2(
                question: "Role of Exocytosis in Secretion",
                answer: "Essential for hormone and enzyme release.",
                explanation: "Cells use exocytosis to secrete proteins and signaling molecules, like insulin from pancreatic cells into the bloodstream.",
                topic: "2.9"
            ),
        Flashcard2(
               question: "Eukaryotic Cells and Compartmentalization",
               answer: "Organelles create specialized environments for efficiency.",
               explanation: "Eukaryotic cells use membrane-bound organelles to compartmentalize functions, increasing efficiency by separating incompatible reactions and concentrating specific molecules.",
               topic: "2.10"
           ),
           Flashcard2(
               question: "Lysosomes and Compartmentalization",
               answer: "Isolate hydrolytic enzymes for controlled digestion.",
               explanation: "Lysosomes maintain an acidic internal environment, allowing digestive enzymes to break down macromolecules without harming the rest of the cell.",
               topic: "2.10"
           ),
           Flashcard2(
               question: "Mitochondria and Compartmentalization",
               answer: "Double membrane separates metabolic reactions.",
               explanation: "The outer membrane regulates transport, while the inner membrane, folded into cristae, creates a high-surface-area space for ATP production via oxidative phosphorylation.",
               topic: "2.10"
           ),
           Flashcard2(
               question: "Chloroplasts and Compartmentalization",
               answer: "Separate photosynthetic reactions for efficiency.",
               explanation: "Thylakoid membranes contain pigments and proteins for light-dependent reactions, while the stroma hosts the Calvin cycle, keeping processes spatially distinct.",
               topic: "2.10"
           ),
        Flashcard2(
                question: "Endosymbiotic Theory",
                answer: "Explains origin of mitochondria and chloroplasts.",
                explanation: "The theory proposes that mitochondria and chloroplasts originated as independent prokaryotic cells that were engulfed by a larger host cell, forming a symbiotic relationship.",
                topic: "2.11"
            ),
            Flashcard2(
                question: "Evidence for Endosymbiotic Theory",
                answer: "Mitochondria and chloroplasts share traits with bacteria.",
                explanation: "They have their own circular DNA, double membranes, ribosomes similar to prokaryotes, and replicate through binary fission, supporting their bacterial origin.",
                topic: "2.11"
            )
        
    ]

    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentIndex = 0
    @State private var isFlipped = false
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = ["2.1", "2.2", "2.3", "2.4", "2.5", "2.6", "2.7", "2.8", "2.9", "2.10", "2.11"]
    
    var filteredFlashcards: [Flashcard2] {
        allFlashcards.filter { selectedTopics.contains($0.topic) }
    }
    
    var body: some View {
      

        ZStack {
            Color(red: 0.12, green: 0.24, blue: 0.18)
                .ignoresSafeArea()
            
            VStack {
                // Topic Selection Circles
                    Text("Scroll to Deselect Topics")
                    .foregroundStyle(Color.accentColor)
                    
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(["2.1", "2.2", "2.3", "2.4", "2.5", "2.6", "2.7", "2.8", "2.9", "2.10", "2.11"], id: \.self) { topic in
                            Circle()
                                .fill(selectedTopics.contains(topic) ? Color.accentColor : Color.gray.opacity(0.5))
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Text(topic)
                                        .foregroundColor(.black)                                        .font(.caption)
                                )
                                .onTapGesture {
                                    if selectedTopics.contains(topic) {
                                        selectedTopics.remove(topic)
                                    } else {
                                        selectedTopics.insert(topic)
                                    }
                                    // Reset flashcard index when topics change
                                    currentIndex = 0
                                }
                        }
                    }
                    .padding()
                }
                
                // Counter: Shows current question number
                Spacer()
                if !filteredFlashcards.isEmpty {
                    Text("\(currentIndex + 1)/\(filteredFlashcards.count)")
                        .font(.headline)
                        .padding()
                        .foregroundStyle(Color.accentColor)
                    
                    // Flashcard View
                    ZStack {
                        if isFlipped {
                            Text(filteredFlashcards[currentIndex].answer)
                                .font(.title)
                                .foregroundColor(.black)
                                .padding()
                                .frame(width: 300, height: 200)
                                .background(Color.accentColor)
                                .cornerRadius(10)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                        } else {
                            Text(filteredFlashcards[currentIndex].question)
                                .font(.title)
                                .foregroundColor(.black)
                                .padding()
                                .frame(width: 300, height: 200)
                                .background(Color.accentColor)
                                .cornerRadius(10)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                        }
                    }
                    
                    .onTapGesture {
                        withAnimation {
                            isFlipped.toggle()
                        }
                    }
                   
                    
                    // Explanation Button and Text
                    if isExplanationVisible {
                        ScrollView {
                            Text(filteredFlashcards[currentIndex].explanation)
                                .font(.body)
                                .foregroundColor(.primary)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .padding(.top)
                        }
                        Button("Hide Explanation") {
                            withAnimation {
                                isExplanationVisible = false
                            }
                        }
                        .padding(.top, 10)
                    } else {
                        Button("Show Explanation") {
                            withAnimation {
                                isExplanationVisible = true
                            }
                        }
                        .padding(.top)
                    }
                    Spacer()
                    Spacer()
                    
                    // Navigation Buttons
                    HStack {
                        Button(action: {
                            if currentIndex > 0 {
                                currentIndex -= 1
                                isFlipped = false
                                isExplanationVisible = false
                            }
                        }) {
                            Text("Back")
                                .padding()
                                .frame(width: 100)
                                .background(currentIndex > 0 ? Color.gray : Color.gray.opacity(0.5))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                        }
                        .disabled(currentIndex == 0)
                        
                        Spacer()
                        
                        Button(action: {
                            if currentIndex < filteredFlashcards.count - 1 {
                                currentIndex += 1
                                isFlipped = false
                                isExplanationVisible = false
                            }
                        }) {
                            Text("Next")
                                .padding()
                                .frame(width: 100)
                                .background(currentIndex < filteredFlashcards.count - 1 ? Color.gray : Color.gray.opacity(0.5))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                        }
                        .disabled(currentIndex == filteredFlashcards.count - 1)
                    }
                    .padding(.horizontal)
                } else {
                    Text("No flashcards available for the selected topics.")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .padding()
                    Spacer()
                }
            }
            .padding()
        }
    }
}

struct Flashcard2: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
    let explanation: String
    let topic: String
}

#Preview {
    Unit2Flashcards()
}
