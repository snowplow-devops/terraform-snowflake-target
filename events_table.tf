resource "snowflake_table" "events" {
  database = local.database
  schema   = snowflake_schema.atomic.name
  name     = "EVENTS"

  lifecycle {
    ignore_changes  = [column]
    prevent_destroy = false
  }

  column {
    name     = "APP_ID"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "PLATFORM"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "ETL_TSTAMP"
    type     = "TIMESTAMP_NTZ(9)"
    nullable = true
  }

  column {
    name     = "COLLECTOR_TSTAMP"
    type     = "TIMESTAMP_NTZ(9)"
    nullable = false
  }

  column {
    name     = "DVCE_CREATED_TSTAMP"
    type     = "TIMESTAMP_NTZ(9)"
    nullable = true
  }

  column {
    name     = "EVENT"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "EVENT_ID"
    type     = "VARCHAR(36)"
    nullable = false
  }

  column {
    name     = "TXN_ID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "NAME_TRACKER"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "V_TRACKER"
    type     = "VARCHAR(100)"
    nullable = true
  }

  column {
    name     = "V_COLLECTOR"
    type     = "VARCHAR(100)"
    nullable = false
  }

  column {
    name     = "V_ETL"
    type     = "VARCHAR(100)"
    nullable = false
  }

  column {
    name     = "USER_ID"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "USER_IPADDRESS"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "USER_FINGERPRINT"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "DOMAIN_USERID"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "DOMAIN_SESSIONIDX"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "NETWORK_USERID"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "GEO_COUNTRY"
    type     = "VARCHAR(2)"
    nullable = true
  }

  column {
    name     = "GEO_REGION"
    type     = "VARCHAR(3)"
    nullable = true
  }

  column {
    name     = "GEO_CITY"
    type     = "VARCHAR(75)"
    nullable = true
  }

  column {
    name     = "GEO_ZIPCODE"
    type     = "VARCHAR(15)"
    nullable = true
  }

  column {
    name     = "GEO_LATITUDE"
    type     = "FLOAT"
    nullable = true
  }

  column {
    name     = "GEO_LONGITUDE"
    type     = "FLOAT"
    nullable = true
  }

  column {
    name     = "GEO_REGION_NAME"
    type     = "VARCHAR(100)"
    nullable = true
  }

  column {
    name     = "IP_ISP"
    type     = "VARCHAR(100)"
    nullable = true
  }

  column {
    name     = "IP_ORGANIZATION"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "IP_DOMAIN"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "IP_NETSPEED"
    type     = "VARCHAR(100)"
    nullable = true
  }

  column {
    name     = "PAGE_URL"
    type     = "VARCHAR(4096)"
    nullable = true
  }

  column {
    name     = "PAGE_TITLE"
    type     = "VARCHAR(2000)"
    nullable = true
  }

  column {
    name     = "PAGE_REFERRER"
    type     = "VARCHAR(4096)"
    nullable = true
  }

  column {
    name     = "PAGE_URLSCHEME"
    type     = "VARCHAR(16)"
    nullable = true
  }

  column {
    name     = "PAGE_URLHOST"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "PAGE_URLPORT"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "PAGE_URLPATH"
    type     = "VARCHAR(3000)"
    nullable = true
  }

  column {
    name     = "PAGE_URLQUERY"
    type     = "VARCHAR(6000)"
    nullable = true
  }

  column {
    name     = "PAGE_URLFRAGMENT"
    type     = "VARCHAR(3000)"
    nullable = true
  }

  column {
    name     = "REFR_URLSCHEME"
    type     = "VARCHAR(16)"
    nullable = true
  }

  column {
    name     = "REFR_URLHOST"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "REFR_URLPORT"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "REFR_URLPATH"
    type     = "VARCHAR(6000)"
    nullable = true
  }

  column {
    name     = "REFR_URLQUERY"
    type     = "VARCHAR(6000)"
    nullable = true
  }

  column {
    name     = "REFR_URLFRAGMENT"
    type     = "VARCHAR(3000)"
    nullable = true
  }

  column {
    name     = "REFR_MEDIUM"
    type     = "VARCHAR(25)"
    nullable = true
  }

  column {
    name     = "REFR_SOURCE"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "REFR_TERM"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "MKT_MEDIUM"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "MKT_SOURCE"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "MKT_TERM"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "MKT_CONTENT"
    type     = "VARCHAR(500)"
    nullable = true
  }

  column {
    name     = "MKT_CAMPAIGN"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "SE_CATEGORY"
    type     = "VARCHAR(1000)"
    nullable = true
  }

  column {
    name     = "SE_ACTION"
    type     = "VARCHAR(1000)"
    nullable = true
  }

  column {
    name     = "SE_LABEL"
    type     = "VARCHAR(4096)"
    nullable = true
  }

  column {
    name     = "SE_PROPERTY"
    type     = "VARCHAR(1000)"
    nullable = true
  }

  column {
    name     = "SE_VALUE"
    type     = "FLOAT"
    nullable = true
  }

  column {
    name     = "TR_ORDERID"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "TR_AFFILIATION"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "TR_TOTAL"
    type     = "NUMBER(18,2)"
    nullable = true
  }

  column {
    name     = "TR_TAX"
    type     = "NUMBER(18,2)"
    nullable = true
  }

  column {
    name     = "TR_SHIPPING"
    type     = "NUMBER(18,2)"
    nullable = true
  }

  column {
    name     = "TR_CITY"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "TR_STATE"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "TR_COUNTRY"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "TI_ORDERID"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "TI_SKU"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "TI_NAME"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "TI_CATEGORY"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "TI_PRICE"
    type     = "NUMBER(18,2)"
    nullable = true
  }

  column {
    name     = "TI_QUANTITY"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "PP_XOFFSET_MIN"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "PP_XOFFSET_MAX"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "PP_YOFFSET_MIN"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "PP_YOFFSET_MAX"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "USERAGENT"
    type     = "VARCHAR(1000)"
    nullable = true
  }

  column {
    name     = "BR_NAME"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "BR_FAMILY"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "BR_VERSION"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "BR_TYPE"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "BR_RENDERENGINE"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "BR_LANG"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "BR_FEATURES_PDF"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "BR_FEATURES_FLASH"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "BR_FEATURES_JAVA"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "BR_FEATURES_DIRECTOR"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "BR_FEATURES_QUICKTIME"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "BR_FEATURES_REALPLAYER"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "BR_FEATURES_WINDOWSMEDIA"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "BR_FEATURES_GEARS"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "BR_FEATURES_SILVERLIGHT"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "BR_COOKIES"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "BR_COLORDEPTH"
    type     = "VARCHAR(12)"
    nullable = true
  }

  column {
    name     = "BR_VIEWWIDTH"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "BR_VIEWHEIGHT"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "OS_NAME"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "OS_FAMILY"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "OS_MANUFACTURER"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "OS_TIMEZONE"
    type     = "VARCHAR(255)"
    nullable = true
  }

  column {
    name     = "DVCE_TYPE"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "DVCE_ISMOBILE"
    type     = "BOOLEAN"
    nullable = true
  }

  column {
    name     = "DVCE_SCREENWIDTH"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "DVCE_SCREENHEIGHT"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "DOC_CHARSET"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "DOC_WIDTH"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "DOC_HEIGHT"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "TR_CURRENCY"
    type     = "VARCHAR(3)"
    nullable = true
  }

  column {
    name     = "TR_TOTAL_BASE"
    type     = "NUMBER(18,2)"
    nullable = true
  }

  column {
    name     = "TR_TAX_BASE"
    type     = "NUMBER(18,2)"
    nullable = true
  }

  column {
    name     = "TR_SHIPPING_BASE"
    type     = "NUMBER(18,2)"
    nullable = true
  }

  column {
    name     = "TI_CURRENCY"
    type     = "VARCHAR(3)"
    nullable = true
  }

  column {
    name     = "TI_PRICE_BASE"
    type     = "NUMBER(18,2)"
    nullable = true
  }

  column {
    name     = "BASE_CURRENCY"
    type     = "VARCHAR(3)"
    nullable = true
  }

  column {
    name     = "GEO_TIMEZONE"
    type     = "VARCHAR(64)"
    nullable = true
  }

  column {
    name     = "MKT_CLICKID"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "MKT_NETWORK"
    type     = "VARCHAR(64)"
    nullable = true
  }

  column {
    name     = "ETL_TAGS"
    type     = "VARCHAR(500)"
    nullable = true
  }

  column {
    name     = "DVCE_SENT_TSTAMP"
    type     = "TIMESTAMP_NTZ(9)"
    nullable = true
  }

  column {
    name     = "REFR_DOMAIN_USERID"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "REFR_DVCE_TSTAMP"
    type     = "TIMESTAMP_NTZ(9)"
    nullable = true
  }

  column {
    name     = "DOMAIN_SESSIONID"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "DERIVED_TSTAMP"
    type     = "TIMESTAMP_NTZ(9)"
    nullable = true
  }

  column {
    name     = "EVENT_VENDOR"
    type     = "VARCHAR(1000)"
    nullable = true
  }

  column {
    name     = "EVENT_NAME"
    type     = "VARCHAR(1000)"
    nullable = true
  }

  column {
    name     = "EVENT_FORMAT"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "EVENT_VERSION"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "EVENT_FINGERPRINT"
    type     = "VARCHAR(128)"
    nullable = true
  }

  column {
    name     = "TRUE_TSTAMP"
    type     = "TIMESTAMP_NTZ(9)"
    nullable = true
  }


  column {
    name     = "LOAD_TSTAMP"
    type     = "TIMESTAMP_NTZ(9)"
    nullable = true
  }

  primary_key {
    name = "EVENT_ID_PK"
    keys = ["EVENT_ID"]
  }
}
