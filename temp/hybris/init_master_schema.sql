
CREATE CACHED TABLE abstractcontactinfo
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_user BIGINT,
    p_userpos INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_phonenumber NVARCHAR(255),
    p_type BIGINT,
    PRIMARY KEY (PK)
);

CREATE INDEX userRelIDX_26 ON abstractcontactinfo (p_user);

CREATE INDEX userposPosIDX_26 ON abstractcontactinfo (p_userpos);


CREATE CACHED TABLE abstractlinkentries
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_sortorder INTEGER,
    p_area BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_height INTEGER,
    p_spacer TINYINT,
    p_parentlink BIGINT,
    p_parentlinkpos INTEGER,
    p_url NVARCHAR(255),
    p_descriptionicon BIGINT,
    p_extensionname NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX area_6002 ON abstractlinkentries (p_area);

CREATE INDEX code_6002 ON abstractlinkentries (p_code);

CREATE INDEX parentlinkRelIDX_6002 ON abstractlinkentries (p_parentlink);

CREATE INDEX parentlinkposPosIDX_6002 ON abstractlinkentries (p_parentlinkpos);


CREATE CACHED TABLE abstractlinkentrieslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_title NVARCHAR(255),
    p_description LONGVARCHAR,
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE aclentries
(
    hjmpTS BIGINT,
    PrincipalPK BIGINT,
    ItemPK BIGINT,
    Negative TINYINT DEFAULT 0,
    PermissionPK BIGINT
);

CREATE INDEX aclcheckindex_aclentries ON aclentries (ItemPK, PrincipalPK);

CREATE INDEX aclupdateindex_aclentries ON aclentries (ItemPK);


CREATE CACHED TABLE addresses
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_town NVARCHAR(255),
    titlepk BIGINT,
    originalpk BIGINT,
    regionpk BIGINT,
    p_pobox NVARCHAR(255),
    p_fax NVARCHAR(255),
    p_department NVARCHAR(255),
    p_company NVARCHAR(255),
    p_building NVARCHAR(255),
    p_cellphone NVARCHAR(255),
    p_middlename2 NVARCHAR(255),
    p_gender BIGINT,
    p_district NVARCHAR(255),
    p_phone2 NVARCHAR(255),
    p_postalcode NVARCHAR(255),
    p_streetname NVARCHAR(255),
    p_appartment NVARCHAR(255),
    p_lastname NVARCHAR(255),
    countrypk BIGINT,
    p_streetnumber NVARCHAR(255),
    p_middlename NVARCHAR(255),
    p_firstname NVARCHAR(255),
    p_dateofbirth TIMESTAMP,
    p_email NVARCHAR(255),
    duplicate TINYINT,
    p_phone1 NVARCHAR(255),
    p_unloadingaddress TINYINT,
    p_remarks NVARCHAR(255),
    p_billingaddress TINYINT,
    p_url NVARCHAR(255),
    p_shippingaddress TINYINT,
    p_contactaddress TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX testindex_23 ON addresses (p_email);

CREATE INDEX Address_Owner_23 ON addresses (OwnerPkString);


CREATE CACHED TABLE addressprops
(
    hjmpTS BIGINT,
    VALUE1 LONGVARBINARY,
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    REALNAME NVARCHAR(255),
    TYPE1 INTEGER DEFAULT 0,
    VALUESTRING1 LONGVARCHAR,
    LANGPK BIGINT,
    NAME NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK, NAME)
);

CREATE INDEX itempk_addressprops ON addressprops (ITEMPK);

CREATE INDEX realnameidx_addressprops ON addressprops (REALNAME);

CREATE INDEX nameidx_addressprops ON addressprops (NAME);


CREATE CACHED TABLE agreements
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_startdate TIMESTAMP,
    p_supplier BIGINT,
    p_enddate TIMESTAMP,
    p_currency BIGINT,
    p_buyercontact BIGINT,
    p_catalogversion BIGINT,
    p_suppliercontact BIGINT,
    p_catalog BIGINT,
    p_buyer BIGINT,
    p_id NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE atomictypes
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_generate TINYINT,
    p_autocreate TINYINT,
    p_extensionname NVARCHAR(255),
    InternalCode NVARCHAR(255),
    p_defaultvalue LONGVARBINARY,
    JavaClassName NVARCHAR(255),
    InheritancePathString LONGVARCHAR,
    SuperTypePK BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    InternalCodeLowerCase NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX typecode_81 ON atomictypes (InternalCode);

CREATE INDEX typecodelowercase_81 ON atomictypes (InternalCodeLowerCase);

CREATE INDEX inheritpsi_81 ON atomictypes (InheritancePathString);


CREATE CACHED TABLE atomictypeslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    p_description LONGVARCHAR,
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE attr2valuerel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_value BIGINT,
    p_attributeassignment BIGINT,
    p_attribute BIGINT,
    p_position INTEGER,
    p_externalid NVARCHAR(255),
    p_systemversion BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX valIDX_609 ON attr2valuerel (p_value);

CREATE INDEX idIDX_609 ON attr2valuerel (p_externalid);

CREATE INDEX attrIDX_609 ON attr2valuerel (p_attribute);

CREATE INDEX sysVer_609 ON attr2valuerel (p_systemversion);

CREATE INDEX catRelIDX_609 ON attr2valuerel (p_attributeassignment);


CREATE CACHED TABLE attributedescriptors
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_generate TINYINT,
    p_autocreate TINYINT,
    p_extensionname NVARCHAR(255),
    AttributeTypePK BIGINT,
    QualifierInternal NVARCHAR(255),
    columnName NVARCHAR(255),
    p_unique TINYINT,
    SelectionDescriptorPK BIGINT,
    p_attributehandler NVARCHAR(255),
    modifiers INTEGER DEFAULT 0,
    PersistenceTypePK BIGINT,
    EnclosingTypePK BIGINT,
    p_defaultvaluedefinitionstring NVARCHAR(255),
    PersistenceQualifierInternal NVARCHAR(255),
    p_defaultvalue LONGVARBINARY,
    p_dontcopy TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    QualifierLowerCaseInternal NVARCHAR(255),
    isHidden TINYINT DEFAULT 0,
    InheritancePathString LONGVARCHAR,
    isProperty TINYINT DEFAULT 0,
    SuperAttributeDescriptorPK BIGINT,
    p_defaultvalueexpression NVARCHAR(255),
    p_position INTEGER,
    p_param TINYINT,
    p_issource TINYINT,
    p_relationname NVARCHAR(255),
    p_ordered TINYINT,
    p_relationtype BIGINT,
    p_storeindatabase TINYINT,
    p_needrestart TINYINT,
    p_externalqualifier NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX qualifier_87 ON attributedescriptors (QualifierInternal, EnclosingTypePK);

CREATE INDEX lcqualifier_87 ON attributedescriptors (QualifierLowerCaseInternal);

CREATE INDEX enclosing_87 ON attributedescriptors (EnclosingTypePK);

CREATE INDEX inheritps_87 ON attributedescriptors (InheritancePathString);


CREATE CACHED TABLE attributedescriptorslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    p_description LONGVARCHAR,
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cartentries
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    productpk BIGINT,
    baseprice DECIMAL(30,8),
    rejectedflag TINYINT,
    unitpk BIGINT,
    totalprice DECIMAL(30,8),
    p_order BIGINT,
    calculatedflag TINYINT,
    taxvalues NVARCHAR(255),
    info NVARCHAR(255),
    giveawayflag TINYINT,
    discountvalues LONGVARCHAR,
    entrynumber INTEGER,
    quantity DECIMAL(30,8),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX oeProd_44 ON cartentries (productpk);

CREATE INDEX oeOrd_44 ON cartentries (p_order);


CREATE CACHED TABLE carts
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    discountonpayment TINYINT,
    currencypk BIGINT,
    totalprice DECIMAL(30,8),
    deliverycost DECIMAL(30,8),
    totaltax DECIMAL(30,8),
    p_exportstatus BIGINT,
    code NVARCHAR(255),
    netflag TINYINT,
    deliverystatuspk BIGINT,
    totaltaxvalues LONGVARCHAR,
    paymentmodepk BIGINT,
    paymentstatuspk BIGINT,
    discountondelivery TINYINT,
    globaldiscountvalues LONGVARCHAR,
    deliveryaddresspk BIGINT,
    paymentaddresspk BIGINT,
    userpk BIGINT,
    paymentcost DECIMAL(30,8),
    subtotal DECIMAL(30,8),
    totaldiscounts DECIMAL(30,8),
    paymentinfopk BIGINT,
    statuspk BIGINT,
    calculatedflag TINYINT,
    deliverymodepk BIGINT,
    statusinfo NVARCHAR(255),
    p_sessionid NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX OrderCode_43 ON carts (code);

CREATE INDEX OrderUser_43 ON carts (userpk);


CREATE CACHED TABLE cat2attrrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_visibility BIGINT,
    p_localized TINYINT,
    p_attributetype BIGINT,
    p_unit BIGINT,
    p_comparable TINYINT,
    p_position INTEGER,
    p_range TINYINT,
    p_classificationattribute BIGINT,
    p_externalid NVARCHAR(255),
    p_classificationclass BIGINT,
    p_searchable TINYINT,
    p_formatdefinition NVARCHAR(255),
    p_mandatory TINYINT,
    p_listable TINYINT,
    p_systemversion BIGINT,
    p_multivalued TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX idIDX_610 ON cat2attrrel (p_externalid);

CREATE INDEX sysVer_610 ON cat2attrrel (p_systemversion);

CREATE INDEX relSrcIDX_610 ON cat2attrrel (p_classificationclass);

CREATE INDEX relTgtIDX_610 ON cat2attrrel (p_classificationattribute);

CREATE INDEX posIdx_610 ON cat2attrrel (p_position);


CREATE CACHED TABLE cat2attrrellp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cat2catrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_144 ON cat2catrel (SequenceNumber);

CREATE INDEX linktarget_144 ON cat2catrel (TargetPK);

CREATE INDEX rseqnr_144 ON cat2catrel (RSequenceNumber);

CREATE INDEX linksource_144 ON cat2catrel (SourcePK);

CREATE INDEX qualifier_144 ON cat2catrel (Qualifier);


CREATE CACHED TABLE cat2keywordrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_605 ON cat2keywordrel (SequenceNumber);

CREATE INDEX linktarget_605 ON cat2keywordrel (TargetPK);

CREATE INDEX rseqnr_605 ON cat2keywordrel (RSequenceNumber);

CREATE INDEX linksource_605 ON cat2keywordrel (SourcePK);

CREATE INDEX qualifier_605 ON cat2keywordrel (Qualifier);


CREATE CACHED TABLE cat2medrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_145 ON cat2medrel (SequenceNumber);

CREATE INDEX linktarget_145 ON cat2medrel (TargetPK);

CREATE INDEX rseqnr_145 ON cat2medrel (RSequenceNumber);

CREATE INDEX linksource_145 ON cat2medrel (SourcePK);

CREATE INDEX qualifier_145 ON cat2medrel (Qualifier);


CREATE CACHED TABLE cat2princrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_613 ON cat2princrel (SequenceNumber);

CREATE INDEX linktarget_613 ON cat2princrel (TargetPK);

CREATE INDEX rseqnr_613 ON cat2princrel (RSequenceNumber);

CREATE INDEX linksource_613 ON cat2princrel (SourcePK);

CREATE INDEX qualifier_613 ON cat2princrel (Qualifier);


CREATE CACHED TABLE cat2prodrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_143 ON cat2prodrel (SequenceNumber);

CREATE INDEX linktarget_143 ON cat2prodrel (TargetPK);

CREATE INDEX rseqnr_143 ON cat2prodrel (RSequenceNumber);

CREATE INDEX linksource_143 ON cat2prodrel (SourcePK);

CREATE INDEX qualifier_143 ON cat2prodrel (Qualifier);


CREATE CACHED TABLE catalogs
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_urlpatterns LONGVARBINARY,
    p_defaultcatalog TINYINT,
    p_previewurltemplate NVARCHAR(255),
    p_buyer BIGINT,
    p_id varchar(200),
    p_supplier BIGINT,
    p_activecatalogversion BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX idIdx_600 ON catalogs (p_id);


CREATE CACHED TABLE catalogslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE catalogversions
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_active TINYINT,
    p_defaultcurrency BIGINT,
    p_territories LONGVARCHAR,
    p_inclduty TINYINT,
    p_inclfreight TINYINT,
    p_languages LONGVARCHAR,
    p_version NVARCHAR(255),
    p_mimerootdirectory NVARCHAR(255),
    p_generatorinfo NVARCHAR(255),
    p_generationdate TIMESTAMP,
    p_inclassurance TINYINT,
    p_previousupdateversion INTEGER,
    p_categorysystemid NVARCHAR(255),
    p_catalog BIGINT,
    p_inclpacking TINYINT,
    p_mnemonic NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX visibleIDX_601 ON catalogversions (p_active);

CREATE INDEX catalogIDX_601 ON catalogversions (p_catalog);

CREATE INDEX versionIDX_601 ON catalogversions (p_version);


CREATE CACHED TABLE catalogversionslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_categorysystemdescription NVARCHAR(255),
    p_categorysystemname NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE catalogversionsyncjob
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_624 ON catalogversionsyncjob (SequenceNumber);

CREATE INDEX linktarget_624 ON catalogversionsyncjob (TargetPK);

CREATE INDEX rseqnr_624 ON catalogversionsyncjob (RSequenceNumber);

CREATE INDEX linksource_624 ON catalogversionsyncjob (SourcePK);

CREATE INDEX qualifier_624 ON catalogversionsyncjob (Qualifier);


CREATE CACHED TABLE categories
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_thumbnails LONGVARCHAR,
    p_detail LONGVARCHAR,
    p_picture BIGINT,
    p_order INTEGER,
    p_catalogversion BIGINT,
    p_logo LONGVARCHAR,
    p_code NVARCHAR(255),
    p_data_sheet LONGVARCHAR,
    p_thumbnail BIGINT,
    p_others LONGVARCHAR,
    p_normal LONGVARCHAR,
    p_catalog BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_showemptyattributes TINYINT,
    p_externalid NVARCHAR(255),
    p_revision NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX codeIDX_142 ON categories (p_code);

CREATE INDEX codeVersionIDX_142 ON categories (p_code, p_catalogversion);

CREATE INDEX versionIDX_142 ON categories (p_catalogversion);

CREATE INDEX extID_142 ON categories (p_externalid);


CREATE CACHED TABLE categorieslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description LONGVARCHAR,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE catverdiffs
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_targetversion BIGINT,
    p_differencevalue DOUBLE,
    p_cronjob BIGINT,
    p_sourceversion BIGINT,
    p_differencetext LONGVARCHAR,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_targetproduct BIGINT,
    p_mode BIGINT,
    p_sourceproduct BIGINT,
    p_targetcategory BIGINT,
    p_sourcecategory BIGINT,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE changedescriptors
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_savetimestamp TIMESTAMP,
    p_changeditem BIGINT,
    p_cronjob BIGINT,
    p_changetype NVARCHAR(255),
    p_sequencenumber INTEGER,
    p_step BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_targetitem BIGINT,
    p_done TINYINT,
    p_copiedimplicitely TINYINT,
    PRIMARY KEY (PK)
);

CREATE INDEX cronjobIDX_505 ON changedescriptors (p_cronjob);

CREATE INDEX seqNrIDX_505 ON changedescriptors (p_sequencenumber);

CREATE INDEX stepIDX_505 ON changedescriptors (p_step);

CREATE INDEX changedItemIDX_505 ON changedescriptors (p_changeditem);

CREATE INDEX doneIDX_505 ON changedescriptors (p_done);


CREATE CACHED TABLE classattrvalues
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_systemversion BIGINT,
    p_externalid NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX sysVer_608 ON classattrvalues (p_systemversion);

CREATE INDEX code_608 ON classattrvalues (p_code);

CREATE INDEX idIDX_608 ON classattrvalues (p_externalid);


CREATE CACHED TABLE classattrvalueslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE classificationattrs
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_externalid NVARCHAR(255),
    p_systemversion BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX code_607 ON classificationattrs (p_code);

CREATE INDEX sysVer_607 ON classificationattrs (p_systemversion);

CREATE INDEX idIDX_607 ON classificationattrs (p_externalid);


CREATE CACHED TABLE classificationattrslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE clattrunt
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_unittype NVARCHAR(255),
    p_conversionfactor DOUBLE,
    p_externalid NVARCHAR(255),
    p_systemversion BIGINT,
    p_symbol NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX sysVer_612 ON clattrunt (p_systemversion);

CREATE INDEX codeIdx_612 ON clattrunt (p_code);

CREATE INDEX extID_612 ON clattrunt (p_externalid);


CREATE CACHED TABLE clattruntlp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cmptype2covgrprels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_978 ON cmptype2covgrprels (SequenceNumber);

CREATE INDEX linktarget_978 ON cmptype2covgrprels (TargetPK);

CREATE INDEX rseqnr_978 ON cmptype2covgrprels (RSequenceNumber);

CREATE INDEX linksource_978 ON cmptype2covgrprels (SourcePK);

CREATE INDEX qualifier_978 ON cmptype2covgrprels (Qualifier);


CREATE CACHED TABLE cockpitcollections
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_user BIGINT,
    p_qualifier NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_collectiontype BIGINT,
    PRIMARY KEY (PK)
);

CREATE INDEX userRelIDX_1700 ON cockpitcollections (p_user);


CREATE CACHED TABLE cockpitcollectionslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_label NVARCHAR(255),
    p_description NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cockpitcollelements
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_objecttypecode NVARCHAR(255),
    p_collection BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX collectionRelIDX_1701 ON cockpitcollelements (p_collection);


CREATE CACHED TABLE cockpitcollitemrefs
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_objecttypecode NVARCHAR(255),
    p_collection BIGINT,
    p_item BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX itemIDX_1702 ON cockpitcollitemrefs (p_item);

CREATE INDEX collectionRelIDX_1702 ON cockpitcollitemrefs (p_collection);


CREATE CACHED TABLE cockpitcompaccessrights
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE cockpitcompconfigs
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_objecttemplatecode NVARCHAR(255),
    p_media BIGINT,
    p_principal BIGINT,
    p_factorybean NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX principalRelIDX_1707 ON cockpitcompconfigs (p_principal);


CREATE CACHED TABLE cockpitfavcategories
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_user BIGINT,
    p_qualifier NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX userRelIDX_1718 ON cockpitfavcategories (p_user);


CREATE CACHED TABLE cockpitfavcategorieslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_label NVARCHAR(255),
    p_description NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cockpititemtemplates
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_relatedtype BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX relatedtypeRelIDX_24242 ON cockpititemtemplates (p_relatedtype);


CREATE CACHED TABLE cockpititemtemplateslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description NVARCHAR(255),
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cockpitsavedfacvalues
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_cockpitsavedquery BIGINT,
    p_valuequalifier NVARCHAR(255),
    p_facetqualifier NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX cockpitsavedqueryRelIDX_1704 ON cockpitsavedfacvalues (p_cockpitsavedquery);


CREATE CACHED TABLE cockpitsavedparamvals
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_operatorqualifier NVARCHAR(255),
    p_languageiso NVARCHAR(255),
    p_cockpitsavedquery BIGINT,
    p_parameterqualifier NVARCHAR(255),
    p_casesensitive TINYINT,
    p_reference TINYINT,
    p_rawvalue LONGVARCHAR,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX cockpitsavedqueryRelIDX_1706 ON cockpitsavedparamvals (p_cockpitsavedquery);


CREATE CACHED TABLE cockpitsavedqueries
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_user BIGINT,
    p_defaultviewmode NVARCHAR(255),
    p_simpletext NVARCHAR(255),
    p_code NVARCHAR(255),
    p_selectedtemplatecode NVARCHAR(255),
    p_label NVARCHAR(255),
    p_selectedtypecode NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX userRelIDX_1703 ON cockpitsavedqueries (p_user);


CREATE CACHED TABLE cockpitsavedquerieslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cockpitsavedsortcrits
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_asc TINYINT,
    p_cockpitsavedquery BIGINT,
    p_criterionqualifier NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX cockpitsavedqueryRelIDX_1705 ON cockpitsavedsortcrits (p_cockpitsavedquery);


CREATE CACHED TABLE cockpittemplclassifrels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1713 ON cockpittemplclassifrels (SequenceNumber);

CREATE INDEX linktarget_1713 ON cockpittemplclassifrels (TargetPK);

CREATE INDEX rseqnr_1713 ON cockpittemplclassifrels (RSequenceNumber);

CREATE INDEX linksource_1713 ON cockpittemplclassifrels (SourcePK);

CREATE INDEX qualifier_1713 ON cockpittemplclassifrels (Qualifier);


CREATE CACHED TABLE collectiontypes
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_generate TINYINT,
    p_autocreate TINYINT,
    p_extensionname NVARCHAR(255),
    InternalCode NVARCHAR(255),
    p_defaultvalue LONGVARBINARY,
    ElementTypePK BIGINT,
    typeOfCollection INTEGER DEFAULT 0,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    InternalCodeLowerCase NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX typecode_83 ON collectiontypes (InternalCode);

CREATE INDEX typecodelowercase_83 ON collectiontypes (InternalCodeLowerCase);


CREATE CACHED TABLE collectiontypeslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    p_description LONGVARCHAR,
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE commentassignrelations
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1148 ON commentassignrelations (SequenceNumber);

CREATE INDEX linktarget_1148 ON commentassignrelations (TargetPK);

CREATE INDEX rseqnr_1148 ON commentassignrelations (RSequenceNumber);

CREATE INDEX linksource_1148 ON commentassignrelations (SourcePK);

CREATE INDEX qualifier_1148 ON commentassignrelations (Qualifier);


CREATE CACHED TABLE commentattachments
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_item BIGINT,
    p_abstractcomment BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX comm_att_comment_1146 ON commentattachments (p_abstractcomment);


CREATE CACHED TABLE commentcompcreaterels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1152 ON commentcompcreaterels (SequenceNumber);

CREATE INDEX linktarget_1152 ON commentcompcreaterels (TargetPK);

CREATE INDEX rseqnr_1152 ON commentcompcreaterels (RSequenceNumber);

CREATE INDEX linksource_1152 ON commentcompcreaterels (SourcePK);

CREATE INDEX qualifier_1152 ON commentcompcreaterels (Qualifier);


CREATE CACHED TABLE commentcomponents
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_domain BIGINT,
    p_name NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX commComponent_code_1142 ON commentcomponents (p_code);

CREATE INDEX domainRelIDX_1142 ON commentcomponents (p_domain);


CREATE CACHED TABLE commentcompreadrels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1150 ON commentcompreadrels (SequenceNumber);

CREATE INDEX linktarget_1150 ON commentcompreadrels (TargetPK);

CREATE INDEX rseqnr_1150 ON commentcompreadrels (RSequenceNumber);

CREATE INDEX linksource_1150 ON commentcompreadrels (SourcePK);

CREATE INDEX qualifier_1150 ON commentcompreadrels (Qualifier);


CREATE CACHED TABLE commentcompremoverels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1153 ON commentcompremoverels (SequenceNumber);

CREATE INDEX linktarget_1153 ON commentcompremoverels (TargetPK);

CREATE INDEX rseqnr_1153 ON commentcompremoverels (RSequenceNumber);

CREATE INDEX linksource_1153 ON commentcompremoverels (SourcePK);

CREATE INDEX qualifier_1153 ON commentcompremoverels (Qualifier);


CREATE CACHED TABLE commentcompwriterels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1151 ON commentcompwriterels (SequenceNumber);

CREATE INDEX linktarget_1151 ON commentcompwriterels (TargetPK);

CREATE INDEX rseqnr_1151 ON commentcompwriterels (RSequenceNumber);

CREATE INDEX linksource_1151 ON commentcompwriterels (SourcePK);

CREATE INDEX qualifier_1151 ON commentcompwriterels (Qualifier);


CREATE CACHED TABLE commentdomains
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_name NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX commDomain_code_1141 ON commentdomains (p_code);


CREATE CACHED TABLE commentitemrelations
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1147 ON commentitemrelations (SequenceNumber);

CREATE INDEX linktarget_1147 ON commentitemrelations (TargetPK);

CREATE INDEX rseqnr_1147 ON commentitemrelations (RSequenceNumber);

CREATE INDEX linksource_1147 ON commentitemrelations (SourcePK);

CREATE INDEX qualifier_1147 ON commentitemrelations (Qualifier);


CREATE CACHED TABLE commentmetadatas
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_item BIGINT,
    p_y INTEGER,
    p_comment BIGINT,
    p_pageindex INTEGER,
    p_x INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX commentRelIDX_1716 ON commentmetadatas (p_comment);


CREATE CACHED TABLE comments
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_subject NVARCHAR(255),
    p_author BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_code NVARCHAR(255),
    p_component BIGINT,
    p_commenttype BIGINT,
    p_priority INTEGER,
    p_commentpos INTEGER,
    p_comment BIGINT,
    p_parent BIGINT,
    p_parentpos INTEGER,
    PRIMARY KEY (PK)
);

CREATE INDEX comment_code_1140 ON comments (p_code);

CREATE INDEX comment_component_1140 ON comments (p_component);

CREATE INDEX reply_parent_1140 ON comments (p_parent);

CREATE INDEX reply_comment_1140 ON comments (p_comment);

CREATE INDEX parentposPosIDX_1140 ON comments (p_parentpos);

CREATE INDEX authorRelIDX_1140 ON comments (p_author);

CREATE INDEX commenttypeRelIDX_1140 ON comments (p_commenttype);

CREATE INDEX commentposPosIDX_1140 ON comments (p_commentpos);


CREATE CACHED TABLE commenttypes
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_metatype BIGINT,
    p_domain BIGINT,
    p_name NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX comment_type_code_1145 ON commenttypes (p_code, p_domain);

CREATE INDEX domainRelIDX_1145 ON commenttypes (p_domain);


CREATE CACHED TABLE commentusersettings
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_user BIGINT,
    p_ignored TINYINT,
    p_comment BIGINT,
    p_priority INTEGER,
    p_read TINYINT,
    p_hidden TINYINT,
    p_workstatus TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX cus_user_comment_1144 ON commentusersettings (p_user, p_comment);

CREATE INDEX commentRelIDX_1144 ON commentusersettings (p_comment);

CREATE INDEX userRelIDX_1144 ON commentusersettings (p_user);


CREATE CACHED TABLE commentwatchrelations
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1149 ON commentwatchrelations (SequenceNumber);

CREATE INDEX linktarget_1149 ON commentwatchrelations (TargetPK);

CREATE INDEX rseqnr_1149 ON commentwatchrelations (RSequenceNumber);

CREATE INDEX linksource_1149 ON commentwatchrelations (SourcePK);

CREATE INDEX qualifier_1149 ON commentwatchrelations (Qualifier);


CREATE CACHED TABLE competitionplayerrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_168 ON competitionplayerrel (SequenceNumber);

CREATE INDEX linktarget_168 ON competitionplayerrel (TargetPK);

CREATE INDEX rseqnr_168 ON competitionplayerrel (RSequenceNumber);

CREATE INDEX linksource_168 ON competitionplayerrel (SourcePK);

CREATE INDEX qualifier_168 ON competitionplayerrel (Qualifier);


CREATE CACHED TABLE composedtypes
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_generate TINYINT,
    p_autocreate TINYINT,
    p_extensionname NVARCHAR(255),
    InternalCode NVARCHAR(255),
    p_defaultvalue LONGVARBINARY,
    p_dynamic TINYINT,
    Singleton TINYINT DEFAULT 0,
    ItemJNDIName NVARCHAR(255),
    p_legacypersistence TINYINT,
    jaloClassName NVARCHAR(255),
    SuperTypePK BIGINT,
    p_jaloonly TINYINT,
    InheritancePathString LONGVARCHAR,
    p_systemtype TINYINT,
    p_catalogversionattributequali NVARCHAR(255),
    p_catalogitemtype TINYINT,
    p_uniquekeyattributequalifier NVARCHAR(255),
    p_loghmcchanges TINYINT,
    p_hmcicon BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    InternalCodeLowerCase NVARCHAR(255),
    removable TINYINT DEFAULT 0,
    ItemTypeCode INTEGER DEFAULT 0,
    propertyTableStatus TINYINT DEFAULT 0,
    p_localized TINYINT,
    p_sourceattribute BIGINT,
    p_targetattribute BIGINT,
    p_orderingattribute BIGINT,
    p_sourcetype BIGINT,
    p_targettype BIGINT,
    p_localizationattribute BIGINT,
    p_comparationattribute BIGINT,
    PRIMARY KEY (PK)
);

CREATE INDEX ComposedTypeSuperTypePKIDX_82 ON composedtypes (SuperTypePK);

CREATE INDEX typecode_82 ON composedtypes (InternalCode);

CREATE INDEX typecodelowercase_82 ON composedtypes (InternalCodeLowerCase);

CREATE INDEX inheritpsi_82 ON composedtypes (InheritancePathString);


CREATE CACHED TABLE composedtypeslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    p_description LONGVARCHAR,
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE compositeentries
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_compositecronjob BIGINT,
    p_triggerablejob BIGINT,
    p_compositecronjobpos INTEGER,
    p_executablecronjob BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX compositecronjobRelIDX_510 ON compositeentries (p_compositecronjob);

CREATE INDEX compositecronjobposPosIDX_510 ON compositeentries (p_compositecronjobpos);


CREATE CACHED TABLE configitems
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    PK BIGINT,
    createdTS TIMESTAMP,
    modifiedTS TIMESTAMP,
    OwnerPkString BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE constraintgroup
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_interfacename NVARCHAR(255),
    p_id NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_coveragedomainid NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX CronstraintGroup_idx_982 ON constraintgroup (p_id);


CREATE CACHED TABLE conversionerrors
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_errormessage LONGVARCHAR,
    p_container BIGINT,
    p_targetformat BIGINT,
    p_sourcemedia BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX containerRelIDX_403 ON conversionerrors (p_container);


CREATE CACHED TABLE conversiongroups
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX ConvGroup_code_idx_401 ON conversiongroups (p_code);


CREATE CACHED TABLE conversiongroupslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE countries
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    activeflag TINYINT,
    isocode NVARCHAR(255),
    p_flag BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_dummy TINYINT,
    PRIMARY KEY (PK)
);

CREATE INDEX ISOCode_34 ON countries (isocode);


CREATE CACHED TABLE countrieslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cronjobs
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_retry TINYINT,
    p_logleveldatabase BIGINT,
    p_errormode BIGINT,
    p_starttime TIMESTAMP,
    p_singleexecutable TINYINT,
    p_emailnotificationtemplate BIGINT,
    p_code NVARCHAR(255),
    p_sendemail TINYINT,
    p_requestabort TINYINT,
    p_job BIGINT,
    p_emailaddress NVARCHAR(255),
    p_priority INTEGER,
    p_active TINYINT,
    p_alternativedatasourceid NVARCHAR(255),
    p_removeonexit TINYINT,
    p_requestabortstep TINYINT,
    p_logtodatabase TINYINT,
    p_logtofile TINYINT,
    p_status BIGINT,
    p_currentstep BIGINT,
    p_endtime TIMESTAMP,
    p_sessioncurrency BIGINT,
    p_nodeid INTEGER,
    p_sessionlanguage BIGINT,
    p_result BIGINT,
    p_sessionuser BIGINT,
    p_changerecordingenabled TINYINT,
    p_loglevelfile BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_maxthreads INTEGER,
    p_catalogversion BIGINT,
    p_asynchronous TINYINT,
    p_includedformats LONGVARCHAR,
    p_containermediasonly TINYINT,
    p_includeconverted TINYINT,
    p_createsavedvalues TINYINT,
    p_forceupdate TINYINT,
    p_statusmessage NVARCHAR(255),
    p_mediasexportmediacode NVARCHAR(255),
    p_itemsskipped INTEGER,
    p_fieldseparator SMALLINT,
    p_report BIGINT,
    p_mode BIGINT,
    p_converterclass BIGINT,
    p_itemsexported INTEGER,
    p_itemsmaxcount INTEGER,
    p_quotecharacter SMALLINT,
    p_mediasexporttarget BIGINT,
    p_export BIGINT,
    p_jobmedia BIGINT,
    p_encoding BIGINT,
    p_dataexporttarget BIGINT,
    p_dataexportmediacode NVARCHAR(255),
    p_commentcharacter SMALLINT,
    p_singlefile TINYINT,
    p_exporttemplate BIGINT,
    p_itemsfound INTEGER,
    p_itempks BIGINT,
    p_itemsdeleted INTEGER,
    p_itemsrefused INTEGER,
    p_mediafolder BIGINT,
    p_paging INTEGER,
    p_timethreshold INTEGER,
    p_versionthreshold INTEGER,
    p_targetfolder BIGINT,
    p_movedmediascount INTEGER,
    p_medias LONGVARCHAR,
    p_lastsuccessfulline INTEGER,
    p_currentline INTEGER,
    p_usersearchfieldqualifier NVARCHAR(255),
    p_codeexecution TINYINT,
    p_dumpmedia BIGINT,
    p_userrootdn NVARCHAR(255),
    p_ldiffile BIGINT,
    p_configfile BIGINT,
    p_destmedia BIGINT,
    p_resultfilter NVARCHAR(255),
    p_userresultfilter NVARCHAR(255),
    p_ldapquery NVARCHAR(255),
    p_importusers TINYINT,
    p_searchbase NVARCHAR(255),
    p_rangestart INTEGER,
    p_dontneedtotal TINYINT,
    p_query NVARCHAR(255),
    p_failonunknown TINYINT,
    p_count INTEGER,
    p_url NVARCHAR(255),
    p_importmode BIGINT,
    p_dontremoveobjects TINYINT,
    p_currentprocessingitemcount INTEGER,
    p_notremoveditems BIGINT,
    p_totaldeleteitemcount INTEGER,
    p_catalog BIGINT,
    p_overwriteproductapprovalstat TINYINT,
    p_newproducts INTEGER,
    p_searchmissingcategories TINYINT,
    p_searchnewcategories TINYINT,
    p_processeditemscount INTEGER,
    p_sourceversion BIGINT,
    p_targetversion BIGINT,
    p_searchpricedifferences TINYINT,
    p_searchmissingproducts TINYINT,
    p_pricecomparecustomer BIGINT,
    p_maxpricetolerance DOUBLE,
    p_searchnewproducts TINYINT,
    p_missingproducts INTEGER,
    p_dumpingallowed TINYINT,
    p_unresolveddatastore BIGINT,
    p_valuecount INTEGER,
    p_enablecodeexecution TINYINT,
    p_enablehmcsavedvalues TINYINT,
    p_unzipmediasmedia TINYINT,
    p_enableexternalcodeexecution TINYINT,
    p_enableexternalsyntaxparsing TINYINT,
    p_mediastarget NVARCHAR(255),
    p_locale NVARCHAR(255),
    p_workmedia BIGINT,
    p_dumpfileencoding BIGINT,
    p_legacymode TINYINT,
    p_externaldatacollection LONGVARCHAR,
    p_mediasmedia BIGINT,
    p_laststarttime TIMESTAMP,
    p_competition BIGINT,
    p_statuscoll LONGVARCHAR,
    p_xdaysold INTEGER,
    p_excludecronjobs LONGVARCHAR,
    p_resultcoll LONGVARCHAR,
    PRIMARY KEY (PK)
);

CREATE INDEX IdxActive_501 ON cronjobs (p_active);

CREATE INDEX IdxJob_501 ON cronjobs (p_job);

CREATE INDEX IdxNode_501 ON cronjobs (p_nodeid);


CREATE CACHED TABLE cronjobslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description LONGVARCHAR,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cstrgr2abscstrrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_979 ON cstrgr2abscstrrel (SequenceNumber);

CREATE INDEX linktarget_979 ON cstrgr2abscstrrel (TargetPK);

CREATE INDEX rseqnr_979 ON cstrgr2abscstrrel (RSequenceNumber);

CREATE INDEX linksource_979 ON cstrgr2abscstrrel (SourcePK);

CREATE INDEX qualifier_979 ON cstrgr2abscstrrel (Qualifier);


CREATE CACHED TABLE cuppycompetition
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_type BIGINT,
    p_finished TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX Competition_unique_166 ON cuppycompetition (p_code);


CREATE CACHED TABLE cuppycompetitionlp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cuppygroup
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_competition BIGINT,
    p_sequencenumber INTEGER,
    p_multiplier FLOAT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX Group_unique_162 ON cuppygroup (p_code, p_competition);

CREATE INDEX competitionRelIDX_162 ON cuppygroup (p_competition);


CREATE CACHED TABLE cuppygrouplp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cuppymatch
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_matchday INTEGER,
    p_group BIGINT,
    p_guestteam BIGINT,
    p_hometeam BIGINT,
    p_date TIMESTAMP,
    p_location NVARCHAR(255),
    p_homegoals INTEGER,
    p_id INTEGER,
    p_guestgoals INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX Match_unique_161 ON cuppymatch (p_id, p_group);

CREATE INDEX Match_matchday_161 ON cuppymatch (p_matchday);

CREATE INDEX hometeamRelIDX_161 ON cuppymatch (p_hometeam);

CREATE INDEX guestteamRelIDX_161 ON cuppymatch (p_guestteam);

CREATE INDEX groupRelIDX_161 ON cuppymatch (p_group);


CREATE CACHED TABLE cuppymatchbet
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_match BIGINT,
    p_homegoals INTEGER,
    p_player BIGINT,
    p_guestgoals INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX MatchBet_unique_160 ON cuppymatchbet (p_player, p_match);

CREATE INDEX matchRelIDX_160 ON cuppymatchbet (p_match);

CREATE INDEX playerRelIDX_160 ON cuppymatchbet (p_player);


CREATE CACHED TABLE cuppynews
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_competition BIGINT,
    p_email TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX competitionRelIDX_163 ON cuppynews (p_competition);


CREATE CACHED TABLE cuppynewslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_content varchar(4000),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE cuppyoverallstats
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_playersonlinemaxcount INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE cuppyplayerpreferences
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_currentcompetition BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE cuppytimepointstats
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_playersonlinecount INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE currencies
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    activeflag TINYINT,
    isocode NVARCHAR(255),
    baseflag TINYINT,
    digits INTEGER,
    symbol NVARCHAR(255),
    conversionfactor DOUBLE,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX ISOCode_33 ON currencies (isocode);


CREATE CACHED TABLE currencieslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE deliverymodes
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    code NVARCHAR(255),
    activeflag TINYINT,
    supportedpaymentmodes NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_net TINYINT,
    p_propertyname NVARCHAR(255),
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE deliverymodeslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description LONGVARCHAR,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE derivedmedias
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    mime NVARCHAR(255),
    realfilename NVARCHAR(255),
    p_datapk BIGINT,
    p_size BIGINT,
    p_location LONGVARCHAR,
    p_locationhash NVARCHAR(255),
    p_media BIGINT,
    version NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX dataPK_idx_31 ON derivedmedias (p_datapk);

CREATE UNIQUE INDEX version_idx_31 ON derivedmedias (version);

CREATE INDEX mediaRelIDX_31 ON derivedmedias (p_media);


CREATE CACHED TABLE discountrows
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_pg BIGINT,
    p_product BIGINT,
    p_user BIGINT,
    p_usermatchqualifier BIGINT,
    p_productid NVARCHAR(255),
    p_productmatchqualifier BIGINT,
    p_starttime TIMESTAMP,
    p_ug BIGINT,
    p_endtime TIMESTAMP,
    p_value DOUBLE,
    p_discount BIGINT,
    p_currency BIGINT,
    p_catalogversion BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX MatchIndexU_1052 ON discountrows (p_usermatchqualifier);

CREATE INDEX UGIdx_1052 ON discountrows (p_ug);

CREATE INDEX PIdx_1052 ON discountrows (p_product);

CREATE INDEX UIdx_1052 ON discountrows (p_user);

CREATE INDEX ProductIdIdx_1052 ON discountrows (p_productid);

CREATE INDEX MatchIndexP_1052 ON discountrows (p_productmatchqualifier);

CREATE INDEX PGIdx_1052 ON discountrows (p_pg);

CREATE INDEX versionIDX_1052 ON discountrows (p_catalogversion);


CREATE CACHED TABLE discounts
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    code NVARCHAR(255),
    value DOUBLE,
    currencypk BIGINT,
    priority INTEGER,
    globalflag TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE discountslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE dynamiccontent
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_active TINYINT,
    p_code NVARCHAR(255),
    p_content LONGVARCHAR,
    p_checksum NVARCHAR(255),
    p_version BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX codeVersionActiveIDX_101 ON dynamiccontent (p_code, p_version, p_active);


CREATE CACHED TABLE enumerationvalues
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    Code NVARCHAR(255),
    p_icon BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    p_extensionname NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    Editable TINYINT DEFAULT 0,
    codeLowerCase NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX code2idx_91 ON enumerationvalues (codeLowerCase);

CREATE INDEX seqnridx_91 ON enumerationvalues (SequenceNumber);

CREATE INDEX codeidx_91 ON enumerationvalues (Code);


CREATE CACHED TABLE enumerationvalueslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE exports
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_exportscript BIGINT,
    p_exportedmedias BIGINT,
    p_exporteddata BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE exportslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE format
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_initial BIGINT,
    p_documenttype BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE format2comtyprel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_13102 ON format2comtyprel (SequenceNumber);

CREATE INDEX linktarget_13102 ON format2comtyprel (TargetPK);

CREATE INDEX rseqnr_13102 ON format2comtyprel (RSequenceNumber);

CREATE INDEX linksource_13102 ON format2comtyprel (SourcePK);

CREATE INDEX qualifier_13102 ON format2comtyprel (Qualifier);


CREATE CACHED TABLE format2medforrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_13101 ON format2medforrel (SequenceNumber);

CREATE INDEX linktarget_13101 ON format2medforrel (TargetPK);

CREATE INDEX rseqnr_13101 ON format2medforrel (RSequenceNumber);

CREATE INDEX linksource_13101 ON format2medforrel (SourcePK);

CREATE INDEX qualifier_13101 ON format2medforrel (Qualifier);


CREATE CACHED TABLE formatlp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE genericitems
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_joinalias NVARCHAR(255),
    p_lower TINYINT,
    p_searchparametername NVARCHAR(255),
    p_wherepart BIGINT,
    p_comparator BIGINT,
    p_valuetype BIGINT,
    p_emptyhandling BIGINT,
    p_enclosingtype BIGINT,
    p_typedsearchparameter BIGINT,
    p_code NVARCHAR(255),
    p_action BIGINT,
    p_actiontemplate BIGINT,
    p_user BIGINT,
    p_comment NVARCHAR(255),
    p_workflowaction BIGINT,
    PRIMARY KEY (PK)
);

CREATE INDEX workflowactionRelIDX_99 ON genericitems (p_workflowaction);

CREATE INDEX actionRelIDX_99 ON genericitems (p_action);

CREATE INDEX actiontemplateRelIDX_99 ON genericitems (p_actiontemplate);

CREATE INDEX wherepartRelIDX_99 ON genericitems (p_wherepart);


CREATE CACHED TABLE genericitemslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    p_description NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE gentestitems
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE globaldiscountrows
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_pg BIGINT,
    p_product BIGINT,
    p_user BIGINT,
    p_usermatchqualifier BIGINT,
    p_productid NVARCHAR(255),
    p_productmatchqualifier BIGINT,
    p_starttime TIMESTAMP,
    p_ug BIGINT,
    p_endtime TIMESTAMP,
    p_value DOUBLE,
    p_discount BIGINT,
    p_currency BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX MatchIndexU_1053 ON globaldiscountrows (p_usermatchqualifier);

CREATE INDEX UGIdx_1053 ON globaldiscountrows (p_ug);

CREATE INDEX PIdx_1053 ON globaldiscountrows (p_product);

CREATE INDEX UIdx_1053 ON globaldiscountrows (p_user);

CREATE INDEX ProductIdIdx_1053 ON globaldiscountrows (p_productid);

CREATE INDEX MatchIndexP_1053 ON globaldiscountrows (p_productmatchqualifier);

CREATE INDEX PGIdx_1053 ON globaldiscountrows (p_pg);


CREATE CACHED TABLE hmchistoryentries
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_user BIGINT,
    p_referenceditem BIGINT,
    p_actiontype BIGINT,
    p_comment NVARCHAR(255),
    p_timestamp TIMESTAMP,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE indextestitem
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_column4 SMALLINT,
    p_column3 SMALLINT,
    p_column5 SMALLINT,
    p_column2 SMALLINT,
    p_column1 SMALLINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX OrderIndex_7777 ON indextestitem (p_column3, p_column4, p_column1, p_column2, p_column5);


CREATE CACHED TABLE itemcockpittemplrels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1712 ON itemcockpittemplrels (SequenceNumber);

CREATE INDEX linktarget_1712 ON itemcockpittemplrels (TargetPK);

CREATE INDEX rseqnr_1712 ON itemcockpittemplrels (RSequenceNumber);

CREATE INDEX linksource_1712 ON itemcockpittemplrels (SourcePK);

CREATE INDEX qualifier_1712 ON itemcockpittemplrels (Qualifier);


CREATE CACHED TABLE itemsynctimestamps
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_pendingattributequalifiers LONGVARCHAR,
    p_sourceitem BIGINT,
    p_lastsyncsourcemodifiedtime TIMESTAMP,
    p_lastsynctime TIMESTAMP,
    p_sourceversion BIGINT,
    p_targetitem BIGINT,
    p_targetversion BIGINT,
    p_syncjob BIGINT,
    p_pendingattributesownerjob BIGINT,
    p_pendingattributesscheduledtu INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX tgtVerIDX_619 ON itemsynctimestamps (p_targetversion);

CREATE INDEX srcVerIDX_619 ON itemsynctimestamps (p_sourceversion);

CREATE INDEX srcIDX_619 ON itemsynctimestamps (p_sourceitem);

CREATE INDEX syncIDX_619 ON itemsynctimestamps (p_sourceitem, p_targetversion, p_syncjob);

CREATE INDEX jobIDX_619 ON itemsynctimestamps (p_syncjob);

CREATE INDEX tgtIDX_619 ON itemsynctimestamps (p_targetitem);


CREATE CACHED TABLE jalotranslatorconfig
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE jalovelocityrenderer
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_template LONGVARCHAR,
    p_translatorconfiguration BIGINT,
    p_translatorconfigurationpos INTEGER,
    p_name NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX translatorconfigurationRelIDX_13211 ON jalovelocityrenderer (p_translatorconfiguration);

CREATE INDEX translatorconfigurationposPosIDX_13211 ON jalovelocityrenderer (p_translatorconfigurationpos);


CREATE CACHED TABLE joblogs
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_level BIGINT,
    p_cronjob BIGINT,
    p_step BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX cronjobIDX_504 ON joblogs (p_cronjob);


CREATE CACHED TABLE jobs
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_retry TINYINT,
    p_logleveldatabase BIGINT,
    p_errormode BIGINT,
    p_singleexecutable TINYINT,
    p_emailnotificationtemplate BIGINT,
    p_code NVARCHAR(255),
    p_sendemail TINYINT,
    p_requestabort TINYINT,
    p_emailaddress NVARCHAR(255),
    p_priority INTEGER,
    p_active TINYINT,
    p_removeonexit TINYINT,
    p_alternativedatasourceid NVARCHAR(255),
    p_logtodatabase TINYINT,
    p_requestabortstep TINYINT,
    p_logtofile TINYINT,
    p_sessioncurrency BIGINT,
    p_nodeid INTEGER,
    p_sessionlanguage BIGINT,
    p_sessionuser BIGINT,
    p_changerecordingenabled TINYINT,
    p_loglevelfile BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_springidcronjobfactory NVARCHAR(255),
    p_springid NVARCHAR(255),
    p_searchtype BIGINT,
    p_threshold INTEGER,
    p_searchscript NVARCHAR(255),
    p_processscript NVARCHAR(255),
    p_scripturi NVARCHAR(255),
    p_activationscript LONGVARCHAR,
    p_syncprincipalsonly TINYINT,
    p_syncorder INTEGER,
    p_sourceversion BIGINT,
    p_removemissingitems TINYINT,
    p_exclusivemode TINYINT,
    p_targetversion BIGINT,
    p_createnewitems TINYINT,
    p_enabletransactions TINYINT,
    p_maxthreads INTEGER,
    p_maxschedulerthreads INTEGER,
    p_copycachesize INTEGER,
    PRIMARY KEY (PK)
);

CREATE INDEX IdxCode_500 ON jobs (p_code);


CREATE CACHED TABLE jobsearchrestriction
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_job BIGINT,
    p_type BIGINT,
    p_jobpos INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX jobRelIDX_508 ON jobsearchrestriction (p_job);

CREATE INDEX jobposPosIDX_508 ON jobsearchrestriction (p_jobpos);


CREATE CACHED TABLE jobslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description LONGVARCHAR,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE keywords
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_keyword NVARCHAR(255),
    p_catalogversion BIGINT,
    p_catalog BIGINT,
    p_language BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_externalid NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX keywordIDX_602 ON keywords (p_keyword);

CREATE INDEX versionIDX_602 ON keywords (p_catalogversion);

CREATE INDEX codeVersionIDX_602 ON keywords (p_keyword, p_catalogversion);

CREATE INDEX extIDX_602 ON keywords (p_externalid);


CREATE CACHED TABLE languages
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    activeflag TINYINT,
    isocode NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX ISOCode_32 ON languages (isocode);


CREATE CACHED TABLE languageslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE links
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_7 ON links (SequenceNumber);

CREATE INDEX linktarget_7 ON links (TargetPK);

CREATE INDEX rseqnr_7 ON links (RSequenceNumber);

CREATE INDEX linksource_7 ON links (SourcePK);

CREATE INDEX qualifier_7 ON links (Qualifier);


CREATE CACHED TABLE maptypes
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_generate TINYINT,
    p_autocreate TINYINT,
    p_extensionname NVARCHAR(255),
    InternalCode NVARCHAR(255),
    p_defaultvalue LONGVARBINARY,
    ArgumentTypePK BIGINT,
    ReturnTypePK BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    InternalCodeLowerCase NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX typecode_84 ON maptypes (InternalCode);

CREATE INDEX typecodelowercase_84 ON maptypes (InternalCodeLowerCase);


CREATE CACHED TABLE maptypeslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    p_description LONGVARCHAR,
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE mediacontainer
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_qualifier NVARCHAR(255),
    p_catalogversion BIGINT,
    p_conversiongroup BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX codeVersionIDX_50 ON mediacontainer (p_qualifier, p_catalogversion);

CREATE INDEX versionIDX_50 ON mediacontainer (p_catalogversion);


CREATE CACHED TABLE mediacontainerlp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE mediacontext
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_qualifier NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX qualifierIDX_52 ON mediacontext (p_qualifier);


CREATE CACHED TABLE mediacontextlp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE mediaconttypeformats
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_402 ON mediaconttypeformats (SequenceNumber);

CREATE INDEX linktarget_402 ON mediaconttypeformats (TargetPK);

CREATE INDEX rseqnr_402 ON mediaconttypeformats (RSequenceNumber);

CREATE INDEX linksource_402 ON mediaconttypeformats (SourcePK);

CREATE INDEX qualifier_402 ON mediaconttypeformats (Qualifier);


CREATE CACHED TABLE mediafolders
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_path NVARCHAR(255),
    p_qualifier NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX qualifierIdx_54 ON mediafolders (p_qualifier);


CREATE CACHED TABLE mediaformat
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_qualifier NVARCHAR(255),
    p_externalid NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_mediaaddons LONGVARCHAR,
    p_inputformat BIGINT,
    p_conversionstrategy NVARCHAR(255),
    p_conversion LONGVARCHAR,
    p_mimetype NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX qualifierIDX_51 ON mediaformat (p_qualifier);


CREATE CACHED TABLE mediaformatlp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE mediaformatmapping
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_mediacontext BIGINT,
    p_target BIGINT,
    p_source BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX mediacontextRelIDX_53 ON mediaformatmapping (p_mediacontext);


CREATE CACHED TABLE mediametadata
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_value LONGVARCHAR,
    p_media BIGINT,
    p_groupname NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX mmetadata_uidx_400 ON mediametadata (p_media, p_groupname, p_code);

CREATE INDEX mediaRelIDX_400 ON mediametadata (p_media);


CREATE CACHED TABLE mediaprops
(
    hjmpTS BIGINT,
    VALUE1 LONGVARBINARY,
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    REALNAME NVARCHAR(255),
    TYPE1 INTEGER DEFAULT 0,
    VALUESTRING1 LONGVARCHAR,
    LANGPK BIGINT,
    NAME NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK, NAME)
);

CREATE INDEX itempk_mediaprops ON mediaprops (ITEMPK);

CREATE INDEX realnameidx_mediaprops ON mediaprops (REALNAME);

CREATE INDEX nameidx_mediaprops ON mediaprops (NAME);


CREATE CACHED TABLE medias
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    mime NVARCHAR(255),
    realfilename NVARCHAR(255),
    p_datapk BIGINT,
    p_size BIGINT,
    p_location LONGVARCHAR,
    p_locationhash NVARCHAR(255),
    p_removable TINYINT,
    p_subfolderpath NVARCHAR(255),
    p_folder BIGINT,
    code NVARCHAR(255),
    p_mediacontainer BIGINT,
    p_alttext NVARCHAR(255),
    url LONGVARCHAR,
    p_description NVARCHAR(255),
    p_mediaformat BIGINT,
    p_catalogversion BIGINT,
    p_catalog BIGINT,
    p_originaldatapk BIGINT,
    p_original BIGINT,
    p_metadatadatapk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_allowscriptevaluation TINYINT,
    p_sourceitem BIGINT,
    p_itemtimestamp TIMESTAMP,
    p_format BIGINT,
    p_outputmimetype NVARCHAR(255),
    p_inputmimetype NVARCHAR(255),
    p_encoding BIGINT,
    p_zipentry NVARCHAR(255),
    p_fieldseparator SMALLINT,
    p_commentcharacter SMALLINT,
    p_quotecharacter SMALLINT,
    p_removeonsuccess TINYINT,
    p_linestoskip INTEGER,
    p_icon BIGINT,
    p_compiledreport BIGINT,
    p_scheduledcount INTEGER,
    p_cronjobpos INTEGER,
    p_cronjob BIGINT,
    PRIMARY KEY (PK)
);

CREATE INDEX dataPK_idx_30 ON medias (p_datapk);

CREATE INDEX codeVersionIDX_30 ON medias (code, p_catalogversion);

CREATE INDEX Media_Code_30 ON medias (code);

CREATE INDEX parentformat_idx_30 ON medias (p_original, p_mediaformat);

CREATE INDEX versionIDX_30 ON medias (p_catalogversion);

CREATE INDEX containerformat_idx_30 ON medias (p_mediacontainer, p_mediaformat);

CREATE INDEX cronjobRelIDX_30 ON medias (p_cronjob);

CREATE INDEX cronjobposPosIDX_30 ON medias (p_cronjobpos);

CREATE INDEX mediacontainerRelIDX_30 ON medias (p_mediacontainer);

CREATE INDEX originalRelIDX_30 ON medias (p_original);

CREATE INDEX sourceitemRelIDX_30 ON medias (p_sourceitem);


CREATE CACHED TABLE mediaslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_title NVARCHAR(255),
    p_reportdescription NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE metainformations
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    PK BIGINT,
    createdTS TIMESTAMP,
    modifiedTS TIMESTAMP,
    OwnerPkString BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    LicenceExpirationDate TIMESTAMP,
    SystemPK NVARCHAR(255),
    LicenceID NVARCHAR(255),
    LicenceName NVARCHAR(255),
    LicenceSignature NVARCHAR(255),
    isInitialized TINYINT DEFAULT 0,
    SystemName NVARCHAR(255),
    LicenceEdition NVARCHAR(255),
    AdminFactor INTEGER DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE numberseries
(
    hjmpTS BIGINT,
    serieskey NVARCHAR(255),
    template NVARCHAR(255),
    seriestype INTEGER DEFAULT 0,
    currentValue BIGINT,
    PRIMARY KEY (serieskey)
);


CREATE CACHED TABLE orderdiscrels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_202 ON orderdiscrels (SequenceNumber);

CREATE INDEX linktarget_202 ON orderdiscrels (TargetPK);

CREATE INDEX rseqnr_202 ON orderdiscrels (RSequenceNumber);

CREATE INDEX linksource_202 ON orderdiscrels (SourcePK);

CREATE INDEX qualifier_202 ON orderdiscrels (Qualifier);


CREATE CACHED TABLE orderentries
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    productpk BIGINT,
    baseprice DECIMAL(30,8),
    rejectedflag TINYINT,
    unitpk BIGINT,
    totalprice DECIMAL(30,8),
    p_order BIGINT,
    calculatedflag TINYINT,
    taxvalues NVARCHAR(255),
    info NVARCHAR(255),
    giveawayflag TINYINT,
    discountvalues LONGVARCHAR,
    entrynumber INTEGER,
    quantity DECIMAL(30,8),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX oeProd_46 ON orderentries (productpk);

CREATE INDEX oeOrd_46 ON orderentries (p_order);


CREATE CACHED TABLE orderentryprops
(
    hjmpTS BIGINT,
    VALUE1 LONGVARBINARY,
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    REALNAME NVARCHAR(255),
    TYPE1 INTEGER DEFAULT 0,
    VALUESTRING1 LONGVARCHAR,
    LANGPK BIGINT,
    NAME NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK, NAME)
);

CREATE INDEX itempk_orderentryprops ON orderentryprops (ITEMPK);

CREATE INDEX nameidx_orderentryprops ON orderentryprops (NAME);

CREATE INDEX realnameidx_orderentryprops ON orderentryprops (REALNAME);


CREATE CACHED TABLE orderprops
(
    hjmpTS BIGINT,
    VALUE1 LONGVARBINARY,
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    REALNAME NVARCHAR(255),
    TYPE1 INTEGER DEFAULT 0,
    VALUESTRING1 LONGVARCHAR,
    LANGPK BIGINT,
    NAME NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK, NAME)
);

CREATE INDEX itempk_orderprops ON orderprops (ITEMPK);

CREATE INDEX nameidx_orderprops ON orderprops (NAME);

CREATE INDEX realnameidx_orderprops ON orderprops (REALNAME);


CREATE CACHED TABLE orders
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    discountonpayment TINYINT,
    currencypk BIGINT,
    totalprice DECIMAL(30,8),
    deliverycost DECIMAL(30,8),
    totaltax DECIMAL(30,8),
    p_exportstatus BIGINT,
    code NVARCHAR(255),
    netflag TINYINT,
    deliverystatuspk BIGINT,
    totaltaxvalues LONGVARCHAR,
    paymentmodepk BIGINT,
    paymentstatuspk BIGINT,
    discountondelivery TINYINT,
    globaldiscountvalues LONGVARCHAR,
    deliveryaddresspk BIGINT,
    paymentaddresspk BIGINT,
    userpk BIGINT,
    paymentcost DECIMAL(30,8),
    subtotal DECIMAL(30,8),
    totaldiscounts DECIMAL(30,8),
    paymentinfopk BIGINT,
    statuspk BIGINT,
    calculatedflag TINYINT,
    deliverymodepk BIGINT,
    statusinfo NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX OrderCode_45 ON orders (code);

CREATE INDEX OrderUser_45 ON orders (userpk);


CREATE CACHED TABLE parserproperty
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_endexp NVARCHAR(255),
    p_parserclass NVARCHAR(255),
    p_translatorconfiguration BIGINT,
    p_startexp NVARCHAR(255),
    p_translatorconfigurationpos INTEGER,
    p_name NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX translatorconfigurationRelIDX_13213 ON parserproperty (p_translatorconfiguration);

CREATE INDEX translatorconfigurationposPosIDX_13213 ON parserproperty (p_translatorconfigurationpos);


CREATE CACHED TABLE paymentinfos
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    code NVARCHAR(255),
    userpk BIGINT,
    originalpk BIGINT,
    duplicate TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_bank NVARCHAR(255),
    p_accountnumber NVARCHAR(255),
    p_bankidnumber NVARCHAR(255),
    p_baowner NVARCHAR(255),
    p_validtomonth NVARCHAR(255),
    p_validfrommonth NVARCHAR(255),
    p_validtoyear NVARCHAR(255),
    p_type BIGINT,
    p_ccowner NVARCHAR(255),
    p_validfromyear NVARCHAR(255),
    p_number NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX PaymentInfo_User_42 ON paymentinfos (userpk);


CREATE CACHED TABLE paymentmodes
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    code NVARCHAR(255),
    activeflag TINYINT,
    paymentinfotype BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_net TINYINT,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE paymentmodeslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description LONGVARCHAR,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE pcp2wrtblecvrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_617 ON pcp2wrtblecvrel (SequenceNumber);

CREATE INDEX linktarget_617 ON pcp2wrtblecvrel (TargetPK);

CREATE INDEX rseqnr_617 ON pcp2wrtblecvrel (RSequenceNumber);

CREATE INDEX linksource_617 ON pcp2wrtblecvrel (SourcePK);

CREATE INDEX qualifier_617 ON pcp2wrtblecvrel (Qualifier);


CREATE CACHED TABLE pcpl2rdblecvrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_618 ON pcpl2rdblecvrel (SequenceNumber);

CREATE INDEX linktarget_618 ON pcpl2rdblecvrel (TargetPK);

CREATE INDEX rseqnr_618 ON pcpl2rdblecvrel (RSequenceNumber);

CREATE INDEX linksource_618 ON pcpl2rdblecvrel (SourcePK);

CREATE INDEX qualifier_618 ON pcpl2rdblecvrel (Qualifier);


CREATE CACHED TABLE pendingstepsrelation
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_507 ON pendingstepsrelation (SequenceNumber);

CREATE INDEX linktarget_507 ON pendingstepsrelation (TargetPK);

CREATE INDEX rseqnr_507 ON pendingstepsrelation (RSequenceNumber);

CREATE INDEX linksource_507 ON pendingstepsrelation (SourcePK);

CREATE INDEX qualifier_507 ON pendingstepsrelation (Qualifier);


CREATE CACHED TABLE pgrels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_201 ON pgrels (SequenceNumber);

CREATE INDEX linktarget_201 ON pgrels (TargetPK);

CREATE INDEX rseqnr_201 ON pgrels (RSequenceNumber);

CREATE INDEX linksource_201 ON pgrels (SourcePK);

CREATE INDEX qualifier_201 ON pgrels (Qualifier);


CREATE CACHED TABLE previewtickets
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_previewcatalogversion BIGINT,
    p_validto TIMESTAMP,
    p_createdby BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE pricerows
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_pg BIGINT,
    p_product BIGINT,
    p_user BIGINT,
    p_usermatchqualifier BIGINT,
    p_productid NVARCHAR(255),
    p_productmatchqualifier BIGINT,
    p_starttime TIMESTAMP,
    p_ug BIGINT,
    p_endtime TIMESTAMP,
    p_unit BIGINT,
    p_currency BIGINT,
    p_matchvalue INTEGER,
    p_catalogversion BIGINT,
    p_minqtd BIGINT,
    p_unitfactor INTEGER,
    p_net TINYINT,
    p_price DOUBLE,
    p_giveawayprice TINYINT,
    p_channel BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX MatchIndexU_1055 ON pricerows (p_usermatchqualifier);

CREATE INDEX UGIdx_1055 ON pricerows (p_ug);

CREATE INDEX PIdx_1055 ON pricerows (p_product);

CREATE INDEX UIdx_1055 ON pricerows (p_user);

CREATE INDEX ProductIdIdx_1055 ON pricerows (p_productid);

CREATE INDEX MatchIndexP_1055 ON pricerows (p_productmatchqualifier);

CREATE INDEX PGIdx_1055 ON pricerows (p_pg);

CREATE INDEX versionIDX_1055 ON pricerows (p_catalogversion);


CREATE CACHED TABLE principcockpitreadrels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1714 ON principcockpitreadrels (SequenceNumber);

CREATE INDEX linktarget_1714 ON principcockpitreadrels (TargetPK);

CREATE INDEX rseqnr_1714 ON principcockpitreadrels (RSequenceNumber);

CREATE INDEX linksource_1714 ON principcockpitreadrels (SourcePK);

CREATE INDEX qualifier_1714 ON principcockpitreadrels (Qualifier);


CREATE CACHED TABLE principcockpitwriterels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1715 ON principcockpitwriterels (SequenceNumber);

CREATE INDEX linktarget_1715 ON principcockpitwriterels (TargetPK);

CREATE INDEX rseqnr_1715 ON principcockpitwriterels (RSequenceNumber);

CREATE INDEX linksource_1715 ON principcockpitwriterels (SourcePK);

CREATE INDEX qualifier_1715 ON principcockpitwriterels (Qualifier);


CREATE CACHED TABLE princtolinkrelations
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_6001 ON princtolinkrelations (SequenceNumber);

CREATE INDEX linktarget_6001 ON princtolinkrelations (TargetPK);

CREATE INDEX rseqnr_6001 ON princtolinkrelations (RSequenceNumber);

CREATE INDEX linksource_6001 ON princtolinkrelations (SourcePK);

CREATE INDEX qualifier_6001 ON princtolinkrelations (Qualifier);


CREATE CACHED TABLE processedstepsrelation
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_506 ON processedstepsrelation (SequenceNumber);

CREATE INDEX linktarget_506 ON processedstepsrelation (TargetPK);

CREATE INDEX rseqnr_506 ON processedstepsrelation (RSequenceNumber);

CREATE INDEX linksource_506 ON processedstepsrelation (SourcePK);

CREATE INDEX qualifier_506 ON processedstepsrelation (Qualifier);


CREATE CACHED TABLE processes
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_processdefinitionversion NVARCHAR(255),
    p_endmessage LONGVARCHAR,
    p_state BIGINT,
    p_processdefinitionname NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX ProcessengineProcess_name_idx_32766 ON processes (p_code);


CREATE CACHED TABLE processparameters
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_value LONGVARBINARY,
    p_process BIGINT,
    p_name NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX BusinessProcessParameter_idx_32764 ON processparameters (p_process, p_name);

CREATE INDEX processRelIDX_32764 ON processparameters (p_process);


CREATE CACHED TABLE prod2keywordrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_604 ON prod2keywordrel (SequenceNumber);

CREATE INDEX linktarget_604 ON prod2keywordrel (TargetPK);

CREATE INDEX rseqnr_604 ON prod2keywordrel (RSequenceNumber);

CREATE INDEX linksource_604 ON prod2keywordrel (SourcePK);

CREATE INDEX qualifier_604 ON prod2keywordrel (Qualifier);


CREATE CACHED TABLE productfeatures
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_product BIGINT,
    p_booleanvalue TINYINT,
    p_unit BIGINT,
    p_featureposition INTEGER,
    p_classificationattributeassig BIGINT,
    p_valueposition INTEGER,
    p_language BIGINT,
    p_stringvalue LONGVARCHAR,
    p_rawvalue LONGVARBINARY,
    p_description NVARCHAR(255),
    p_valuedetails NVARCHAR(255),
    p_numbervalue DECIMAL(30,8),
    p_valuetype INTEGER,
    p_qualifier NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX featureIDX2_611 ON productfeatures (p_qualifier);

CREATE INDEX featureIDX_611 ON productfeatures (p_product);

CREATE INDEX featureIDX3_611 ON productfeatures (p_classificationattributeassig);


CREATE CACHED TABLE productprops
(
    hjmpTS BIGINT,
    VALUE1 LONGVARBINARY,
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    REALNAME NVARCHAR(255),
    TYPE1 INTEGER DEFAULT 0,
    VALUESTRING1 LONGVARCHAR,
    LANGPK BIGINT,
    NAME NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK, NAME)
);

CREATE INDEX itempk_productprops ON productprops (ITEMPK);

CREATE INDEX nameidx_productprops ON productprops (NAME);

CREATE INDEX realnameidx_productprops ON productprops (REALNAME);


CREATE CACHED TABLE productreferences
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_active TINYINT,
    p_sourcepos INTEGER,
    p_referencetype BIGINT,
    p_icon BIGINT,
    p_target BIGINT,
    p_source BIGINT,
    p_qualifier NVARCHAR(255),
    p_quantity INTEGER,
    p_preselected TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX targetIDX_606 ON productreferences (p_target);

CREATE INDEX qualifierIDX_606 ON productreferences (p_qualifier);

CREATE INDEX sourceRelIDX_606 ON productreferences (p_source);

CREATE INDEX sourceposPosIDX_606 ON productreferences (p_sourcepos);


CREATE CACHED TABLE productreferenceslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE products
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_thumbnail BIGINT,
    code NVARCHAR(255),
    unitpk BIGINT,
    p_picture BIGINT,
    p_startlinenumber INTEGER,
    p_ean NVARCHAR(255),
    p_offlinedate TIMESTAMP,
    p_supplieralternativeaid NVARCHAR(255),
    p_pricequantity DOUBLE,
    p_erpgroupsupplier NVARCHAR(255),
    p_logo LONGVARCHAR,
    p_buyerids LONGVARBINARY,
    p_contentunit BIGINT,
    p_others LONGVARCHAR,
    p_erpgroupbuyer NVARCHAR(255),
    p_endlinenumber INTEGER,
    p_orderquantityinterval INTEGER,
    p_normal LONGVARCHAR,
    p_manufactureraid NVARCHAR(255),
    p_varianttype BIGINT,
    p_maxorderquantity INTEGER,
    p_manufacturername NVARCHAR(255),
    p_catalog BIGINT,
    p_numbercontentunits DOUBLE,
    p_thumbnails LONGVARCHAR,
    p_specialtreatmentclasses LONGVARBINARY,
    p_deliverytime DOUBLE,
    p_detail LONGVARCHAR,
    p_catalogversion BIGINT,
    p_order INTEGER,
    p_data_sheet LONGVARCHAR,
    p_approvalstatus BIGINT,
    p_onlinedate TIMESTAMP,
    p_minorderquantity INTEGER,
    p_europe1pricefactory_ppg BIGINT,
    p_europe1pricefactory_pdg BIGINT,
    p_europe1pricefactory_ptg BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_baseproduct BIGINT,
    PRIMARY KEY (PK)
);

CREATE INDEX Product_Code_1 ON products (code);

CREATE INDEX codeVersionIDX_1 ON products (code, p_catalogversion);

CREATE INDEX catalogIDX_1 ON products (p_catalog);

CREATE INDEX visibilityIDX_1 ON products (p_approvalstatus, p_onlinedate, p_offlinedate);

CREATE INDEX versionIDX_1 ON products (p_catalogversion);

CREATE INDEX baseIDX_1 ON products (p_baseproduct);


CREATE CACHED TABLE productslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description LONGVARCHAR,
    p_name NVARCHAR(255),
    p_segment NVARCHAR(255),
    p_manufacturertypedescription NVARCHAR(255),
    p_articlestatus LONGVARBINARY,
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE props
(
    hjmpTS BIGINT,
    VALUE1 LONGVARBINARY,
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    REALNAME NVARCHAR(255),
    TYPE1 INTEGER DEFAULT 0,
    VALUESTRING1 LONGVARCHAR,
    LANGPK BIGINT,
    NAME NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK, NAME)
);

CREATE INDEX nameidx_props ON props (NAME);

CREATE INDEX realnameidx_props ON props (REALNAME);

CREATE INDEX itempk_props ON props (ITEMPK);


CREATE CACHED TABLE readcockpitcollrels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1710 ON readcockpitcollrels (SequenceNumber);

CREATE INDEX linktarget_1710 ON readcockpitcollrels (TargetPK);

CREATE INDEX rseqnr_1710 ON readcockpitcollrels (RSequenceNumber);

CREATE INDEX linksource_1710 ON readcockpitcollrels (SourcePK);

CREATE INDEX qualifier_1710 ON readcockpitcollrels (Qualifier);


CREATE CACHED TABLE readsavedqueryrels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1717 ON readsavedqueryrels (SequenceNumber);

CREATE INDEX linktarget_1717 ON readsavedqueryrels (TargetPK);

CREATE INDEX rseqnr_1717 ON readsavedqueryrels (RSequenceNumber);

CREATE INDEX linksource_1717 ON readsavedqueryrels (SourcePK);

CREATE INDEX qualifier_1717 ON readsavedqueryrels (Qualifier);


CREATE CACHED TABLE regions
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    activeflag TINYINT,
    isocode NVARCHAR(255),
    countrypk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX ISOCode_35 ON regions (isocode);

CREATE INDEX Region_Country_35 ON regions (countrypk);


CREATE CACHED TABLE regionslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE renderersproperty
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_key NVARCHAR(255),
    p_value NVARCHAR(255),
    p_translatorconfiguration BIGINT,
    p_translatorconfigurationpos INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX translatorconfigurationRelIDX_13212 ON renderersproperty (p_translatorconfiguration);

CREATE INDEX translatorconfigurationposPosIDX_13212 ON renderersproperty (p_translatorconfigurationpos);


CREATE CACHED TABLE renderertemplate
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_contextclass NVARCHAR(255),
    p_code NVARCHAR(255),
    p_outputmimetype NVARCHAR(255),
    p_renderertype BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE renderertemplatelp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description NVARCHAR(255),
    p_content BIGINT,
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE savedqueries
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_paramtypes LONGVARCHAR,
    p_query LONGVARCHAR,
    p_params LONGVARBINARY,
    p_resulttype BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE savedquerieslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description NVARCHAR(255),
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE savedvalueentry
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_modifiedattribute NVARCHAR(255),
    p_oldvalueattributedescriptor BIGINT,
    p_parent BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX parentRelIDX_335 ON savedvalueentry (p_parent);


CREATE CACHED TABLE savedvalues
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_modifieditemtype BIGINT,
    p_user BIGINT,
    p_modifieditem BIGINT,
    p_modifieditempos INTEGER,
    p_timestamp TIMESTAMP,
    p_modificationtype BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX savedvalmoditem_334 ON savedvalues (p_modifieditem);

CREATE INDEX modifieditemposPosIDX_334 ON savedvalues (p_modifieditempos);


CREATE CACHED TABLE scripts
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_active TINYINT,
    p_code NVARCHAR(255),
    p_content LONGVARCHAR,
    p_checksum NVARCHAR(255),
    p_version BIGINT,
    p_scripttype BIGINT,
    p_autodisabling TINYINT,
    p_disabled TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX codeVersionActiveIDX_100 ON scripts (p_code, p_version, p_active);


CREATE CACHED TABLE scriptslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description LONGVARCHAR,
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE searchrestrictions
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_generate TINYINT,
    p_autocreate TINYINT,
    p_extensionname NVARCHAR(255),
    p_active TINYINT,
    p_code NVARCHAR(255),
    query LONGVARCHAR,
    principal BIGINT,
    RestrictedType BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX principal_90 ON searchrestrictions (principal);

CREATE INDEX restrtype_90 ON searchrestrictions (RestrictedType);


CREATE CACHED TABLE searchrestrictionslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE slactions
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_type BIGINT,
    p_target NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE stdpaymmodevals
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_value DOUBLE,
    p_paymentmode BIGINT,
    p_currency BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX paymentmodeRelIDX_1022 ON stdpaymmodevals (p_paymentmode);


CREATE CACHED TABLE steps
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_batchjob BIGINT,
    p_synchronous TINYINT,
    p_errormode BIGINT,
    p_sequencenumber INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX IdxBatchJob_503 ON steps (p_batchjob);

CREATE INDEX seqNrIDX_503 ON steps (p_sequencenumber);


CREATE CACHED TABLE synattcfg
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_copybyvalue TINYINT,
    p_includedinsync TINYINT,
    p_presetvalue LONGVARBINARY,
    p_syncjob BIGINT,
    p_untranslatable TINYINT,
    p_translatevalue TINYINT,
    p_partiallytranslatable TINYINT,
    p_attributedescriptor BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX attrIdx_620 ON synattcfg (p_attributedescriptor);

CREATE INDEX jobIdx_620 ON synattcfg (p_syncjob);


CREATE CACHED TABLE syncjob2langrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_622 ON syncjob2langrel (SequenceNumber);

CREATE INDEX linktarget_622 ON syncjob2langrel (TargetPK);

CREATE INDEX rseqnr_622 ON syncjob2langrel (RSequenceNumber);

CREATE INDEX linksource_622 ON syncjob2langrel (SourcePK);

CREATE INDEX qualifier_622 ON syncjob2langrel (Qualifier);


CREATE CACHED TABLE syncjob2pcplrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_623 ON syncjob2pcplrel (SequenceNumber);

CREATE INDEX linktarget_623 ON syncjob2pcplrel (TargetPK);

CREATE INDEX rseqnr_623 ON syncjob2pcplrel (RSequenceNumber);

CREATE INDEX linksource_623 ON syncjob2pcplrel (SourcePK);

CREATE INDEX qualifier_623 ON syncjob2pcplrel (Qualifier);


CREATE CACHED TABLE syncjob2typerel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_621 ON syncjob2typerel (SequenceNumber);

CREATE INDEX linktarget_621 ON syncjob2typerel (TargetPK);

CREATE INDEX rseqnr_621 ON syncjob2typerel (RSequenceNumber);

CREATE INDEX linksource_621 ON syncjob2typerel (SourcePK);

CREATE INDEX qualifier_621 ON syncjob2typerel (Qualifier);


CREATE CACHED TABLE taskconditions
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_consumed TINYINT,
    p_uniqueid NVARCHAR(255),
    p_fulfilled TINYINT,
    p_expirationtimemillis BIGINT,
    p_processeddate TIMESTAMP,
    p_task BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX Cond_match_idx_951 ON taskconditions (p_task, p_fulfilled);

CREATE UNIQUE INDEX Cond_idx_951 ON taskconditions (p_uniqueid, p_consumed);

CREATE INDEX taskRelIDX_951 ON taskconditions (p_task);


CREATE CACHED TABLE tasklogs
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_startdate TIMESTAMP,
    p_returncode NVARCHAR(255),
    p_enddate TIMESTAMP,
    p_actionid NVARCHAR(255),
    p_process BIGINT,
    p_logmessages LONGVARCHAR,
    p_clusterid INTEGER,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX processRelIDX_32767 ON tasklogs (p_process);


CREATE CACHED TABLE tasks
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_executiontimemillis BIGINT,
    p_retry INTEGER,
    p_runnerbean NVARCHAR(255),
    p_expirationtimemillis BIGINT,
    p_contextitem BIGINT,
    p_failed TINYINT,
    p_nodeid INTEGER,
    p_runningonclusternode INTEGER,
    p_context LONGVARBINARY,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_scripturi NVARCHAR(255),
    p_action NVARCHAR(255),
    p_process BIGINT,
    PRIMARY KEY (PK)
);

CREATE INDEX Task_dr_idx_950 ON tasks (p_runningonclusternode, p_expirationtimemillis, p_nodeid);

CREATE INDEX processRelIDX_950 ON tasks (p_process);


CREATE CACHED TABLE taxes
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    code NVARCHAR(255),
    value DOUBLE,
    p_currency BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE taxeslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE taxrows
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_pg BIGINT,
    p_product BIGINT,
    p_user BIGINT,
    p_usermatchqualifier BIGINT,
    p_productid NVARCHAR(255),
    p_productmatchqualifier BIGINT,
    p_starttime TIMESTAMP,
    p_ug BIGINT,
    p_endtime TIMESTAMP,
    p_value DOUBLE,
    p_currency BIGINT,
    p_tax BIGINT,
    p_catalogversion BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX MatchIndexU_1054 ON taxrows (p_usermatchqualifier);

CREATE INDEX UGIdx_1054 ON taxrows (p_ug);

CREATE INDEX PIdx_1054 ON taxrows (p_product);

CREATE INDEX UIdx_1054 ON taxrows (p_user);

CREATE INDEX ProductIdIdx_1054 ON taxrows (p_productid);

CREATE INDEX MatchIndexP_1054 ON taxrows (p_productmatchqualifier);

CREATE INDEX PGIdx_1054 ON taxrows (p_pg);

CREATE INDEX versionIDX_1054 ON taxrows (p_catalogversion);


CREATE CACHED TABLE testitem
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_testproperty0 NVARCHAR(255),
    fieldPrimitiveInteger INTEGER DEFAULT 0,
    fieldByte SMALLINT,
    fieldPrimitiveByte SMALLINT DEFAULT 0,
    fieldInteger INTEGER,
    fieldPrimitiveLong BIGINT DEFAULT 0,
    fieldSerializable LONGVARBINARY,
    fieldCharacter SMALLINT,
    fieldPrimitiveBoolean TINYINT DEFAULT 0,
    fieldDate TIMESTAMP,
    fieldB NVARCHAR(255),
    fieldBoolean TINYINT,
    fieldLong BIGINT,
    fieldDouble DOUBLE,
    fieldString NVARCHAR(255),
    fieldA NVARCHAR(255),
    fieldPrimitiveDouble DOUBLE DEFAULT 0,
    fieldLongString LONGVARCHAR,
    fieldFloat FLOAT,
    fieldPrimitiveShort SMALLINT,
    fieldPrimitiveFloat FLOAT DEFAULT 0,
    fieldPrimitiveChar SMALLINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    fieldBigDecimal DECIMAL(30,8),
    p_foo NVARCHAR(255),
    p_bar NVARCHAR(255),
    p_testproperty1 INTEGER,
    p_itemstypetwo LONGVARCHAR,
    p_xxx NVARCHAR(255),
    p_itemtypetwo BIGINT,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE testitemlp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_testproperty2 NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE titles
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    code NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE titleslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE triggerscj
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_cronexpression NVARCHAR(255),
    p_active TINYINT,
    p_month INTEGER,
    p_activationtime TIMESTAMP,
    p_day INTEGER,
    p_weekinterval INTEGER,
    p_daysofweek LONGVARCHAR,
    p_maxacceptabledelay INTEGER,
    p_second INTEGER,
    p_daterange LONGVARBINARY,
    p_hour INTEGER,
    p_year INTEGER,
    p_job BIGINT,
    p_minute INTEGER,
    p_cronjob BIGINT,
    p_relative TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX IdxCronJob_502 ON triggerscj (p_cronjob);

CREATE INDEX IdxActive_502 ON triggerscj (p_active);

CREATE INDEX jobRelIDX_502 ON triggerscj (p_job);


CREATE CACHED TABLE typesystemprops
(
    hjmpTS BIGINT,
    VALUE1 LONGVARBINARY,
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    REALNAME NVARCHAR(255),
    TYPE1 INTEGER DEFAULT 0,
    VALUESTRING1 LONGVARCHAR,
    LANGPK BIGINT,
    NAME NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK, NAME)
);

CREATE INDEX realnameidx_typesystemprops ON typesystemprops (REALNAME);

CREATE INDEX nameidx_typesystemprops ON typesystemprops (NAME);

CREATE INDEX itempk_typesystemprops ON typesystemprops (ITEMPK);


CREATE CACHED TABLE units
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    code NVARCHAR(255),
    unittype NVARCHAR(255),
    conversionfactor DOUBLE,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE unitslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE usergroupprops
(
    hjmpTS BIGINT,
    VALUE1 LONGVARBINARY,
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    REALNAME NVARCHAR(255),
    TYPE1 INTEGER DEFAULT 0,
    VALUESTRING1 LONGVARCHAR,
    LANGPK BIGINT,
    NAME NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK, NAME)
);

CREATE INDEX nameidx_usergroupprops ON usergroupprops (NAME);

CREATE INDEX realnameidx_usergroupprops ON usergroupprops (REALNAME);

CREATE INDEX itempk_usergroupprops ON usergroupprops (ITEMPK);


CREATE CACHED TABLE usergroups
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    uniqueid NVARCHAR(255),
    description NVARCHAR(255),
    name NVARCHAR(255),
    p_profilepicture BIGINT,
    p_ldapsearchbase NVARCHAR(255),
    p_cn NVARCHAR(255),
    p_dn LONGVARCHAR,
    p_readablelanguages LONGVARCHAR,
    p_writeablelanguages LONGVARCHAR,
    p_userdiscountgroup BIGINT,
    p_userpricegroup BIGINT,
    p_usertaxgroup BIGINT,
    p_hmclogindisabled TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_authorities LONGVARBINARY,
    p_ilnid NVARCHAR(255),
    p_lineofbuisness BIGINT,
    p_manufacturer TINYINT,
    p_buyer TINYINT,
    p_id NVARCHAR(255),
    p_supplierspecificid NVARCHAR(255),
    p_dunsid NVARCHAR(255),
    p_medias LONGVARCHAR,
    p_unloadingaddress BIGINT,
    p_contactaddress BIGINT,
    p_contact BIGINT,
    p_country BIGINT,
    p_supplier TINYINT,
    p_buyerspecificid NVARCHAR(255),
    p_billingaddress BIGINT,
    p_carrier TINYINT,
    p_shippingaddress BIGINT,
    p_responsiblecompany BIGINT,
    p_vatid NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX UID_5 ON usergroups (uniqueid);


CREATE CACHED TABLE usergroupslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_locname NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE userprofiles
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_readablelanguages LONGVARCHAR,
    p_expandinitial TINYINT,
    p_writablelanguages LONGVARCHAR,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE userprops
(
    hjmpTS BIGINT,
    VALUE1 LONGVARBINARY,
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    REALNAME NVARCHAR(255),
    TYPE1 INTEGER DEFAULT 0,
    VALUESTRING1 LONGVARCHAR,
    LANGPK BIGINT,
    NAME NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK, NAME)
);

CREATE INDEX realnameidx_userprops ON userprops (REALNAME);

CREATE INDEX nameidx_userprops ON userprops (NAME);

CREATE INDEX itempk_userprops ON userprops (ITEMPK);


CREATE CACHED TABLE userrights
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    code NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);


CREATE CACHED TABLE userrightslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE users
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    uniqueid NVARCHAR(255),
    description NVARCHAR(255),
    name NVARCHAR(255),
    p_profilepicture BIGINT,
    p_ldapsearchbase NVARCHAR(255),
    p_cn NVARCHAR(255),
    p_dn LONGVARCHAR,
    p_lastlogin TIMESTAMP,
    passwd NVARCHAR(255),
    p_logindisabled TINYINT,
    defaultshippingaddress BIGINT,
    p_userprofile BIGINT,
    p_sessioncurrency BIGINT,
    p_sessionlanguage BIGINT,
    defaultpaymentaddress BIGINT,
    p_passwordanswer NVARCHAR(255),
    p_passwordquestion NVARCHAR(255),
    p_hmclogindisabled TINYINT,
    encode NVARCHAR(255),
    p_europe1pricefactory_utg BIGINT,
    p_europe1pricefactory_udg BIGINT,
    p_europe1pricefactory_upg BIGINT,
    p_ldaplogin NVARCHAR(255),
    p_ldapaccount TINYINT,
    p_domain NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_customerid NVARCHAR(255),
    p_previewcatalogversions LONGVARCHAR,
    p_country BIGINT,
    p_sendnewsletter TINYINT,
    p_confirmed TINYINT,
    p_preferences BIGINT,
    p_email NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE INDEX UID_4 ON users (uniqueid);

CREATE INDEX countryRelIDX_4 ON users (p_country);


CREATE CACHED TABLE validationconstraints
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_active TINYINT,
    p_annotation LONGVARCHAR,
    p_type BIGINT,
    p_target LONGVARCHAR,
    p_severity BIGINT,
    p_id NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_descriptor BIGINT,
    p_qualifier NVARCHAR(255),
    p_value DECIMAL(30,8),
    p_regexp NVARCHAR(255),
    p_flags LONGVARCHAR,
    p_valu0 BIGINT,
    p_integer INTEGER,
    p_fraction INTEGER,
    p_min BIGINT,
    p_max BIGINT,
    p_expression LONGVARCHAR,
    p_language BIGINT,
    p_firstfieldname NVARCHAR(255),
    p_secondfieldname NVARCHAR(255),
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX AbstractConstraint_idx_980 ON validationconstraints (p_id);

CREATE INDEX typeRelIDX_980 ON validationconstraints (p_type);

CREATE INDEX descriptorRelIDX_980 ON validationconstraints (p_descriptor);


CREATE CACHED TABLE validationconstraintslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_message LONGVARCHAR,
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE whereparts
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_and TINYINT,
    p_replacepattern NVARCHAR(255),
    p_savedquery BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX savedqueryRelIDX_1300 ON whereparts (p_savedquery);


CREATE CACHED TABLE widgetparameter
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_value LONGVARBINARY,
    p_type BIGINT,
    p_description NVARCHAR(255),
    p_targettype NVARCHAR(255),
    p_defaultvalueexpression NVARCHAR(255),
    p_name NVARCHAR(255),
    p_widgetpreferences BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX widgetpreferencesRelIDX_2072 ON widgetparameter (p_widgetpreferences);


CREATE CACHED TABLE widgetpreferences
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_owneruser BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_report BIGINT,
    PRIMARY KEY (PK)
);

CREATE INDEX owneruserRelIDX_2071 ON widgetpreferences (p_owneruser);


CREATE CACHED TABLE widgetpreferenceslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_title NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE workflowactionitemsrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1116 ON workflowactionitemsrel (SequenceNumber);

CREATE INDEX linktarget_1116 ON workflowactionitemsrel (TargetPK);

CREATE INDEX rseqnr_1116 ON workflowactionitemsrel (RSequenceNumber);

CREATE INDEX linksource_1116 ON workflowactionitemsrel (SourcePK);

CREATE INDEX qualifier_1116 ON workflowactionitemsrel (Qualifier);


CREATE CACHED TABLE workflowactionlinkrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    p_active TINYINT,
    p_template BIGINT,
    p_andconnection TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1124 ON workflowactionlinkrel (SequenceNumber);

CREATE INDEX linktarget_1124 ON workflowactionlinkrel (TargetPK);

CREATE INDEX rseqnr_1124 ON workflowactionlinkrel (RSequenceNumber);

CREATE INDEX linksource_1124 ON workflowactionlinkrel (SourcePK);

CREATE INDEX qualifier_1124 ON workflowactionlinkrel (Qualifier);


CREATE CACHED TABLE workflowactions
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    p_renderertemplate BIGINT,
    p_sendemail TINYINT,
    p_principalassigned BIGINT,
    p_actiontype BIGINT,
    p_emailaddress NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    p_firstactivated TIMESTAMP,
    p_template BIGINT,
    p_comment NVARCHAR(255),
    p_status BIGINT,
    p_selecteddecision BIGINT,
    p_workflowpos INTEGER,
    p_workflow BIGINT,
    p_activated TIMESTAMP,
    p_jobhandler NVARCHAR(255),
    p_jobclass LONGVARCHAR,
    PRIMARY KEY (PK)
);

CREATE INDEX codeIDX_1113 ON workflowactions (p_code);

CREATE INDEX workflowRelIDX_1113 ON workflowactions (p_workflow);

CREATE INDEX workflowposPosIDX_1113 ON workflowactions (p_workflowpos);


CREATE CACHED TABLE workflowactionslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_description LONGVARCHAR,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE workflowactionsrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1115 ON workflowactionsrel (SequenceNumber);

CREATE INDEX linktarget_1115 ON workflowactionsrel (TargetPK);

CREATE INDEX rseqnr_1115 ON workflowactionsrel (RSequenceNumber);

CREATE INDEX linksource_1115 ON workflowactionsrel (SourcePK);

CREATE INDEX qualifier_1115 ON workflowactionsrel (Qualifier);


CREATE CACHED TABLE workflowitematts
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_item BIGINT,
    p_code NVARCHAR(255),
    p_workflowpos INTEGER,
    p_comment NVARCHAR(255),
    p_workflow BIGINT,
    p_typeofitem BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX codeIDX_1114 ON workflowitematts (p_code);

CREATE INDEX workflowRelIDX_1114 ON workflowitematts (p_workflow);

CREATE INDEX workflowposPosIDX_1114 ON workflowitematts (p_workflowpos);


CREATE CACHED TABLE workflowitemattslp
(
    ITEMPK BIGINT,
    ITEMTYPEPK BIGINT,
    LANGPK BIGINT,
    p_name NVARCHAR(255),
    PRIMARY KEY (ITEMPK, LANGPK)
);


CREATE CACHED TABLE workflowtemplatelinkrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    p_andconnectiontemplate TINYINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1125 ON workflowtemplatelinkrel (SequenceNumber);

CREATE INDEX linktarget_1125 ON workflowtemplatelinkrel (TargetPK);

CREATE INDEX rseqnr_1125 ON workflowtemplatelinkrel (RSequenceNumber);

CREATE INDEX linksource_1125 ON workflowtemplatelinkrel (SourcePK);

CREATE INDEX qualifier_1125 ON workflowtemplatelinkrel (Qualifier);


CREATE CACHED TABLE workflowtemplprincrel
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1117 ON workflowtemplprincrel (SequenceNumber);

CREATE INDEX linktarget_1117 ON workflowtemplprincrel (TargetPK);

CREATE INDEX rseqnr_1117 ON workflowtemplprincrel (RSequenceNumber);

CREATE INDEX linksource_1117 ON workflowtemplprincrel (SourcePK);

CREATE INDEX qualifier_1117 ON workflowtemplprincrel (Qualifier);


CREATE CACHED TABLE writecockpitcollrels
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1711 ON writecockpitcollrels (SequenceNumber);

CREATE INDEX linktarget_1711 ON writecockpitcollrels (TargetPK);

CREATE INDEX rseqnr_1711 ON writecockpitcollrels (RSequenceNumber);

CREATE INDEX linksource_1711 ON writecockpitcollrels (SourcePK);

CREATE INDEX qualifier_1711 ON writecockpitcollrels (Qualifier);


CREATE CACHED TABLE ydeployments
(
    hjmpTS BIGINT,
    TypeSystemName NVARCHAR(255),
    SuperName NVARCHAR(255),
    PropsTableName NVARCHAR(255),
    Typecode INTEGER DEFAULT 0,
    Modifiers INTEGER DEFAULT 0,
    TableName NVARCHAR(255),
    PackageName NVARCHAR(255),
    Name NVARCHAR(255),
    ExtensionName NVARCHAR(255),
    PRIMARY KEY (TypeSystemName, Name)
);

CREATE INDEX deplselect2_ydeployments ON ydeployments (Typecode);

CREATE INDEX tsnameidx_ydeployments ON ydeployments (TypeSystemName);

CREATE INDEX deplselect_ydeployments ON ydeployments (ExtensionName);


CREATE CACHED TABLE zone2country
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    RSequenceNumber INTEGER DEFAULT 0,
    TargetPK BIGINT,
    SequenceNumber INTEGER DEFAULT 0,
    SourcePK BIGINT,
    Qualifier NVARCHAR(255),
    languagepk BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX seqnr_1204 ON zone2country (SequenceNumber);

CREATE INDEX linktarget_1204 ON zone2country (TargetPK);

CREATE INDEX rseqnr_1204 ON zone2country (RSequenceNumber);

CREATE INDEX linksource_1204 ON zone2country (SourcePK);

CREATE INDEX qualifier_1204 ON zone2country (Qualifier);


CREATE CACHED TABLE zonedeliverymodevalues
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_value DOUBLE,
    p_zone BIGINT,
    p_minimum DOUBLE,
    p_currency BIGINT,
    p_deliverymode BIGINT,
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE INDEX ModeIDX_1202 ON zonedeliverymodevalues (p_deliverymode);

CREATE UNIQUE INDEX IdentityIDX_1202 ON zonedeliverymodevalues (p_deliverymode, p_zone, p_currency, p_minimum);

CREATE INDEX ZoneIDX_1202 ON zonedeliverymodevalues (p_zone);


CREATE CACHED TABLE zones
(
    hjmpTS BIGINT,
    TypePkString BIGINT,
    OwnerPkString BIGINT,
    modifiedTS TIMESTAMP,
    createdTS TIMESTAMP,
    PK BIGINT,
    p_code NVARCHAR(255),
    aCLTS BIGINT DEFAULT 0,
    propTS BIGINT DEFAULT 0,
    PRIMARY KEY (PK)
);

CREATE UNIQUE INDEX IdentityIDX_1203 ON zones (p_code);

