###############################################################################
#        GLUE2 Open Enumerations Registry
#   URL: http://redmine.ogf.org/projects/glue-wg
#   Maintainer: Florido Paganelli florido.paganelli@hep.lu.se
#   Last update: 2014-05-02
###############################################################################

***********************************************************
Procedures and best practices regarding Open Enumerations
are still under discussion within the group.
A proposal is here:

   http://redmine.ogf.org/dmsf_files/13224?download=
   
***********************************************************

§ Table of Contents

  1. Version History
  2. Release Notes
  3. Document conventions
  4. What are Open Enumerations
  5. How to add new enumerations
  6. Documents in 'draft' status
  7. Structure of the CSV files
  8. Merging documents into one

+++++++++++++++++++++++++++
§ 1. Version History
+++++++++++++++++++++++++++
This document:
v0.4 - Release 1.0: Added Release Notes and sections 6 and 7.
v0.3 - Linked document with updated information. 2014-04-04
v0.2 - Updated rules for 'draft' documents. 2013-06-14
v0.1 - Initial release. 2012-12-07

For version history of the whole set of Enumerations documents, 
please refer to ChangeLog.txt

+++++++++++++++++++++++++++
§ 2. Release Notes
+++++++++++++++++++++++++++

With Release 1.0 a new CSV file structure is introduced, to ease two 
tasks:

1) Find out which Recommended Open Enumeration is to be used instead
   of a Deprecated one
2) Merge all document files into one

A description of the new file structure is given in this document.

This release introduces a merge script that allows information consumers
to have all enumerations in one single CSV file. Usage is also described
in this document.

The initial release 1.0 introduces no new enumerations. Minor releases
might add new values.

++++++++++++++++++++++++++++++++
§ 3. Document conventions
++++++++++++++++++++++++++++++++

The following terminology is adopted:

Information/service provider
   software that produces the GLUE2 entries.
Information consumer
   software or person that reads some GLUE2 information source.

Additionally the following holds:
The key words ‘MUST,” “MUST NOT,” “REQUIRED,” “SHALL,” “SHALL NOT,” 
“SHOULD,” “SHOULD NOT,” “RECOMMENDED,” “MAY,” and “OPTIONAL” are to be
interpreted as described in RFC 2119 
(see http://www.ietf.org/rfc/rfc2119.txt).

++++++++++++++++++++++++++++++++
§ 4. What are Open Enumerations
++++++++++++++++++++++++++++++++

Open Enumerations as defined in the GLUE2 Model document:

   [1] http://www.ogf.org/documents/GFD.147.pdf

are special strings that are used to identify technologies and features
in the GLUE2 world. Each open enumeration must be lowercase and
must come with a description.

GLUE2 model defines some of them in Appendix B. In this repository,
the GLUE2 WG will maintain all those that are added by who wants
to use the GLUE2 model, so that they can be used for validation.

In a first release, these open enumerations will be presented in the
CSV (Comma Separated Values) format, but more elaborated formats might 
follow upon request.

+++++++++++++++++++++++++++++++++
§ 5. How to add new enumerations
+++++++++++++++++++++++++++++++++

For the moment being, just write an email to the GLUE2 WG at:

  http://redmine.ogf.org/projects/glue-wg

Or email the maintainer indicated in the header of this document.

Send the list of Open Enumerations provided by a description for 
each entry, and a reference to the organization that forged them.

Each enumeration string has his own format, please refer to [1] to know
what format to use. At the moment this is still work in progress.

+++++++++++++++++++++++++++++++++
§ 6. Documents in 'draft' status
+++++++++++++++++++++++++++++++++

Some of the GLUE2 CSV documents are named

  <type>-draft.csv
  
Example: Capability_t-draft.csv

Such documents contain strings whose status has not yet been 
approved/revised by the GLUE2 Working Group. They can be used by 
consumers, but they are subject to change.

Some of the strings in such documents MUST be considered valid but not 
official.

+++++++++++++++++++++++++++++++++
§ 7. Structure of the CSV files
+++++++++++++++++++++++++++++++++

The CSV file header is as follows:

| EnumerationType | EnumerationValue | Description | Status | Recommended | Deprecates |

Each column has the following content/meaning:

EnumerationType: the type name as described in GFD.147. 
    i.e. ServiceType_t
    
EnumerationValue: A string that is the enumeration itself. This string
    should be used by information providers and consumers to be 
    published in information systems.
    
Status: Tell wheter the string should be used or not. Can be one of:
    Recommended: The EnumerationValue string should be used in 
                 production systems by both service providers and
                 consumers.
    Deprecated: The EnumerationValue string should not be used anymore, 
                but is still used in production systems. Information 
                providers are advised to change to the value present in
                the "Recommended" column.
                Information consumers should temporarily accept or
                expect both the Deprecated and the Recommended strings.
    Obsolete: The string, and possibly the related represented entity,
              are not used in production anymore and should not be 
              published bu providers or accepted by consumers. This 
              is mainly used for historical record.

Recommended: If this field is NOT EMPTY, then the contained string
             SHOULD be used instead of the EnumerationValue. 
             Read description of the Status field for more details.
             
Deprecates: If the field is NOT EMPTY, then the EnumerationValue string
            SHOULD be used instead of the contained values.
    

+++++++++++++++++++++++++++++++++
§ 8. Merging documents into one
+++++++++++++++++++++++++++++++++

To obtain a single document containing all enumeration, execute the
following bash script in the GLUE2 Enumerations git repository 
directory:

   ./mergeEnums.sh
   
The result will be two documents:

GLUE2OpenEnumerations.csv 
  Contains all officially approved GLUE2 Open Enumerations

GLUE2OpenEnumerations-drafts.csv 
  Contains all GLUE2 Open Enumerations documents pending approval. 
  Note that those Enumerations that are pending approval have no
  "Status": information validators might fire a warning if a consumer
  is using an enumeration in draft state.

Those documents are a simple "cat" of the other documents but with 
a single header for ease of import.
