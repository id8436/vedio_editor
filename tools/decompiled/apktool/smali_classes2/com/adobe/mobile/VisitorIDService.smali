.class final Lcom/adobe/mobile/VisitorIDService;
.super Ljava/lang/Object;
.source "VisitorIDService.java"


# static fields
.field static final ANALYTICS_PARAMETER_KEY_BLOB:Ljava/lang/String; = "aamb"

.field static final ANALYTICS_PARAMETER_KEY_LOCATION_HINT:Ljava/lang/String; = "aamlh"

.field static final ANALYTICS_PARAMETER_KEY_MID:Ljava/lang/String; = "mid"

.field static final ANALYTICS_PARAMETER_KEY_ORG:Ljava/lang/String; = "mcorgid"

.field static final CID_DELIMITER:Ljava/lang/String; = "%01"

.field static final RESPONSE_KEY_BLOB:Ljava/lang/String; = "d_blob"

.field static final RESPONSE_KEY_ERROR:Ljava/lang/String; = "error_msg"

.field static final RESPONSE_KEY_HINT:Ljava/lang/String; = "dcs_region"

.field static final RESPONSE_KEY_MID:Ljava/lang/String; = "d_mid"

.field static final RESPONSE_KEY_TTL:Ljava/lang/String; = "id_sync_ttl"

.field static SERVER:Ljava/lang/String; = null

.field static final TARGET_PARAMETER_KEY_AID:Ljava/lang/String; = "mboxMCAVID"

.field static final TARGET_PARAMETER_KEY_BLOB:Ljava/lang/String; = "mboxAAMB"

.field static final TARGET_PARAMETER_KEY_HINT:Ljava/lang/String; = "mboxMCGLH"

.field static final TARGET_PARAMETER_KEY_MID:Ljava/lang/String; = "mboxMCGVID"

.field static final TIMEOUT:I = 0x7d0

.field static final VISITOR_ID_PARAMETER_KEY_CUSTOMER:Ljava/lang/String; = "d_cid_ic"

.field private static _instance:Lcom/adobe/mobile/VisitorIDService;

.field private static final _instanceMutex:Ljava/lang/Object;


# instance fields
.field private _aamIdString:Ljava/lang/String;

.field private _analyticsIdString:Ljava/lang/String;

.field private _blob:Ljava/lang/String;

.field private _customerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/mobile/VisitorID;",
            ">;"
        }
    .end annotation
.end field

.field private _lastSync:J

.field private _locationHint:Ljava/lang/String;

.field private _marketingCloudID:Ljava/lang/String;

.field private _ttl:J

.field private final _visitorIDExector:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "dpm.demdex.net"

    sput-object v0, Lcom/adobe/mobile/VisitorIDService;->SERVER:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/mobile/VisitorIDService;->_instance:Lcom/adobe/mobile/VisitorIDService;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/VisitorIDService;->_instanceMutex:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    .line 82
    invoke-virtual {p0}, Lcom/adobe/mobile/VisitorIDService;->resetVariablesFromSharedPreferences()V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/mobile/VisitorIDService;->idSync(Ljava/util/Map;)V

    .line 85
    return-void
.end method

.method private _generateAnalyticsCustomerIdString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/mobile/VisitorID;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 613
    if-nez p1, :cond_0

    .line 614
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    .line 617
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 618
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/VisitorID;

    .line 619
    invoke-virtual {v0}, Lcom/adobe/mobile/VisitorID;->serializeIdentifierKeyForAnalyticsID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/adobe/mobile/VisitorID;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-virtual {v0}, Lcom/adobe/mobile/VisitorID;->serializeAuthenticationKeyForAnalyticsID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/adobe/mobile/VisitorID;->authenticationState:Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

    invoke-virtual {v0}, Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 623
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 624
    const-string/jumbo v2, "cid"

    invoke-static {v1}, Lcom/adobe/mobile/StaticMethods;->translateContextData(Ljava/util/Map;)Lcom/adobe/mobile/ContextData;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 628
    invoke-static {v0, v1}, Lcom/adobe/mobile/StaticMethods;->serializeToQueryString(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 630
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _generateCustomerIdString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/mobile/VisitorID;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 593
    :goto_0
    return-object v0

    .line 579
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/VisitorID;

    .line 581
    const-string/jumbo v3, "&d_cid_ic="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-object v3, v0, Lcom/adobe/mobile/VisitorID;->idType:Ljava/lang/String;

    invoke-static {v3}, Lcom/adobe/mobile/StaticMethods;->URLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v3, v0, Lcom/adobe/mobile/VisitorID;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/adobe/mobile/StaticMethods;->URLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 585
    if-eqz v3, :cond_1

    .line 586
    const-string/jumbo v4, "%01"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_1
    const-string/jumbo v3, "%01"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v0, v0, Lcom/adobe/mobile/VisitorID;->authenticationState:Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

    invoke-virtual {v0}, Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 593
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _generateCustomerIds(Ljava/util/Map;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/mobile/VisitorID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    if-nez p1, :cond_0

    .line 635
    const/4 v0, 0x0

    .line 649
    :goto_0
    return-object v0

    .line 638
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 639
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 641
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 643
    :try_start_0
    new-instance v4, Lcom/adobe/mobile/VisitorID;

    const-string/jumbo v5, "d_cid_ic"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, p2}, Lcom/adobe/mobile/VisitorID;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 644
    :catch_0
    move-exception v0

    .line 645
    const-string/jumbo v1, "ID Service - Unable to create ID after encoding:(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 649
    goto :goto_0
.end method

.method private _generateInternalIdString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 597
    if-nez p1, :cond_0

    .line 598
    const/4 v0, 0x0

    .line 609
    :goto_0
    return-object v0

    .line 601
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 604
    const-string/jumbo v1, "&d_cid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/mobile/StaticMethods;->URLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    const-string/jumbo v1, "%01"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/mobile/StaticMethods;->URLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 609
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _generateMID()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 543
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 546
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 549
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%019d%019d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    cmp-long v8, v0, v10

    if-gez v8, :cond_0

    neg-long v0, v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    cmp-long v0, v2, v10

    if-gez v0, :cond_1

    neg-long v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private _generateStoredCustomerIdString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/mobile/VisitorID;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 554
    const/4 v0, 0x0

    .line 571
    :goto_0
    return-object v0

    .line 557
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/VisitorID;

    .line 559
    const-string/jumbo v3, "&d_cid_ic="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v3, v0, Lcom/adobe/mobile/VisitorID;->idType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v3, v0, Lcom/adobe/mobile/VisitorID;->id:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 563
    const-string/jumbo v3, "%01"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v3, v0, Lcom/adobe/mobile/VisitorID;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_1
    const-string/jumbo v3, "%01"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v0, v0, Lcom/adobe/mobile/VisitorID;->authenticationState:Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

    invoke-virtual {v0}, Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 571
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _mergeCustomerIds(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/mobile/VisitorID;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/mobile/VisitorID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    if-nez p1, :cond_1

    .line 654
    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService;->_customerIds:Ljava/util/List;

    .line 676
    :cond_0
    return-object v2

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService;->_customerIds:Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService;->_customerIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    .line 660
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/VisitorID;

    .line 662
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/mobile/VisitorID;

    .line 663
    iget-object v5, v0, Lcom/adobe/mobile/VisitorID;->idType:Ljava/lang/String;

    iget-object v6, v0, Lcom/adobe/mobile/VisitorID;->id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/adobe/mobile/VisitorID;->isVisitorID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 664
    iget-object v0, v0, Lcom/adobe/mobile/VisitorID;->authenticationState:Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

    iput-object v0, v1, Lcom/adobe/mobile/VisitorID;->authenticationState:Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

    goto :goto_1

    .line 657
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    goto :goto_0

    .line 670
    :cond_4
    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 671
    :catch_0
    move-exception v0

    .line 672
    const-string/jumbo v1, "ID Service - Unable to create ID after encoding:(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private _parseIdString(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/mobile/VisitorID;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 680
    if-nez p1, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 708
    :goto_0
    return-object v0

    .line 684
    :cond_0
    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 685
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 687
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 688
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 689
    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 690
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "%01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 691
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v11, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    :cond_2
    move-object v0, v4

    .line 692
    goto :goto_0

    .line 696
    :cond_3
    :try_start_0
    new-instance v6, Lcom/adobe/mobile/VisitorID;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;->values()[Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v3, v7, v3

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/adobe/mobile/VisitorID;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)V

    .line 697
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 699
    :catch_0
    move-exception v0

    .line 700
    const-string/jumbo v1, "ID Service - Unable to parse visitor ID: (%s) exception:(%s)"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 701
    :catch_1
    move-exception v0

    .line 702
    const-string/jumbo v1, "ID Service - Unable to create ID after encoding:(%s)"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    move-object v0, v4

    .line 708
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/mobile/VisitorIDService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService;->_customerIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/mobile/VisitorIDService;->_customerIds:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/adobe/mobile/VisitorIDService;->_parseIdString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/mobile/VisitorIDService;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/adobe/mobile/VisitorIDService;->_lastSync:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/adobe/mobile/VisitorIDService;J)J
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/adobe/mobile/VisitorIDService;->_lastSync:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/adobe/mobile/VisitorIDService;Ljava/util/Map;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/adobe/mobile/VisitorIDService;->_generateCustomerIds(Ljava/util/Map;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/adobe/mobile/VisitorIDService;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/adobe/mobile/VisitorIDService;->_generateInternalIdString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/adobe/mobile/VisitorIDService;->_generateMID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/adobe/mobile/VisitorIDService;->_mergeCustomerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/adobe/mobile/VisitorIDService;->_generateStoredCustomerIdString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService;->_analyticsIdString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/mobile/VisitorIDService;->_analyticsIdString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/adobe/mobile/VisitorIDService;->_generateAnalyticsCustomerIdString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService;->_aamIdString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/mobile/VisitorIDService;->_aamIdString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/adobe/mobile/VisitorIDService;->_generateCustomerIdString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService;->_marketingCloudID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/mobile/VisitorIDService;->_marketingCloudID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService;->_locationHint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/mobile/VisitorIDService;->_locationHint:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService;->_blob:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/mobile/VisitorIDService;->_blob:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/adobe/mobile/VisitorIDService;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/adobe/mobile/VisitorIDService;->_ttl:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/adobe/mobile/VisitorIDService;J)J
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/adobe/mobile/VisitorIDService;->_ttl:J

    return-wide p1
.end method

.method public static sharedInstance()Lcom/adobe/mobile/VisitorIDService;
    .locals 2

    .prologue
    .line 68
    sget-object v1, Lcom/adobe/mobile/VisitorIDService;->_instanceMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/VisitorIDService;->_instance:Lcom/adobe/mobile/VisitorIDService;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/adobe/mobile/VisitorIDService;

    invoke-direct {v0}, Lcom/adobe/mobile/VisitorIDService;-><init>()V

    sput-object v0, Lcom/adobe/mobile/VisitorIDService;->_instance:Lcom/adobe/mobile/VisitorIDService;

    .line 73
    :cond_0
    sget-object v0, Lcom/adobe/mobile/VisitorIDService;->_instance:Lcom/adobe/mobile/VisitorIDService;

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final getAAMParameterString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/adobe/mobile/VisitorIDService$9;

    invoke-direct {v2, p0, v0}, Lcom/adobe/mobile/VisitorIDService$9;-><init>(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 479
    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 482
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 483
    :catch_0
    move-exception v1

    .line 484
    const-string/jumbo v2, "ID Service - Unable to retrieve audience manager parameters from queue(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final getAnalyticsIDRequestParameterString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/adobe/mobile/VisitorIDService$5;

    invoke-direct {v2, p0, v0}, Lcom/adobe/mobile/VisitorIDService$5;-><init>(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 343
    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 346
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :catch_0
    move-exception v1

    .line 348
    const-string/jumbo v2, "ID Service - Unable to retrieve analytics id parameters from queue(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final getAnalyticsIdString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 391
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/adobe/mobile/VisitorIDService$7;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/VisitorIDService$7;-><init>(Lcom/adobe/mobile/VisitorIDService;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 398
    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 401
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-object v0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    const-string/jumbo v1, "ID Service - Unable to retrieve analytics id string from queue(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected final getAnalyticsIdVisitorParameters()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/adobe/mobile/VisitorIDService$8;

    invoke-direct {v2, p0, v0}, Lcom/adobe/mobile/VisitorIDService$8;-><init>(Lcom/adobe/mobile/VisitorIDService;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 432
    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 435
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    return-object v0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    const-string/jumbo v2, "ID Service - Unable to retrieve analytics parameters from queue(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final getAnalyticsParameters()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 356
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/adobe/mobile/VisitorIDService$6;

    invoke-direct {v2, p0, v0}, Lcom/adobe/mobile/VisitorIDService$6;-><init>(Lcom/adobe/mobile/VisitorIDService;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 378
    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 381
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-object v0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    const-string/jumbo v2, "ID Service - Unable to retrieve analytics parameters from queue(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final getIdentifiers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/mobile/VisitorID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/adobe/mobile/VisitorIDService$4;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/VisitorIDService$4;-><init>(Lcom/adobe/mobile/VisitorIDService;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 311
    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 314
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-object v0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    const-string/jumbo v1, "ID Service - Unable to retrieve marketing cloud identifiers from queue(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getMarketingCloudID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/adobe/mobile/VisitorIDService$3;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/VisitorIDService$3;-><init>(Lcom/adobe/mobile/VisitorIDService;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 293
    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 296
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-object v0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const-string/jumbo v1, "ID Service - Unable to retrieve marketing cloud id from queue(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getTargetParameterString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/adobe/mobile/VisitorIDService$10;

    invoke-direct {v2, p0, v0}, Lcom/adobe/mobile/VisitorIDService$10;-><init>(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 522
    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 525
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getAID()Ljava/lang/String;

    move-result-object v1

    .line 531
    if-eqz v1, :cond_0

    .line 532
    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string/jumbo v2, "mboxMCAVID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 526
    :catch_0
    move-exception v1

    .line 527
    const-string/jumbo v2, "ID Service - Unable to retrieve target parameters from queue(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected idSync(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    sget-object v1, Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;->VISITOR_ID_AUTHENTICATION_STATE_UNKNOWN:Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/mobile/VisitorIDService;->idSync(Ljava/util/Map;Ljava/util/Map;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)V

    .line 131
    return-void
.end method

.method protected idSync(Ljava/util/Map;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/adobe/mobile/VisitorIDService;->idSync(Ljava/util/Map;Ljava/util/Map;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)V

    .line 123
    return-void
.end method

.method protected idSync(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;->VISITOR_ID_AUTHENTICATION_STATE_UNKNOWN:Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/mobile/VisitorIDService;->idSync(Ljava/util/Map;Ljava/util/Map;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)V

    .line 127
    return-void
.end method

.method protected idSync(Ljava/util/Map;Ljava/util/Map;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 135
    :goto_0
    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/adobe/mobile/VisitorIDService$2;

    invoke-direct {v3, p0, v1, v0, p3}, Lcom/adobe/mobile/VisitorIDService$2;-><init>(Lcom/adobe/mobile/VisitorIDService;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 263
    return-void

    :cond_1
    move-object v1, v0

    .line 134
    goto :goto_0
.end method

.method protected final parseResponse([B)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 266
    if-nez p1, :cond_0

    .line 281
    :goto_0
    return-object v0

    .line 273
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 281
    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    const-string/jumbo v2, "ID Service - Unable to decode response(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :catch_1
    move-exception v1

    .line 278
    const-string/jumbo v2, "ID Service - Unable to parse response(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected resetVariablesFromSharedPreferences()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/adobe/mobile/VisitorIDService$1;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/VisitorIDService$1;-><init>(Lcom/adobe/mobile/VisitorIDService;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 111
    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService;->_visitorIDExector:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string/jumbo v1, "ID Service - Unable to initialize visitor ID variables(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
