//
//  Unit3Flashcards.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct Unit3Flashcards: View {
    let allFlashcards: [Flashcard3] = [
        Flashcard3(
                question: "Enzymes Are Proteins",
                answer: "Proteins that catalyze biochemical reactions.",
                explanation: "Enzymes are biological catalysts made of amino acids that speed up chemical reactions without being consumed in the process.",
                topic: "3.1"
            ),
            Flashcard3(
                question: "Enzymes Speed Up Biochemical Reactions",
                answer: "Lower activation energy of reactions.",
                explanation: "Enzymes increase the rate of biochemical reactions by lowering the activation energy required for the reaction to occur.",
                topic: "3.1"
            ),
            Flashcard3(
                question: "Active Site",
                answer: "Region where the substrate binds.",
                explanation: "The active site has a unique shape and size, often with specific charges, allowing it to interact with the substrate and facilitate the reaction.",
                topic: "3.1"
            ),
            Flashcard3(
                question: "Substrate",
                answer: "Molecule that is acted upon by the enzyme.",
                explanation: "The substrate is the specific reactant that binds to the enzyme’s active site, undergoing a transformation during the reaction.",
                topic: "3.1"
            ),
            Flashcard3(
                question: "Enzyme Ends in -ase",
                answer: "Most enzymes have names ending in '-ase'.",
                explanation: "Enzymes are typically named based on the substrate they act on or the reaction they catalyze, with the suffix '-ase' (e.g., lactase, amylase).",
                topic: "3.1"
            ),
            Flashcard3(
                question: "Enzymes Are Reusable",
                answer: "Enzymes are not consumed during reactions.",
                explanation: "Enzymes can catalyze multiple reaction cycles without being used up or altered, allowing them to be reused in subsequent reactions.",
                topic: "3.1"
            ),
            Flashcard3(
                question: "Substrate Binds to Active Site",
                answer: "Specific interaction between enzyme and substrate.",
                explanation: "The substrate binds to the active site through precise interactions, allowing the enzyme to catalyze the reaction, forming an enzyme-substrate complex.",
                topic: "3.1"
            ),
        Flashcard3(
                question: "Enzyme Structure Specificity",
                answer: "Enzymes are specific to one type of reaction.",
                explanation: "Enzymes are designed to catalyze specific reactions based on their structure. The shape of the active site determines which substrates can bind.",
                topic: "3.2"
            ),
            Flashcard3(
                question: "Enzyme-Catalyzed Reactions",
                answer: "Enzymes can facilitate both synthesis and digestion reactions.",
                explanation: "Enzymes help either build larger molecules (synthesis) or break down larger molecules (digestion), depending on the type of reaction.",
                topic: "3.2"
            ),
            Flashcard3(
                question: "Activation Energy and Enzymes",
                answer: "Enzymes lower activation energy of reactions.",
                explanation: "Enzymes speed up reactions by reducing the energy needed to start the reaction, allowing the process to occur more easily and rapidly.",
                topic: "3.2"
            ),
        Flashcard3(
                question: "Denaturation of Enzymes",
                answer: "Denaturation alters an enzyme’s structure, making it inactive.",
                explanation: "Denaturation occurs when the enzyme's shape is disrupted due to factors like high temperature or extreme pH, rendering it unable to bind with its substrate.",
                topic: "3.3"
            ),
            Flashcard3(
                question: "Effect of Temperature on Enzyme Function",
                answer: "Low temperatures slow enzyme activity; high temperatures can denature enzymes.",
                explanation: "At lower temperatures, molecular motion decreases, slowing enzyme reactions. At high temperatures, enzymes may lose their shape, stopping their function.",
                topic: "3.3"
            ),
            Flashcard3(
                question: "pH and Enzyme Function",
                answer: "Extreme pH can alter enzyme shape, affecting activity.",
                explanation: "Enzymes have optimal pH ranges, and deviations can alter their active site shape, reducing their ability to catalyze reactions effectively.",
                topic: "3.3"
            ),
            Flashcard3(
                question: "Substrate Concentration and Enzyme Function",
                answer: "Increasing substrate concentration increases reaction rate up to a point.",
                explanation: "At higher substrate concentrations, enzymes work faster until they become saturated and reach a maximum rate of reaction.",
                topic: "3.3"
            ),
            Flashcard3(
                question: "Enzyme Concentration and Reaction Rate",
                answer: "More enzymes increase reaction rate, if substrates are available.",
                explanation: "Higher enzyme concentration increases the reaction rate, but only if there is enough substrate to bind with the enzymes.",
                topic: "3.3"
            ),
            Flashcard3(
                question: "Competitive Inhibitors",
                answer: "Competitive inhibitors block the active site.",
                explanation: "Competitive inhibitors resemble the substrate and compete for binding at the enzyme's active site, reducing the enzyme's ability to catalyze the reaction.",
                topic: "3.3"
            ),
            Flashcard3(
                question: "Noncompetitive Inhibitors",
                answer: "Noncompetitive inhibitors bind elsewhere on the enzyme.",
                explanation: "Noncompetitive inhibitors bind to an allosteric site, changing the enzyme's shape and reducing its ability to catalyze the reaction, even if the substrate can still bind.",
                topic: "3.3"
            ),
            Flashcard3(
                question: "Allosteric Site",
                answer: "A site on the enzyme where noncompetitive inhibitors bind.",
                explanation: "The allosteric site is distinct from the active site and can regulate enzyme activity by binding regulatory molecules or inhibitors, altering the enzyme's function.",
                topic: "3.3"
            ),
        Flashcard3(
                question: "Product-Reactant Relationship in Cellular Reactions",
                answer: "The product of one reaction can serve as a reactant in a subsequent reaction.",
                explanation: "In metabolic pathways, products from one enzyme-catalyzed reaction become substrates for the next, creating a continuous flow of energy and materials through the cell.",
                topic: "3.4"
            ),
        Flashcard3(
                question: "Main purpose of light reactions",
                answer: "Convert light energy into chemical energy (ATP and NADPH).",
                explanation: "The light reactions use light to generate ATP and NADPH, which are necessary for the Calvin Cycle to fix carbon.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Location of the light reactions",
                answer: "Thylakoid membranes in the chloroplasts.",
                explanation: "The thylakoid membranes contain the enzymes and protein complexes required to capture light energy and produce ATP and NADPH.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Role of chlorophyll",
                answer: "Absorbs light energy and initiates electron transport.",
                explanation: "Chlorophyll absorbs light, which excites electrons, kicking off the process of light energy conversion in the light reactions.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Light wavelengths absorbed by chlorophyll",
                answer: "Red and blue light.",
                explanation: "Chlorophyll absorbs light most effectively in the red and blue regions of the light spectrum, which is why plants appear green.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "What happens when chlorophyll absorbs light?",
                answer: "Electrons are excited and moved to a higher energy level.",
                explanation: "The absorption of light energy excites chlorophyll's electrons, which are then passed through the electron transport chain to produce energy-rich molecules.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Function of Photosystem II",
                answer: "Splits water molecules and releases oxygen.",
                explanation: "Photosystem II absorbs light energy, exciting electrons that are passed along the electron transport chain, and splits water molecules to replace lost electrons, producing oxygen as a byproduct.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Function of Photosystem I",
                answer: "Excites electrons and reduces NADP+ to NADPH.",
                explanation: "Photosystem I absorbs light energy to excite electrons, which are then transferred to NADP+ to form NADPH, used in the Calvin Cycle.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Electron Transport Chain (ETC)",
                answer: "Transfers electrons and creates a proton gradient.",
                explanation: "Electrons move through the ETC from Photosystem II to Photosystem I, and this movement pumps protons into the thylakoid lumen, creating a proton gradient used to synthesize ATP.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Chemiosmosis",
                answer: "Uses proton gradient to generate ATP.",
                explanation: "Protons flow through ATP synthase from the thylakoid lumen to the stroma, driving the conversion of ADP to ATP.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Role of ATP synthase",
                answer: "Synthesizes ATP from ADP and inorganic phosphate.",
                explanation: "ATP synthase harnesses the energy from protons flowing through it to convert ADP and inorganic phosphate into ATP, which is used in the Calvin Cycle.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Z-scheme",
                answer: "Describes the path of electrons from Photosystem II to Photosystem I.",
                explanation: "The Z-scheme depicts the energy changes of electrons as they travel through the light reactions, from the initial excitation in Photosystem II to the final reduction in Photosystem I.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Role of NADP+",
                answer: "Accepts electrons and forms NADPH.",
                explanation: "NADP+ receives electrons and protons at the end of the light reactions, becoming NADPH, which is used in the Calvin Cycle for carbon fixation.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Water splitting in light reactions",
                answer: "Provides electrons to replace those lost by chlorophyll and releases oxygen.",
                explanation: "Water is split in Photosystem II to provide the necessary electrons, and oxygen is released as a byproduct of photolysis.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Photolysis",
                answer: "The splitting of water molecules by light.",
                explanation: "In Photosystem II, light energy splits water molecules into electrons, protons, and oxygen, with the electrons replacing those lost by chlorophyll during light absorption.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Proton gradient",
                answer: "Powers ATP synthesis via chemiosmosis.",
                explanation: "The proton gradient, created by the electron transport chain, powers ATP synthase to convert ADP and phosphate into ATP, which is vital for the Calvin Cycle.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Purpose of light energy",
                answer: "Excites electrons in chlorophyll, driving the light reactions.",
                explanation: "Light energy excites electrons in chlorophyll molecules, initiating the electron transport chain that produces ATP and NADPH for the Calvin Cycle.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "ATP production in light reactions",
                answer: "Generated through photophosphorylation and chemiosmosis.",
                explanation: "ATP is produced when protons flow through ATP synthase in the thylakoid membrane, utilizing energy from the proton gradient created by the electron transport chain.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Overall equation for the light reactions",
                answer: "2 H2O + 2 NADP+ + 3 ADP + 3 Pi + light energy → O2 + 2 NADPH + 3 ATP.",
                explanation: "The light reactions split water to produce oxygen, and generate ATP and NADPH to power the Calvin Cycle in photosynthesis.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Function of thylakoid membrane",
                answer: "Hosts the protein complexes involved in the light reactions.",
                explanation: "The thylakoid membrane contains Photosystem II, the electron transport chain, and ATP synthase, all necessary for capturing light energy and synthesizing ATP and NADPH.",
                topic: "3.5"
            ),
        Flashcard3(
                question: "The reactants of the Calvin Cycle are ___ and ___",
                answer: "ATP, NADPH",
                explanation: "ATP and NADPH produced in the light reactions are used to power the Calvin Cycle, helping convert CO2 into sugar.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "The Calvin Cycle reduces ___ to ___",
                answer: "CO2, sugar (G3P)",
                explanation: "The Calvin Cycle takes CO2 from the air and, through a series of reactions, converts it into a sugar molecule, G3P.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "For net synthesis of 1 G3P molecule, the cycle must take place _ time(s).",
                answer: "3",
                explanation: "The Calvin Cycle must turn three times to produce one molecule of G3P, which can be used to form glucose.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "First phase of Calvin Cycle",
                answer: "Carbon Fixation",
                explanation: "In Carbon Fixation, CO2 from the air is attached to RuBP, a 5-carbon molecule, by the enzyme Rubisco.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Second phase of Calvin Cycle",
                answer: "Reduction",
                explanation: "In Reduction, ATP and NADPH are used to reduce 3-phosphoglycerate into G3P, a 3-carbon sugar.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Third phase of Calvin Cycle",
                answer: "Regeneration of RuBP",
                explanation: "In Regeneration of RuBP, some G3P molecules are used to regenerate RuBP, allowing the cycle to continue.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "What happens in Carbon Fixation?",
                answer: "CO2 from the air is incorporated into organic material",
                explanation: "CO2 is attached to RuBP, catalyzed by Rubisco, and forms an unstable 6-carbon compound that splits into two 3-carbon molecules.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "CO2 is incorporated into the Calvin Cycle _ at a time.",
                answer: "one",
                explanation: "CO2 enters the Calvin Cycle one molecule at a time, each attaching to a RuBP molecule during the Carbon Fixation phase.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Each CO2 attaches to a molecule of ___",
                answer: "RuBP",
                explanation: "RuBP (Ribulose bisphosphate) is a 5-carbon molecule that reacts with CO2 in the first step of the Calvin Cycle.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "What is the enzyme that catalyzes carbon fixation?",
                answer: "Rubisco",
                explanation: "Rubisco is the enzyme that catalyzes the incorporation of CO2 into RuBP in the Carbon Fixation step of the Calvin Cycle.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "What happens in Reduction?",
                answer: "Each molecule of 3-phosphoglycerate is phosphorylated by ATP (uses 6 total)",
                explanation: "In the Reduction phase, ATP adds phosphate groups to 3-phosphoglycerate, which is then reduced by NADPH to form G3P.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "What happens to the 3-phosphoglycerates?",
                answer: "Becomes one 3-bisphosphoglycerate",
                explanation: "The 3-phosphoglycerate molecules are phosphorylated by ATP to form 3-bisphosphoglycerate before being reduced to G3P.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "_ NADPH molecules donate electrons to one 3-bisphosphoglycerate, which reduces to ___",
                answer: "6, G3P",
                explanation: "6 molecules of NADPH donate electrons to reduce 3-bisphosphoglycerate into G3P, which is a 3-carbon sugar.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "What do 5 of the G3P molecules do?",
                answer: "Regenerate RuBP",
                explanation: "Five molecules of G3P are used to regenerate RuBP so the Calvin Cycle can continue processing additional CO2 molecules.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "What happens in regeneration of RuBP?",
                answer: "5 G3P molecules are used to regenerate 3 molecules of RuBP",
                explanation: "In the Regeneration phase, 5 molecules of G3P are rearranged and converted into 3 molecules of RuBP, which is ready to accept more CO2.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "What is the 1 other G3P molecule used for?",
                answer: "Make glucose",
                explanation: "One molecule of G3P is used to eventually make glucose and other sugars necessary for the plant's energy.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "How many ATP's are used for regeneration?",
                answer: "3",
                explanation: "It takes 3 molecules of ATP to regenerate RuBP during the final phase of the Calvin Cycle.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "What are the inputs of the Calvin Cycle?",
                answer: "3 CO2, 9 ATP, 6 NADPH",
                explanation: "The Calvin Cycle uses 3 molecules of CO2, 9 ATP molecules, and 6 NADPH molecules to produce 1 G3P molecule.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "What are the outputs of the Calvin Cycle?",
                answer: "1 G3P, 9 ADP, 6 NADP+",
                explanation: "The outputs of the Calvin Cycle include 1 G3P molecule, which is used to make glucose, and 9 ADP and 6 NADP+ molecules.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "In the Calvin cycle, how many molecules of CO2 are needed to produce one 12-carbon sugar?",
                answer: "12",
                explanation: "The Calvin Cycle requires 12 molecules of CO2 to produce a 12-carbon sugar, with each cycle adding one carbon at a time.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "The Calvin cycle is considered light-independent because it can occur in darkness. However, most often the Calvin cycle takes place in sunlight. Why?",
                answer: "The Calvin Cycle relies on ATP and NADPH, which are produced from the light reactions.",
                explanation: "Although the Calvin Cycle can happen without light, it typically takes place when ATP and NADPH from the light reactions are available to power it.",
                topic: "3.5"
            ),
            Flashcard3(
                question: "Is G3P a product, reactant, or both?",
                answer: "Both",
                explanation: "G3P is a product of the Calvin Cycle that can be used to make glucose, but it's also an intermediate molecule used for regenerating RuBP.",
                topic: "3.5"
            ),
        Flashcard3(
                question: "Cells harvest _________ energy stored in organic molecule",
                answer: "chemical",
                explanation: "Cells extract chemical energy from organic molecules like glucose and use it to generate ATP, the primary energy carrier in cells.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The reactants of cellular respiration are",
                answer: "Organic molecules, oxygen",
                explanation: "The reactants of cellular respiration include organic molecules like glucose and oxygen, which are used to produce ATP.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The products of cellular respiration are",
                answer: "CO2, H2O, energy",
                explanation: "The products of cellular respiration are carbon dioxide (CO2), water (H2O), and energy in the form of ATP.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Starch is the major source of fuel for animals.",
                answer: "Starch",
                explanation: "Starch is the primary source of energy for animals, as it is broken down into glucose for use in cellular respiration.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Starch breaks down into",
                answer: "Glucose",
                explanation: "Starch is broken down into glucose molecules, which are then used for energy in cellular respiration.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Eectrons will follow this \"downhill\" exergonic path:",
                answer: "glucose to NADH to ETC to oxygen",
                explanation: "Electrons from glucose are transferred to NADH, then through the electron transport chain (ETC), and ultimately to oxygen.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Electrons are taken from glucose at different steps",
                answer: "Electrons",
                explanation: "Electrons are extracted from glucose molecules at various steps during cellular respiration.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Each electron travels with a proton",
                answer: "proton",
                explanation: "Electrons travel with protons, forming hydride ions during the oxidation of glucose.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "______ are the oxidizing agent for glucose",
                answer: "Dehydrogenases",
                explanation: "Dehydrogenases are enzymes that oxidize glucose by removing electrons and protons.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Dehydrogenases takes ___ and ___ from glucose",
                answer: "electrons, protons",
                explanation: "Dehydrogenases remove 2 electrons and 2 protons from glucose during its oxidation process.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Dehydrogenases transfers _ and 1 _ to NAD+",
                answer: "2 electrons, 1 proton, NADH",
                explanation: "Dehydrogenases transfer 2 electrons and 1 proton to NAD+, reducing it to NADH.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "NADH carries electron to ",
                answer: "electron transport chain",
                explanation: "NADH carries high-energy electrons to the electron transport chain (ETC) for ATP production.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Sequence of proteins that shuttle electrons down a series of reactions",
                answer: "electron transport chain",
                explanation: "The electron transport chain consists of membrane proteins that shuttle electrons through redox reactions to help generate ATP.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The electron transport chain releases energy used to make ATP",
                answer: "ATP",
                explanation: "The electron transport chain releases energy as electrons move through protein complexes, which is used to synthesize ATP.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "ETC transfers electron to __ (the final electron acceptor) to make H2O",
                answer: "O2",
                explanation: "The electron transport chain transfers electrons to oxygen, the final electron acceptor, forming water (H2O).",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The first stage of cellular respiration is",
                answer: "Glycolysis",
                explanation: "Glycolysis is the first stage of cellular respiration, where glucose is broken down into two molecules of pyruvate.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The second stage of cellular respiration is",
                answer: "Pyruvate oxidation and the citric acid cycle",
                explanation: "In the second stage, pyruvate is oxidized to acetyl-CoA and enters the citric acid cycle (Krebs cycle) to produce electron carriers.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The third stage of cellular respiration is",
                answer: "Oxidative phosphorylation (ETC and chemiosmosis)",
                explanation: "In oxidative phosphorylation, the electron transport chain and chemiosmosis generate ATP using electrons carried by NADH and FADH2.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The starting point of cellular respiration is",
                answer: "Glycolysis",
                explanation: "Glycolysis is the initial step in cellular respiration, where glucose is broken down into two molecules of pyruvate.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Glycolysis occurs in",
                answer: "cytosol",
                explanation: "Glycolysis occurs in the cytosol of the cell, where glucose is split into two pyruvate molecules.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Glycolysis splits glucose (6C) into _____ (3C)",
                answer: "pyruvates",
                explanation: "Glycolysis breaks down one glucose molecule (6 carbon atoms) into two pyruvate molecules (3 carbon atoms each).",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The first stage of glycolysis is",
                answer: "Energy investment stage",
                explanation: "In the energy investment stage of glycolysis, ATP is used to phosphorylate glucose and its intermediates.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "In the energy investment stage of glycolysis,",
                answer: "The cell uses ATP to phosphorylate compounds of glucose",
                explanation: "ATP is invested to phosphorylate glucose and its derivatives, preparing them for later steps in glycolysis.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The second stage of glycolysis is",
                answer: "Energy payoff stage",
                explanation: "In the energy payoff stage, ATP and NADH are produced as 3-carbon molecules are converted into pyruvate.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "In the energy payoff stage of glycolysis,",
                answer: "Energy is produced by substrate level phosphorylation",
                explanation: "Substrate-level phosphorylation generates ATP during the energy payoff phase of glycolysis.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The net energy yield per 1 glucose is",
                answer: "2 ATP, 2 NADH",
                explanation: "Glycolysis produces 2 ATP and 2 NADH per molecule of glucose, with a small net energy gain.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "If oxygen is present, the pyruvate enters the",
                answer: "mitochondria",
                explanation: "If oxygen is available, pyruvate enters the mitochondria, where it is further processed during the citric acid cycle.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Pyruvate is oxidized into",
                answer: "acetyl coA",
                explanation: "In the mitochondria, pyruvate is oxidized to form acetyl-CoA, which then enters the citric acid cycle.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Acetyl coA is used to make",
                answer: "citrate",
                explanation: "Acetyl-CoA combines with oxaloacetate to form citrate in the first step of the citric acid cycle.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Pyruvate oxidation produces",
                answer: "2 CO2, 2 NADH",
                explanation: "Pyruvate oxidation produces 2 molecules of CO2 and 2 NADH per glucose molecule.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The citric acid cycle is also known as",
                answer: "Krebs cycle",
                explanation: "The citric acid cycle, also called the Krebs cycle, is the next stage of cellular respiration that completes the breakdown of glucose.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Where does the citric acid/Krebs cycle occur?",
                answer: "mitochondria matrix",
                explanation: "The citric acid cycle occurs in the mitochondrial matrix, where acetyl-CoA is oxidized.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The citric acid cycle releases",
                answer: "CO2",
                explanation: "The citric acid cycle releases carbon dioxide (CO2) as it oxidizes acetyl-CoA.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The citric acid cycle synthesizes",
                answer: "ATP",
                explanation: "The citric acid cycle produces ATP through substrate-level phosphorylation.",
                topic: "3.6"
            ),
        Flashcard3(
                question: "In the citric acid cycle, electrons are transferred to ____ and ____",
                answer: "NADH and FADH2",
                explanation: "In the citric acid cycle, electrons are transferred to the electron carriers NADH and FADH2, which transport them to the electron transport chain.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The inputs of the citric acid cycle are",
                answer: "2 acetyl CoA",
                explanation: "The citric acid cycle begins with 2 molecules of acetyl-CoA that are oxidized to produce energy.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The outputs of the citric acid cycle are",
                answer: "2 ATP, 6 NADH, 4 CO2, 2 FADH2",
                explanation: "Each turn of the citric acid cycle generates 2 ATP, 6 NADH, 4 CO2, and 2 FADH2.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Oxidative phosphorylation consists of these two steps",
                answer: "Electron transport chain, chemiosmosis",
                explanation: "Oxidative phosphorylation includes the electron transport chain (ETC) and chemiosmosis, both crucial for ATP production.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The electron transport chain is located in",
                answer: "inner membrane of mitochondria",
                explanation: "The electron transport chain is located in the inner mitochondrial membrane, where electron transfer occurs.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The ETC is a collection of",
                answer: "proteins",
                explanation: "The electron transport chain is composed of membrane-bound proteins that transfer electrons to generate energy.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "As electrons fall, proteins alternate between",
                answer: "reduced and oxidized state",
                explanation: "As electrons move through the electron transport chain, proteins alternate between reduced and oxidized states.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The ______ increase the surface area for reactions to occur",
                answer: "cristae",
                explanation: "The cristae (folds of the inner mitochondrial membrane) increase the surface area for the electron transport chain and ATP synthesis.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The electron transport chain manages energy release by",
                answer: "creating several small steps for the fall of electrons",
                explanation: "The electron transport chain releases energy gradually through several small steps as electrons move down the chain.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The final electron acceptor is",
                answer: "oxygen",
                explanation: "Oxygen is the final electron acceptor in the electron transport chain, combining with electrons and protons to form water.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Each oxygen pairs with _ __ and _ __ to form H2O",
                answer: "2H+, 2e-",
                explanation: "Each oxygen atom pairs with 2 protons (H+) and 2 electrons (e-) to form water (H2O).",
                topic: "3.6"
            ),
            Flashcard3(
                question: "One of the major functions of the ETC involving protons is",
                answer: "Creates a proton gradient across the membrane",
                explanation: "The electron transport chain helps create a proton gradient across the inner mitochondrial membrane, which is crucial for ATP synthesis.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "As proteins move electrons, pump __ inside membrane",
                answer: "H+",
                explanation: "The electron transport chain pumps hydrogen ions (H+) into the intermembrane space as it moves electrons.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "This gradient will power",
                answer: "chemiosmosis",
                explanation: "The proton gradient created by the electron transport chain powers chemiosmosis, the process of ATP synthesis.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Hydrogen ions are used to power",
                answer: "cellular work",
                explanation: "Hydrogen ions (H+) generated by the electron transport chain are used to power ATP synthesis and other cellular functions.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The enzyme that makes ATP from ADP + P is",
                answer: "ATP synthase",
                explanation: "ATP synthase is the enzyme that uses the proton gradient to synthesize ATP from ADP and inorganic phosphate (P).",
                topic: "3.6"
            ),
            Flashcard3(
                question: "H+ ions flow ____ their gradient through ATP synthase",
                answer: "down",
                explanation: "Hydrogen ions (H+) flow down their concentration gradient through ATP synthase, driving the production of ATP.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "ATP synthase produces around __ to __ ATP per glucose",
                answer: "26-28",
                explanation: "ATP synthase produces approximately 26-28 ATP molecules per glucose during oxidative phosphorylation.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "A proton gradient is formed across the inner mitochondrial membrane by",
                answer: "the exergonic flow of electrons from NADH and FADH2",
                explanation: "The energy from electrons carried by NADH and FADH2 powers the proton pumps in the electron transport chain, forming a proton gradient.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The inputs of oxidative phosphorylation are",
                answer: "10 NADH, 2 FADH2",
                explanation: "Oxidative phosphorylation requires 10 NADH and 2 FADH2 as inputs to provide the electrons for the electron transport chain.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The outputs of oxidative phosphorylation are",
                answer: "26-28 ATP",
                explanation: "Oxidative phosphorylation produces 26-28 ATP molecules through the electron transport chain and chemiosmosis.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The total amount of ATP produced through one cycle of cellular respiration is",
                answer: "30-32 ATP",
                explanation: "One cycle of cellular respiration can produce 30-32 ATP molecules in total, depending on the efficiency of the process.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The two ways organisms produce ATP in the absence of oxygen are",
                answer: "Anaerobic respiration, fermentation",
                explanation: "In the absence of oxygen, organisms can produce ATP through anaerobic respiration or fermentation, both of which bypass the electron transport chain.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Anaerobic respiration generates ATP using",
                answer: "an ETC in the absence of oxygen",
                explanation: "Anaerobic respiration uses an electron transport chain (ETC) to generate ATP, but without oxygen as the final electron acceptor.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The final electron acceptors in anaerobic respiration are",
                answer: "sulfates, nitrates",
                explanation: "In anaerobic respiration, sulfates or nitrates serve as the final electron acceptors instead of oxygen.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Fermentation generates ATP ____ an ETC",
                answer: "without",
                explanation: "Fermentation generates ATP without using an electron transport chain, relying solely on glycolysis.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "The two types of fermentation are",
                answer: "Alcohol, lactic acid",
                explanation: "The two types of fermentation are alcohol fermentation (producing ethanol) and lactic acid fermentation (producing lactate).",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Fermentation is an extension of",
                answer: "Glycolysis",
                explanation: "Fermentation allows glycolysis to continue by regenerating NAD+ in the absence of oxygen, enabling ATP production.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "Fermentation occurs in",
                answer: "cytosol",
                explanation: "Fermentation occurs in the cytosol, where glycolysis also takes place.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "In alcohol fermentation, pyruvate is converted into",
                answer: "ethanol",
                explanation: "In alcohol fermentation, pyruvate is converted into ethanol, releasing carbon dioxide as a byproduct.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "In lactic acid fermentation, pyruvate is reduced to",
                answer: "lactate",
                explanation: "In lactic acid fermentation, NADH reduces pyruvate directly to form lactate, regenerating NAD+.",
                topic: "3.6"
            ),
            Flashcard3(
                question: "When lactate is in the blood, ____ the pH",
                answer: "lowers",
                explanation: "Lactate in the blood lowers the pH, leading to a more acidic environment in the muscles and blood.",
                topic: "3.6"
            ),
            
    ]
    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentIndex = 0
    @State private var isFlipped = false
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = ["3.1", "3.2", "3.3", "3.4", "3.5", "3.6", "3.7", "3.8"]
    
    var filteredFlashcards: [Flashcard3] {
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
                        ForEach(["3.1", "3.2", "3.3", "3.4", "3.5", "3.6", "3.7", "3.8"], id: \.self) { topic in
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

struct Flashcard3: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
    let explanation: String
    let topic: String
}

#Preview {
    Unit3Flashcards()
}
