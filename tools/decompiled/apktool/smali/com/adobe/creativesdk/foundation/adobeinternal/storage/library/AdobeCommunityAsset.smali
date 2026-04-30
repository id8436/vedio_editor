.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;
.super Ljava/lang/Object;
.source "AdobeCommunityAsset.java"


# static fields
.field static mFilterOptionsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;",
            ">;"
        }
    .end annotation
.end field

.field static sAlternativeDateFormatter:Ljava/text/DateFormat;

.field static sDefaultDateFormatter:Ljava/text/DateFormat;

.field static sGMTTimeZone:Ljava/util/TimeZone;


# instance fields
.field private _assetID:Ljava/lang/String;

.field private _category:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityCategory;

.field private _commentsCount:J

.field private _community:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;

.field private _creator:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;

.field private _dateCreated:Ljava/util/Date;

.field private _dateFeatured:Ljava/util/Date;

.field private _datePublished:Ljava/util/Date;

.field private _detailsCount:J

.field private _dimensions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

.field private _fileExtension:Ljava/lang/String;

.field private _fileSize:J

.field private _href:Ljava/lang/String;

.field private _label:Ljava/lang/String;

.field private _licensed:Z

.field private _likesCount:J

.field private _name:Ljava/lang/String;

.field private _nativeMimeType:Ljava/lang/String;

.field private _renditionHref:Ljava/lang/String;

.field private _supportedMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 532
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->sDefaultDateFormatter:Ljava/text/DateFormat;

    .line 533
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->sAlternativeDateFormatter:Ljava/text/DateFormat;

    .line 534
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string/jumbo v2, "GMT"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->sGMTTimeZone:Ljava/util/TimeZone;

    .line 535
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->sDefaultDateFormatter:Ljava/text/DateFormat;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->sGMTTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 536
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->sAlternativeDateFormatter:Ljava/text/DateFormat;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->sGMTTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 537
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->mFilterOptionsSet:Ljava/util/Set;

    .line 538
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->mFilterOptionsSet:Ljava/util/Set;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionDefaults:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityCategory;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZJJJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityCategory;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZJJJ)V"
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_href:Ljava/lang/String;

    .line 347
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_renditionHref:Ljava/lang/String;

    .line 348
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_fileExtension:Ljava/lang/String;

    .line 349
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_assetID:Ljava/lang/String;

    .line 350
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_community:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;

    .line 351
    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_name:Ljava/lang/String;

    .line 352
    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_category:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityCategory;

    .line 353
    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_creator:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;

    .line 354
    iput-object p9, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dateCreated:Ljava/util/Date;

    .line 355
    iput-object p10, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_datePublished:Ljava/util/Date;

    .line 356
    iput-object p11, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dateFeatured:Ljava/util/Date;

    .line 357
    iput-object p12, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dimensions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    .line 358
    iput-wide p13, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_fileSize:J

    .line 359
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_label:Ljava/lang/String;

    .line 360
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_nativeMimeType:Ljava/lang/String;

    .line 361
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_supportedMimeTypes:Ljava/util/List;

    .line 362
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_tags:Ljava/util/List;

    .line 363
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_licensed:Z

    .line 364
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_likesCount:J

    .line 365
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_commentsCount:J

    .line 366
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_detailsCount:J

    .line 367
    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;)V
    .locals 4

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_community:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;

    .line 372
    :try_start_0
    const-string/jumbo v0, "_links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "self"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_href:Ljava/lang/String;

    .line 373
    const-string/jumbo v0, "_links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "rendition"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_renditionHref:Ljava/lang/String;

    .line 375
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_assetID:Ljava/lang/String;

    .line 376
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_name:Ljava/lang/String;

    .line 377
    const-string/jumbo v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dateCreated:Ljava/util/Date;

    .line 378
    const-string/jumbo v0, "published"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_datePublished:Ljava/util/Date;

    .line 379
    const-string/jumbo v0, "featured"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dateFeatured:Ljava/util/Date;

    .line 380
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    const-string/jumbo v1, "width"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const-string/jumbo v2, "height"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;-><init>(FF)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dimensions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    .line 381
    const-string/jumbo v0, "size"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_fileSize:J

    .line 382
    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_label:Ljava/lang/String;

    .line 383
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_nativeMimeType:Ljava/lang/String;

    .line 384
    const-string/jumbo v0, "tags"

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->convertArrayToStringList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_tags:Ljava/util/List;

    .line 385
    const-string/jumbo v0, "purchased"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_licensed:Z

    .line 386
    const-string/jumbo v0, "stats"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    .line 388
    const-string/jumbo v1, "like_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_likesCount:J

    .line 389
    const-string/jumbo v1, "comment_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_commentsCount:J

    .line 390
    const-string/jumbo v1, "detail_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_detailsCount:J

    .line 392
    :cond_0
    const-string/jumbo v0, "extension"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_fileExtension:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_fileExtension:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_nativeMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_nativeMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileExtensions;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_fileExtension:Ljava/lang/String;

    .line 397
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_supportedMimeTypes:Ljava/util/List;

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_creator:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_href:Ljava/lang/String;

    return-object p1
.end method

.method private static convertArrayToStringList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 543
    if-eqz v2, :cond_0

    .line 544
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 546
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 547
    const-string/jumbo v4, ""

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static convertStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 505
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 508
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 510
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_1

    .line 511
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 514
    :cond_1
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->sDefaultDateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 523
    :goto_0
    return-object v0

    .line 515
    :catch_0
    move-exception v0

    .line 517
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->sAlternativeDateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 518
    :catch_1
    move-exception v0

    .line 523
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAssetsForCommunity(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityCategory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityCategory;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    .line 467
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeCommunity:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    .line 468
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;->getCommunityID()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    sget-object v7, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->mFilterOptionsSet:Ljava/util/Set;

    new-instance v12, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$5;

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {v12, p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$5;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    new-instance v13, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$6;

    move-object/from16 v0, p8

    invoke-direct {v13, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$6;-><init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    move-object v4, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v13}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->getAssetsForCommunityID(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 502
    return-void
.end method


# virtual methods
.method public getAssetID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_assetID:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityCategory;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_category:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityCategory;

    return-object v0
.end method

.method public getCommentsCount()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_commentsCount:J

    return-wide v0
.end method

.method public getCommunity()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_community:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;

    return-object v0
.end method

.method public getCreator()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_creator:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUser;

    return-object v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dateCreated:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dateCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDateFeatured()Ljava/util/Date;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dateFeatured:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dateFeatured:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDatePublished()Ljava/util/Date;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_datePublished:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_datePublished:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDetailsCount()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_detailsCount:J

    return-wide v0
.end method

.method public getDimensions()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dimensions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dimensions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;->width:F

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_dimensions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    iget v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;->height:F

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;-><init>(FF)V

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_fileSize:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_label:Ljava/lang/String;

    return-object v0
.end method

.method public getLikesCount()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_likesCount:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_nativeMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRenditionURL(Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;IFLcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetImageType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_renditionHref:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 417
    const-string/jumbo v0, "png"

    .line 418
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetImageType;->AdobeCommunityAssetImageTypePNG:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetImageType;

    if-eq p4, v1, :cond_0

    .line 419
    const-string/jumbo v0, "jpg"

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_renditionHref:Ljava/lang/String;

    const-string/jumbo v2, "{format}"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 424
    int-to-float v1, p2

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 425
    const-string/jumbo v2, "{size}"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 428
    const-string/jumbo v0, "width"

    .line 429
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;->AdobeCommunityAssetImageDimensionWidth:Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;

    if-eq p1, v2, :cond_1

    .line 430
    const-string/jumbo v0, "height"

    .line 432
    :cond_1
    const-string/jumbo v2, "{dimension}"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedMimeTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_supportedMimeTypes:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_supportedMimeTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_supportedMimeTypes:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_tags:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_tags:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLicensed()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_licensed:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_name:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public unpublish(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_href:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_href:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeCommunity:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    .line 136
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    .line 137
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_href:Ljava/lang/String;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$4;

    invoke-direct {v3, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$4;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->unpublishAsset(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorAssetNotAttachedToCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateName(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_href:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_href:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 87
    :try_start_0
    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 89
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeCommunity:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    .line 90
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    .line 91
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->_href:Ljava/lang/String;

    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$2;

    invoke-direct {v4, p0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->updateMetadataForAsset(Ljava/lang/String;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    if-eqz p3, :cond_0

    .line 114
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorNameCantBeEmptyOrNull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorAssetNotAttachedToCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method
