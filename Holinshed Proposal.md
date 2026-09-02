**Holinshed Project: Data Science Student Project Proposal**

# **Project Background**

The Holinshed Chronicles, first published in 1577, is one of the most important keys to understanding British history. It spans over a thousand years of narrative descriptions of the people, places, events, and miscellaneous occurrences in the British Isles. Writers since Shakespeare have used the Chronicles as a source or as inspiration for their works of “historical” fiction — Richard III being a well-known example — and researchers interested in understanding how Tudor Britons understood themselves and their world have long found the massive tomes crucial to their work. Yet no modern edition of the Chronicles exists; even the printed tomes in Bertrand Library maintain the original spelling, meaning that readers encounter non-standard early modern English alongside the unusual print conventions of the sixteenth century.

In the late 1990s, a group of researchers at Oxford University produced a TEI-XML machine-readable version of the entire 1577 first edition and 1587 second edition (each file runs to over 113,000 lines of code). The files, known collectively as the Holinshed Project, were made publicly available on a freely accessible website, expanding their use to a much wider audience of scholars and students. The Oxford team did not undertake additional computational analysis of the texts, but their encoding work laid essential groundwork for such efforts. With Oxford announcing in April that the Holinshed Project website would be taken down in May, Bucknell has adopted the TEI files and plans to republish them through the LEAF platform — and to go further, using the Chronicles as the foundation for a thorough computational analysis of the information within them.

# **Project Goals**

The primary objective of this project is to produce a “factoidal prosopography” of the Holinshed Chronicles — a structured, machine-readable dataset of the people, places, and events described in the text, along with the relationships between them, modeled using the CIDOC-CRM ontological framework. This means using Named Entity Recognition (NER) to extract person and place name data, linking those entities to their locations in the text, and applying CIDOC-CRM to describe connections not only between individual people and events, but across networks of persons, events, and places over time.

Anticipated intermediate milestones include:

* Milestone 1: Develop and apply a Named Entity Recognition pipeline to extract person names, place names, and key events from the Chronicles text

* Milestone 2: Geo-reference extracted place names and link entities to their textual locations (e.g., book, chapter, passage)

* Milestone 3: Model entity relationships — persons to events, events to places, persons to persons — using the CIDOC-CRM ontological framework

* Milestone 4: Compile, document, and publish the completed prosopographical dataset alongside the LEAF-hosted TEI texts

# **Data**

Look at the web pages for the kings and queens' entries (https://confluence.bucknell.edu/regnal-years)[here]. 

The primary data sources for this project are two TEI-XML encoded editions of the Holinshed Chronicles: the **1577 first edition** and the **1587 second edition**, each running to over 113,000 lines of XML code. Both files follow the Text Encoding Initiative (TEI) standard and contain structured markup for textual features such as headings, speakers, marginal notes, and some named entities. The files are plain-text XML and are readily processable with standard XML and natural language processing tools.

These files have already been secured: they were produced by the Oxford Holinshed Project team and have been adopted by the project lead at Bucknell, satisfying the requirement that at least one data source be in hand by August 1st. Students will be able to begin working with the data immediately at the start of the project. Depending on the direction of the prosopographical work, supplementary datasets — such as historical gazetteers or linked open data sources like Wikidata — may be incorporated to support entity linking and geo-referencing.

# **Software and Other Tools**

Students will likely need to work with or learn some combination of the following tools and technologies, depending on the precise direction of the project:

* XML/TEI processing: Famíliarity with XML is essential. Tools may include Python’s lxml or xml.etree libraries, and potentially Oxygen XML Editor for manual inspection of the source files.

* Natural Language Processing / Named Entity Recognition: Python-based NLP libraries such as spaCy will be central to the entity extraction work. Because the Chronicles are written in early modern English, students may also need to explore or fine-tune models trained on historical text (e.g., models from the CLARIN or Historical NLP communities).

* Linked Data and Ontology Tools: Modeling relationships with CIDOC-CRM will require some exposure to RDF and linked data concepts. Tools may include Protégé for ontology work and Python’s rdflib for generating RDF output.

* Graph Databases (potentially): If the prosopographical network grows complex, a graph database such as Neo4j may be useful for querying and visualizing entity relationships.

* Version Control: Git and GitHub (or similar) for collaborative code management and documentation.

The project supervisor will train students on any unusual tools, languages, etc. (not only 16th century English but also XML/TEI, CIDOC-CRM) and is open to students proposing alternative tools where appropriate. If students bring relevant expertise in particular technologies, that can inform the final toolchain.

# **Potential Deliverables**

In addition to the required final presentation and written deliverable (a white paper documenting methods, findings, and future directions is preferred over a dashboard for this project), some of the following deliverables might be achievable:

* A clean, documented code repository containing the NER pipeline, XML processing scripts, and entity-linking workflows, suitable for reuse by other DH researchers working with TEI texts

* The prosopographical dataset itself: a structured, CIDOC-CRM-modeled dataset of persons, places, and events extracted from the Chronicles, published in a standard linked data format (e.g., RDF/JSON-LD)

* An interactive network visualization of the prosopographical data, allowing users to explore relationships between individuals, events, and locations across the Chronicles

* A poster presentation suitable for display at the Digital Humanities 2027 annual conference or the TEI 2027 annual meeting. 

* Project documentation covering data preparation decisions, NER model selection and performance, and entity-linking methodology, to support future extension of the work
