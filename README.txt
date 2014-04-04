###############################################################################
#        GLUE2 Open Enumerations Registry
#   URL: http://redmine.ogf.org/projects/glue-wg
#   Maintainer: Florido Paganelli florido.paganelli@hep.lu.se
#   Last update: 2014-04-04
###############################################################################

§ Table of Contents

  1. Version History
  2. What are Open Enumerations
  3. How to add new enumerations
  4. Documents in 'draft' status

+++++++++++++++++++++++++++
§ 1. Version History
+++++++++++++++++++++++++++
This document:
v0.3 - Linked document with updated information. 2014-04-04
v0.2 - Updated rules for 'draft' documents. 2013-06-14
v0.1 - Initial release. 2012-12-07'

For version history of the whole set of Enumerations documents, 
please refer to ChangeLog.txt

**************************************************************
  Up-to-date information about procedures and formats of
  CSV files is ongoing on the group mailing list.
  Currently under discussion:
   http://redmine.ogf.org/dmsf_files/13228?download=
**************************************************************

++++++++++++++++++++++++++++++++
§ 2. What are Open Enumerations
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
§ 3. How to add new enumerations
+++++++++++++++++++++++++++++++++

For the moment being, just write an email to the GLUE2 WG at:

  http://redmine.ogf.org/projects/glue-wg

Or email the maintainer indicated in the header of this document.

Send the list of Open Enumerations provided by a description for 
each entry, and a reference to the organization that forged them.

Each enumeration string has his own format, please refer to [1] to know
what format to use. At the moment this is still work in progress.

+++++++++++++++++++++++++++++++++
§ 4. Documents in 'draft' status
+++++++++++++++++++++++++++++++++

Some of the GLUE2 CSV documents are named

  <type>-draft.csv
  
Example: Capability_t-draft.csv

Such documents contain strings whose status has not yet been 
approved/revised by the GLUE2 Working Group. They can be used by 
consumers, but they are subject to change.

Some of the strings in such documents MUST be considered valid but not 
official.

In this release, -draft.csv files contain 
a new way of finding out how to substitute a Deprecated enumeration 
with a Recommended one is proposed, and its effectiveness 
is currently under discussion within the group.
