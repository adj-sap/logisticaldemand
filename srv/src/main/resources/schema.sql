
DROP VIEW IF EXISTS localized_fr_DemandsService_LogisticalDemandsItems;
DROP VIEW IF EXISTS localized_de_DemandsService_LogisticalDemandsItems;
DROP VIEW IF EXISTS localized_fr_DemandsService_LogisticalDemands;
DROP VIEW IF EXISTS localized_de_DemandsService_LogisticalDemands;
DROP VIEW IF EXISTS localized_fr_CostService_CostItems;
DROP VIEW IF EXISTS localized_de_CostService_CostItems;
DROP VIEW IF EXISTS localized_fr_CostService_FreightCosts;
DROP VIEW IF EXISTS localized_de_CostService_FreightCosts;
DROP VIEW IF EXISTS localized_fr_DemandsService_CostItems;
DROP VIEW IF EXISTS localized_de_DemandsService_CostItems;
DROP VIEW IF EXISTS localized_fr_DemandsService_FreightCosts;
DROP VIEW IF EXISTS localized_de_DemandsService_FreightCosts;
DROP VIEW IF EXISTS localized_fr_CostService_Currencies;
DROP VIEW IF EXISTS localized_de_CostService_Currencies;
DROP VIEW IF EXISTS localized_fr_DemandsService_Currencies;
DROP VIEW IF EXISTS localized_de_DemandsService_Currencies;
DROP VIEW IF EXISTS localized_fr_FreightCostsService_FreightCosts;
DROP VIEW IF EXISTS localized_de_FreightCostsService_FreightCosts;
DROP VIEW IF EXISTS localized_fr_com_sap_ngl_LogisticalDemandItems;
DROP VIEW IF EXISTS localized_de_com_sap_ngl_LogisticalDemandItems;
DROP VIEW IF EXISTS localized_fr_com_sap_ngl_LogisticalDemands;
DROP VIEW IF EXISTS localized_de_com_sap_ngl_LogisticalDemands;
DROP VIEW IF EXISTS localized_fr_com_sap_ngl_CostItems;
DROP VIEW IF EXISTS localized_de_com_sap_ngl_CostItems;
DROP VIEW IF EXISTS localized_fr_com_sap_ngl_FreightCosts;
DROP VIEW IF EXISTS localized_de_com_sap_ngl_FreightCosts;
DROP VIEW IF EXISTS localized_fr_sap_common_Currencies;
DROP VIEW IF EXISTS localized_de_sap_common_Currencies;
DROP VIEW IF EXISTS localized_DemandsService_LogisticalDemandsItems;
DROP VIEW IF EXISTS localized_DemandsService_LogisticalDemands;
DROP VIEW IF EXISTS localized_CostService_CostItems;
DROP VIEW IF EXISTS localized_CostService_FreightCosts;
DROP VIEW IF EXISTS localized_DemandsService_CostItems;
DROP VIEW IF EXISTS localized_DemandsService_FreightCosts;
DROP VIEW IF EXISTS localized_CostService_Currencies;
DROP VIEW IF EXISTS localized_DemandsService_Currencies;
DROP VIEW IF EXISTS localized_FreightCostsService_FreightCosts;
DROP VIEW IF EXISTS DemandsService_DraftAdministrativeData;
DROP VIEW IF EXISTS localized_com_sap_ngl_LogisticalDemandItems;
DROP VIEW IF EXISTS localized_com_sap_ngl_LogisticalDemands;
DROP VIEW IF EXISTS localized_com_sap_ngl_CostItems;
DROP VIEW IF EXISTS localized_com_sap_ngl_FreightCosts;
DROP VIEW IF EXISTS localized_sap_common_Currencies;
DROP VIEW IF EXISTS CostService_Currencies_texts;
DROP VIEW IF EXISTS DemandsService_Currencies_texts;
DROP VIEW IF EXISTS CostService_Currencies;
DROP VIEW IF EXISTS DemandsService_CostItems;
DROP VIEW IF EXISTS DemandsService_Currencies;
DROP VIEW IF EXISTS CostService_CostItems;
DROP VIEW IF EXISTS CostService_FreightCosts;
DROP VIEW IF EXISTS FreightCostsService_FreightCosts;
DROP VIEW IF EXISTS DemandsService_FreightCosts;
DROP VIEW IF EXISTS DemandsService_LogisticalDemandsItems;
DROP VIEW IF EXISTS DemandsService_LogisticalDemands;
DROP TABLE IF EXISTS DemandsService_CostItems_drafts;
DROP TABLE IF EXISTS DemandsService_FreightCosts_drafts;
DROP TABLE IF EXISTS DemandsService_LogisticalDemandsItems_drafts;
DROP TABLE IF EXISTS DemandsService_LogisticalDemands_drafts;
DROP TABLE IF EXISTS DRAFT_DraftAdministrativeData;
DROP TABLE IF EXISTS sap_common_Currencies_texts;
DROP TABLE IF EXISTS com_sap_ngl_CostItems;
DROP TABLE IF EXISTS com_sap_ngl_FreightCosts;
DROP TABLE IF EXISTS sap_common_Currencies;
DROP TABLE IF EXISTS com_sap_ngl_LogisticalDemandItems;
DROP TABLE IF EXISTS com_sap_ngl_LogisticalDemands;

CREATE TABLE com_sap_ngl_LogisticalDemands (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  logisticsDemandID NVARCHAR(10) NOT NULL,
  logisticalDemandType NVARCHAR(10),
  companyCode NVARCHAR(4),
  purchasingOrg NVARCHAR(4),
  purchasingGroup NVARCHAR(3),
  carrier NVARCHAR(10),
  sourceLocation NVARCHAR(10),
  destinationLocation NVARCHAR(10),
  arrivalDate DATE_TEXT,
  departureDate DATE_TEXT,
  PRIMARY KEY(ID)
); 

CREATE TABLE com_sap_ngl_LogisticalDemandItems (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  parent_ID NVARCHAR(36) NOT NULL,
  itemNumber INTEGER,
  product NVARCHAR(18),
  grossWeight DECIMAL(13, 3),
  grossWeightUOM NVARCHAR(3),
  referenceOrder NVARCHAR(10),
  referenceOrderItem INTEGER,
  PRIMARY KEY(ID)
); 

CREATE TABLE sap_common_Currencies (
  name NVARCHAR(255),
  descr NVARCHAR(1000),
  code NVARCHAR(3) NOT NULL,
  symbol NVARCHAR(5),
  minorUnit SMALLINT,
  PRIMARY KEY(code)
); 

CREATE TABLE com_sap_ngl_FreightCosts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  hostDocument NVARCHAR(10) NOT NULL,
  hostDocumentType NVARCHAR(4) NOT NULL,
  grossAmount DECIMAL(9, 2) DEFAULT 0,
  netAmount DECIMAL(9, 2) DEFAULT 0,
  currency_code NVARCHAR(3),
  PRIMARY KEY(ID)
); 

CREATE TABLE com_sap_ngl_CostItems (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  parent_ID NVARCHAR(36) NOT NULL,
  itemNumber SMALLINT,
  chargeType NVARCHAR(255),
  chargeTypeDescription NVARCHAR(255),
  chargeCalculationLevel NVARCHAR(255),
  rate DECIMAL(9, 2),
  quantity DECIMAL(9, 2),
  finalAmount DECIMAL(9, 2),
  currency_code NVARCHAR(3),
  unitOfMeasure NVARCHAR(3),
  PRIMARY KEY(ID)
); 

CREATE TABLE sap_common_Currencies_texts (
  locale NVARCHAR(14) NOT NULL,
  name NVARCHAR(255),
  descr NVARCHAR(1000),
  code NVARCHAR(3) NOT NULL,
  PRIMARY KEY(locale, code)
); 

CREATE TABLE DRAFT_DraftAdministrativeData (
  DraftUUID NVARCHAR(36) NOT NULL,
  CreationDateTime TIMESTAMP_TEXT,
  CreatedByUser NVARCHAR(256),
  DraftIsCreatedByMe BOOLEAN,
  LastChangeDateTime TIMESTAMP_TEXT,
  LastChangedByUser NVARCHAR(256),
  InProcessByUser NVARCHAR(256),
  DraftIsProcessedByMe BOOLEAN,
  PRIMARY KEY(DraftUUID)
); 

CREATE TABLE DemandsService_LogisticalDemands_drafts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP_TEXT NULL,
  modifiedBy NVARCHAR(255) NULL,
  logisticsDemandID NVARCHAR(10) NULL,
  logisticalDemandType NVARCHAR(10) NULL,
  companyCode NVARCHAR(4) NULL,
  purchasingOrg NVARCHAR(4) NULL,
  purchasingGroup NVARCHAR(3) NULL,
  carrier NVARCHAR(10) NULL,
  sourceLocation NVARCHAR(10) NULL,
  destinationLocation NVARCHAR(10) NULL,
  arrivalDate DATE_TEXT NULL,
  departureDate DATE_TEXT NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
); 

CREATE TABLE DemandsService_LogisticalDemandsItems_drafts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP_TEXT NULL,
  modifiedBy NVARCHAR(255) NULL,
  parent_ID NVARCHAR(36) NULL,
  itemNumber INTEGER NULL,
  product NVARCHAR(18) NULL,
  grossWeight DECIMAL(13, 3) NULL,
  grossWeightUOM NVARCHAR(3) NULL,
  referenceOrder NVARCHAR(10) NULL,
  referenceOrderItem INTEGER NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
); 

CREATE TABLE DemandsService_FreightCosts_drafts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP_TEXT NULL,
  modifiedBy NVARCHAR(255) NULL,
  hostDocument NVARCHAR(10) NULL,
  hostDocumentType NVARCHAR(4) NULL,
  grossAmount DECIMAL(9, 2) NULL DEFAULT 0,
  netAmount DECIMAL(9, 2) NULL DEFAULT 0,
  currency_code NVARCHAR(3) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
); 

CREATE TABLE DemandsService_CostItems_drafts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP_TEXT NULL,
  modifiedBy NVARCHAR(255) NULL,
  parent_ID NVARCHAR(36) NULL,
  itemNumber SMALLINT NULL,
  chargeType NVARCHAR(255) NULL,
  chargeTypeDescription NVARCHAR(255) NULL,
  chargeCalculationLevel NVARCHAR(255) NULL,
  rate DECIMAL(9, 2) NULL,
  quantity DECIMAL(9, 2) NULL,
  finalAmount DECIMAL(9, 2) NULL,
  currency_code NVARCHAR(3) NULL,
  unitOfMeasure NVARCHAR(3) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
); 

CREATE VIEW DemandsService_LogisticalDemands AS SELECT
  LogisticalDemands_0.ID,
  LogisticalDemands_0.createdAt,
  LogisticalDemands_0.createdBy,
  LogisticalDemands_0.modifiedAt,
  LogisticalDemands_0.modifiedBy,
  LogisticalDemands_0.logisticsDemandID,
  LogisticalDemands_0.logisticalDemandType,
  LogisticalDemands_0.companyCode,
  LogisticalDemands_0.purchasingOrg,
  LogisticalDemands_0.purchasingGroup,
  LogisticalDemands_0.carrier,
  LogisticalDemands_0.sourceLocation,
  LogisticalDemands_0.destinationLocation,
  LogisticalDemands_0.arrivalDate,
  LogisticalDemands_0.departureDate
FROM com_sap_ngl_LogisticalDemands AS LogisticalDemands_0; 

CREATE VIEW DemandsService_LogisticalDemandsItems AS SELECT
  LogisticalDemandItems_0.ID,
  LogisticalDemandItems_0.createdAt,
  LogisticalDemandItems_0.createdBy,
  LogisticalDemandItems_0.modifiedAt,
  LogisticalDemandItems_0.modifiedBy,
  LogisticalDemandItems_0.parent_ID,
  LogisticalDemandItems_0.itemNumber,
  LogisticalDemandItems_0.product,
  LogisticalDemandItems_0.grossWeight,
  LogisticalDemandItems_0.grossWeightUOM,
  LogisticalDemandItems_0.referenceOrder,
  LogisticalDemandItems_0.referenceOrderItem
FROM com_sap_ngl_LogisticalDemandItems AS LogisticalDemandItems_0; 

CREATE VIEW DemandsService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW FreightCostsService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW CostService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW CostService_CostItems AS SELECT
  CostItems_0.ID,
  CostItems_0.createdAt,
  CostItems_0.createdBy,
  CostItems_0.modifiedAt,
  CostItems_0.modifiedBy,
  CostItems_0.parent_ID,
  CostItems_0.itemNumber,
  CostItems_0.chargeType,
  CostItems_0.chargeTypeDescription,
  CostItems_0.chargeCalculationLevel,
  CostItems_0.rate,
  CostItems_0.quantity,
  CostItems_0.finalAmount,
  CostItems_0.currency_code,
  CostItems_0.unitOfMeasure
FROM com_sap_ngl_CostItems AS CostItems_0; 

CREATE VIEW DemandsService_Currencies AS SELECT
  Currencies_0.name,
  Currencies_0.descr,
  Currencies_0.code,
  Currencies_0.symbol,
  Currencies_0.minorUnit
FROM sap_common_Currencies AS Currencies_0; 

CREATE VIEW DemandsService_CostItems AS SELECT
  CostItems_0.ID,
  CostItems_0.createdAt,
  CostItems_0.createdBy,
  CostItems_0.modifiedAt,
  CostItems_0.modifiedBy,
  CostItems_0.parent_ID,
  CostItems_0.itemNumber,
  CostItems_0.chargeType,
  CostItems_0.chargeTypeDescription,
  CostItems_0.chargeCalculationLevel,
  CostItems_0.rate,
  CostItems_0.quantity,
  CostItems_0.finalAmount,
  CostItems_0.currency_code,
  CostItems_0.unitOfMeasure
FROM com_sap_ngl_CostItems AS CostItems_0; 

CREATE VIEW CostService_Currencies AS SELECT
  Currencies_0.name,
  Currencies_0.descr,
  Currencies_0.code,
  Currencies_0.symbol,
  Currencies_0.minorUnit
FROM sap_common_Currencies AS Currencies_0; 

CREATE VIEW DemandsService_Currencies_texts AS SELECT
  texts_0.locale,
  texts_0.name,
  texts_0.descr,
  texts_0.code
FROM sap_common_Currencies_texts AS texts_0; 

CREATE VIEW CostService_Currencies_texts AS SELECT
  texts_0.locale,
  texts_0.name,
  texts_0.descr,
  texts_0.code
FROM sap_common_Currencies_texts AS texts_0; 

CREATE VIEW localized_sap_common_Currencies AS SELECT
  coalesce(localized_1.name, L_0.name) AS name,
  coalesce(localized_1.descr, L_0.descr) AS descr,
  L_0.code,
  L_0.symbol,
  L_0.minorUnit
FROM (sap_common_Currencies AS L_0 LEFT JOIN sap_common_Currencies_texts AS localized_1 ON localized_1.code = L_0.code AND localized_1.locale = 'en'); 

CREATE VIEW localized_com_sap_ngl_FreightCosts AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.hostDocument,
  L.hostDocumentType,
  L.grossAmount,
  L.netAmount,
  L.currency_code
FROM com_sap_ngl_FreightCosts AS L; 

CREATE VIEW localized_com_sap_ngl_CostItems AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.parent_ID,
  L.itemNumber,
  L.chargeType,
  L.chargeTypeDescription,
  L.chargeCalculationLevel,
  L.rate,
  L.quantity,
  L.finalAmount,
  L.currency_code,
  L.unitOfMeasure
FROM com_sap_ngl_CostItems AS L; 

CREATE VIEW localized_com_sap_ngl_LogisticalDemands AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.logisticsDemandID,
  L.logisticalDemandType,
  L.companyCode,
  L.purchasingOrg,
  L.purchasingGroup,
  L.carrier,
  L.sourceLocation,
  L.destinationLocation,
  L.arrivalDate,
  L.departureDate
FROM com_sap_ngl_LogisticalDemands AS L; 

CREATE VIEW localized_com_sap_ngl_LogisticalDemandItems AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.parent_ID,
  L.itemNumber,
  L.product,
  L.grossWeight,
  L.grossWeightUOM,
  L.referenceOrder,
  L.referenceOrderItem
FROM com_sap_ngl_LogisticalDemandItems AS L; 

CREATE VIEW DemandsService_DraftAdministrativeData AS SELECT
  DraftAdministrativeData.DraftUUID,
  DraftAdministrativeData.CreationDateTime,
  DraftAdministrativeData.CreatedByUser,
  DraftAdministrativeData.DraftIsCreatedByMe,
  DraftAdministrativeData.LastChangeDateTime,
  DraftAdministrativeData.LastChangedByUser,
  DraftAdministrativeData.InProcessByUser,
  DraftAdministrativeData.DraftIsProcessedByMe
FROM DRAFT_DraftAdministrativeData AS DraftAdministrativeData; 

CREATE VIEW localized_FreightCostsService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM localized_com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW localized_DemandsService_Currencies AS SELECT
  Currencies_0.name,
  Currencies_0.descr,
  Currencies_0.code,
  Currencies_0.symbol,
  Currencies_0.minorUnit
FROM localized_sap_common_Currencies AS Currencies_0; 

CREATE VIEW localized_CostService_Currencies AS SELECT
  Currencies_0.name,
  Currencies_0.descr,
  Currencies_0.code,
  Currencies_0.symbol,
  Currencies_0.minorUnit
FROM localized_sap_common_Currencies AS Currencies_0; 

CREATE VIEW localized_DemandsService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM localized_com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW localized_DemandsService_CostItems AS SELECT
  CostItems_0.ID,
  CostItems_0.createdAt,
  CostItems_0.createdBy,
  CostItems_0.modifiedAt,
  CostItems_0.modifiedBy,
  CostItems_0.parent_ID,
  CostItems_0.itemNumber,
  CostItems_0.chargeType,
  CostItems_0.chargeTypeDescription,
  CostItems_0.chargeCalculationLevel,
  CostItems_0.rate,
  CostItems_0.quantity,
  CostItems_0.finalAmount,
  CostItems_0.currency_code,
  CostItems_0.unitOfMeasure
FROM localized_com_sap_ngl_CostItems AS CostItems_0; 

CREATE VIEW localized_CostService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM localized_com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW localized_CostService_CostItems AS SELECT
  CostItems_0.ID,
  CostItems_0.createdAt,
  CostItems_0.createdBy,
  CostItems_0.modifiedAt,
  CostItems_0.modifiedBy,
  CostItems_0.parent_ID,
  CostItems_0.itemNumber,
  CostItems_0.chargeType,
  CostItems_0.chargeTypeDescription,
  CostItems_0.chargeCalculationLevel,
  CostItems_0.rate,
  CostItems_0.quantity,
  CostItems_0.finalAmount,
  CostItems_0.currency_code,
  CostItems_0.unitOfMeasure
FROM localized_com_sap_ngl_CostItems AS CostItems_0; 

CREATE VIEW localized_DemandsService_LogisticalDemands AS SELECT
  LogisticalDemands_0.ID,
  LogisticalDemands_0.createdAt,
  LogisticalDemands_0.createdBy,
  LogisticalDemands_0.modifiedAt,
  LogisticalDemands_0.modifiedBy,
  LogisticalDemands_0.logisticsDemandID,
  LogisticalDemands_0.logisticalDemandType,
  LogisticalDemands_0.companyCode,
  LogisticalDemands_0.purchasingOrg,
  LogisticalDemands_0.purchasingGroup,
  LogisticalDemands_0.carrier,
  LogisticalDemands_0.sourceLocation,
  LogisticalDemands_0.destinationLocation,
  LogisticalDemands_0.arrivalDate,
  LogisticalDemands_0.departureDate
FROM localized_com_sap_ngl_LogisticalDemands AS LogisticalDemands_0; 

CREATE VIEW localized_DemandsService_LogisticalDemandsItems AS SELECT
  LogisticalDemandItems_0.ID,
  LogisticalDemandItems_0.createdAt,
  LogisticalDemandItems_0.createdBy,
  LogisticalDemandItems_0.modifiedAt,
  LogisticalDemandItems_0.modifiedBy,
  LogisticalDemandItems_0.parent_ID,
  LogisticalDemandItems_0.itemNumber,
  LogisticalDemandItems_0.product,
  LogisticalDemandItems_0.grossWeight,
  LogisticalDemandItems_0.grossWeightUOM,
  LogisticalDemandItems_0.referenceOrder,
  LogisticalDemandItems_0.referenceOrderItem
FROM localized_com_sap_ngl_LogisticalDemandItems AS LogisticalDemandItems_0; 

CREATE VIEW localized_de_sap_common_Currencies AS SELECT
  coalesce(localized_de_1.name, L_0.name) AS name,
  coalesce(localized_de_1.descr, L_0.descr) AS descr,
  L_0.code,
  L_0.symbol,
  L_0.minorUnit
FROM (sap_common_Currencies AS L_0 LEFT JOIN sap_common_Currencies_texts AS localized_de_1 ON localized_de_1.code = L_0.code AND localized_de_1.locale = 'de'); 

CREATE VIEW localized_fr_sap_common_Currencies AS SELECT
  coalesce(localized_fr_1.name, L_0.name) AS name,
  coalesce(localized_fr_1.descr, L_0.descr) AS descr,
  L_0.code,
  L_0.symbol,
  L_0.minorUnit
FROM (sap_common_Currencies AS L_0 LEFT JOIN sap_common_Currencies_texts AS localized_fr_1 ON localized_fr_1.code = L_0.code AND localized_fr_1.locale = 'fr'); 

CREATE VIEW localized_de_com_sap_ngl_FreightCosts AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.hostDocument,
  L.hostDocumentType,
  L.grossAmount,
  L.netAmount,
  L.currency_code
FROM com_sap_ngl_FreightCosts AS L; 

CREATE VIEW localized_fr_com_sap_ngl_FreightCosts AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.hostDocument,
  L.hostDocumentType,
  L.grossAmount,
  L.netAmount,
  L.currency_code
FROM com_sap_ngl_FreightCosts AS L; 

CREATE VIEW localized_de_com_sap_ngl_CostItems AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.parent_ID,
  L.itemNumber,
  L.chargeType,
  L.chargeTypeDescription,
  L.chargeCalculationLevel,
  L.rate,
  L.quantity,
  L.finalAmount,
  L.currency_code,
  L.unitOfMeasure
FROM com_sap_ngl_CostItems AS L; 

CREATE VIEW localized_fr_com_sap_ngl_CostItems AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.parent_ID,
  L.itemNumber,
  L.chargeType,
  L.chargeTypeDescription,
  L.chargeCalculationLevel,
  L.rate,
  L.quantity,
  L.finalAmount,
  L.currency_code,
  L.unitOfMeasure
FROM com_sap_ngl_CostItems AS L; 

CREATE VIEW localized_de_com_sap_ngl_LogisticalDemands AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.logisticsDemandID,
  L.logisticalDemandType,
  L.companyCode,
  L.purchasingOrg,
  L.purchasingGroup,
  L.carrier,
  L.sourceLocation,
  L.destinationLocation,
  L.arrivalDate,
  L.departureDate
FROM com_sap_ngl_LogisticalDemands AS L; 

CREATE VIEW localized_fr_com_sap_ngl_LogisticalDemands AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.logisticsDemandID,
  L.logisticalDemandType,
  L.companyCode,
  L.purchasingOrg,
  L.purchasingGroup,
  L.carrier,
  L.sourceLocation,
  L.destinationLocation,
  L.arrivalDate,
  L.departureDate
FROM com_sap_ngl_LogisticalDemands AS L; 

CREATE VIEW localized_de_com_sap_ngl_LogisticalDemandItems AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.parent_ID,
  L.itemNumber,
  L.product,
  L.grossWeight,
  L.grossWeightUOM,
  L.referenceOrder,
  L.referenceOrderItem
FROM com_sap_ngl_LogisticalDemandItems AS L; 

CREATE VIEW localized_fr_com_sap_ngl_LogisticalDemandItems AS SELECT
  L.ID,
  L.createdAt,
  L.createdBy,
  L.modifiedAt,
  L.modifiedBy,
  L.parent_ID,
  L.itemNumber,
  L.product,
  L.grossWeight,
  L.grossWeightUOM,
  L.referenceOrder,
  L.referenceOrderItem
FROM com_sap_ngl_LogisticalDemandItems AS L; 

CREATE VIEW localized_de_FreightCostsService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM localized_de_com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW localized_fr_FreightCostsService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM localized_fr_com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW localized_de_DemandsService_Currencies AS SELECT
  Currencies_0.name,
  Currencies_0.descr,
  Currencies_0.code,
  Currencies_0.symbol,
  Currencies_0.minorUnit
FROM localized_de_sap_common_Currencies AS Currencies_0; 

CREATE VIEW localized_fr_DemandsService_Currencies AS SELECT
  Currencies_0.name,
  Currencies_0.descr,
  Currencies_0.code,
  Currencies_0.symbol,
  Currencies_0.minorUnit
FROM localized_fr_sap_common_Currencies AS Currencies_0; 

CREATE VIEW localized_de_CostService_Currencies AS SELECT
  Currencies_0.name,
  Currencies_0.descr,
  Currencies_0.code,
  Currencies_0.symbol,
  Currencies_0.minorUnit
FROM localized_de_sap_common_Currencies AS Currencies_0; 

CREATE VIEW localized_fr_CostService_Currencies AS SELECT
  Currencies_0.name,
  Currencies_0.descr,
  Currencies_0.code,
  Currencies_0.symbol,
  Currencies_0.minorUnit
FROM localized_fr_sap_common_Currencies AS Currencies_0; 

CREATE VIEW localized_de_DemandsService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM localized_de_com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW localized_fr_DemandsService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM localized_fr_com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW localized_de_DemandsService_CostItems AS SELECT
  CostItems_0.ID,
  CostItems_0.createdAt,
  CostItems_0.createdBy,
  CostItems_0.modifiedAt,
  CostItems_0.modifiedBy,
  CostItems_0.parent_ID,
  CostItems_0.itemNumber,
  CostItems_0.chargeType,
  CostItems_0.chargeTypeDescription,
  CostItems_0.chargeCalculationLevel,
  CostItems_0.rate,
  CostItems_0.quantity,
  CostItems_0.finalAmount,
  CostItems_0.currency_code,
  CostItems_0.unitOfMeasure
FROM localized_de_com_sap_ngl_CostItems AS CostItems_0; 

CREATE VIEW localized_fr_DemandsService_CostItems AS SELECT
  CostItems_0.ID,
  CostItems_0.createdAt,
  CostItems_0.createdBy,
  CostItems_0.modifiedAt,
  CostItems_0.modifiedBy,
  CostItems_0.parent_ID,
  CostItems_0.itemNumber,
  CostItems_0.chargeType,
  CostItems_0.chargeTypeDescription,
  CostItems_0.chargeCalculationLevel,
  CostItems_0.rate,
  CostItems_0.quantity,
  CostItems_0.finalAmount,
  CostItems_0.currency_code,
  CostItems_0.unitOfMeasure
FROM localized_fr_com_sap_ngl_CostItems AS CostItems_0; 

CREATE VIEW localized_de_CostService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM localized_de_com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW localized_fr_CostService_FreightCosts AS SELECT
  FreightCosts_0.ID,
  FreightCosts_0.createdAt,
  FreightCosts_0.createdBy,
  FreightCosts_0.modifiedAt,
  FreightCosts_0.modifiedBy,
  FreightCosts_0.hostDocument,
  FreightCosts_0.hostDocumentType,
  FreightCosts_0.grossAmount,
  FreightCosts_0.netAmount,
  FreightCosts_0.currency_code
FROM localized_fr_com_sap_ngl_FreightCosts AS FreightCosts_0; 

CREATE VIEW localized_de_CostService_CostItems AS SELECT
  CostItems_0.ID,
  CostItems_0.createdAt,
  CostItems_0.createdBy,
  CostItems_0.modifiedAt,
  CostItems_0.modifiedBy,
  CostItems_0.parent_ID,
  CostItems_0.itemNumber,
  CostItems_0.chargeType,
  CostItems_0.chargeTypeDescription,
  CostItems_0.chargeCalculationLevel,
  CostItems_0.rate,
  CostItems_0.quantity,
  CostItems_0.finalAmount,
  CostItems_0.currency_code,
  CostItems_0.unitOfMeasure
FROM localized_de_com_sap_ngl_CostItems AS CostItems_0; 

CREATE VIEW localized_fr_CostService_CostItems AS SELECT
  CostItems_0.ID,
  CostItems_0.createdAt,
  CostItems_0.createdBy,
  CostItems_0.modifiedAt,
  CostItems_0.modifiedBy,
  CostItems_0.parent_ID,
  CostItems_0.itemNumber,
  CostItems_0.chargeType,
  CostItems_0.chargeTypeDescription,
  CostItems_0.chargeCalculationLevel,
  CostItems_0.rate,
  CostItems_0.quantity,
  CostItems_0.finalAmount,
  CostItems_0.currency_code,
  CostItems_0.unitOfMeasure
FROM localized_fr_com_sap_ngl_CostItems AS CostItems_0; 

CREATE VIEW localized_de_DemandsService_LogisticalDemands AS SELECT
  LogisticalDemands_0.ID,
  LogisticalDemands_0.createdAt,
  LogisticalDemands_0.createdBy,
  LogisticalDemands_0.modifiedAt,
  LogisticalDemands_0.modifiedBy,
  LogisticalDemands_0.logisticsDemandID,
  LogisticalDemands_0.logisticalDemandType,
  LogisticalDemands_0.companyCode,
  LogisticalDemands_0.purchasingOrg,
  LogisticalDemands_0.purchasingGroup,
  LogisticalDemands_0.carrier,
  LogisticalDemands_0.sourceLocation,
  LogisticalDemands_0.destinationLocation,
  LogisticalDemands_0.arrivalDate,
  LogisticalDemands_0.departureDate
FROM localized_de_com_sap_ngl_LogisticalDemands AS LogisticalDemands_0; 

CREATE VIEW localized_fr_DemandsService_LogisticalDemands AS SELECT
  LogisticalDemands_0.ID,
  LogisticalDemands_0.createdAt,
  LogisticalDemands_0.createdBy,
  LogisticalDemands_0.modifiedAt,
  LogisticalDemands_0.modifiedBy,
  LogisticalDemands_0.logisticsDemandID,
  LogisticalDemands_0.logisticalDemandType,
  LogisticalDemands_0.companyCode,
  LogisticalDemands_0.purchasingOrg,
  LogisticalDemands_0.purchasingGroup,
  LogisticalDemands_0.carrier,
  LogisticalDemands_0.sourceLocation,
  LogisticalDemands_0.destinationLocation,
  LogisticalDemands_0.arrivalDate,
  LogisticalDemands_0.departureDate
FROM localized_fr_com_sap_ngl_LogisticalDemands AS LogisticalDemands_0; 

CREATE VIEW localized_de_DemandsService_LogisticalDemandsItems AS SELECT
  LogisticalDemandItems_0.ID,
  LogisticalDemandItems_0.createdAt,
  LogisticalDemandItems_0.createdBy,
  LogisticalDemandItems_0.modifiedAt,
  LogisticalDemandItems_0.modifiedBy,
  LogisticalDemandItems_0.parent_ID,
  LogisticalDemandItems_0.itemNumber,
  LogisticalDemandItems_0.product,
  LogisticalDemandItems_0.grossWeight,
  LogisticalDemandItems_0.grossWeightUOM,
  LogisticalDemandItems_0.referenceOrder,
  LogisticalDemandItems_0.referenceOrderItem
FROM localized_de_com_sap_ngl_LogisticalDemandItems AS LogisticalDemandItems_0; 

CREATE VIEW localized_fr_DemandsService_LogisticalDemandsItems AS SELECT
  LogisticalDemandItems_0.ID,
  LogisticalDemandItems_0.createdAt,
  LogisticalDemandItems_0.createdBy,
  LogisticalDemandItems_0.modifiedAt,
  LogisticalDemandItems_0.modifiedBy,
  LogisticalDemandItems_0.parent_ID,
  LogisticalDemandItems_0.itemNumber,
  LogisticalDemandItems_0.product,
  LogisticalDemandItems_0.grossWeight,
  LogisticalDemandItems_0.grossWeightUOM,
  LogisticalDemandItems_0.referenceOrder,
  LogisticalDemandItems_0.referenceOrderItem
FROM localized_fr_com_sap_ngl_LogisticalDemandItems AS LogisticalDemandItems_0; 

