.class public Lcom/google/gdata/client/youtube/YouTubeQuery;
.super Lcom/google/gdata/client/Query;
.source "YouTubeQuery.java"


# static fields
.field private static final COUNTRY_CODE_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT:Ljava/lang/String; = "format"

.field private static final IP_V4_PATTERN:Ljava/util/regex/Pattern;

.field private static final LANGUAGE_RESTRICT:Ljava/lang/String; = "lr"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final LOCATION_RADIUS:Ljava/lang/String; = "location-radius"

.field private static final LOCATION_RADIUS_PATTERN:Ljava/util/regex/Pattern;

.field private static final ORDERBY:Ljava/lang/String; = "orderby"

.field private static final RACY:Ljava/lang/String; = "racy"

.field private static final RACY_EXCLUDE:Ljava/lang/String; = "exclude"

.field private static final RACY_INCLUDE:Ljava/lang/String; = "include"

.field private static final RELEVANCE_LANGUAGE_PATTERN:Ljava/util/regex/Pattern;

.field private static final RESTRICTION:Ljava/lang/String; = "restriction"

.field private static final SAFE_SEARCH:Ljava/lang/String; = "safeSearch"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final UPLOADER:Ljava/lang/String; = "uploader"

.field private static final VQ:Ljava/lang/String; = "vq"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "[a-zA-Z]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery;->COUNTRY_CODE_PATTERN:Ljava/util/regex/Pattern;

    .line 59
    const-string/jumbo v0, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery;->IP_V4_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    const-string/jumbo v0, "\\d+(ft|mi|m|km)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery;->LOCATION_RADIUS_PATTERN:Ljava/util/regex/Pattern;

    .line 235
    const-string/jumbo v0, "_lang_([^_]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery;->RELEVANCE_LANGUAGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 249
    return-void
.end method


# virtual methods
.method public getCountryRestriction()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 623
    const-string/jumbo v0, "restriction"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    if-nez v0, :cond_0

    .line 628
    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/google/gdata/client/youtube/YouTubeQuery;->COUNTRY_CODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 709
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 710
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    const/4 v0, 0x0

    .line 713
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-virtual {v0}, Lcom/google/gdata/client/Query$CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFormats()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    const-string/jumbo v0, "format"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    if-nez v1, :cond_1

    .line 307
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 316
    :cond_0
    return-object v0

    .line 310
    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 312
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " *, *"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 313
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 314
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getIncludeRacy()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 496
    const-string/jumbo v0, "include"

    const-string/jumbo v1, "racy"

    invoke-virtual {p0, v1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIpRestriction()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 663
    const-string/jumbo v0, "restriction"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    if-nez v0, :cond_0

    .line 668
    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/google/gdata/client/youtube/YouTubeQuery;->IP_V4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getLanguageRestrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const-string/jumbo v0, "lr"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    .locals 6

    .prologue
    .line 546
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    const-string/jumbo v1, "!"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 549
    new-instance v1, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v1
.end method

.method public getLocationRadius()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    const-string/jumbo v0, "location-radius"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderByRelevanceForLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 443
    const-string/jumbo v1, "orderby"

    invoke-virtual {p0, v1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    if-nez v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-object v0

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getOrderby()Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    move-result-object v2

    sget-object v3, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->RELEVANCE:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    if-eq v2, v3, :cond_2

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not ordering by relevance. Please check with getOrderBy() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_2
    if-eqz v1, :cond_0

    .line 458
    sget-object v2, Lcom/google/gdata/client/youtube/YouTubeQuery;->RELEVANCE_LANGUAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrderby()Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;
    .locals 2

    .prologue
    .line 402
    const-string/jumbo v0, "orderby"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    const-string/jumbo v1, "relevance_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->RELEVANCE:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    .line 406
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->fromParameterValue(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    move-result-object v0

    goto :goto_0
.end method

.method public getSafeSearch()Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    .locals 1

    .prologue
    .line 473
    const-string/jumbo v0, "safeSearch"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->fromParameterValue(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Lcom/google/gdata/client/youtube/YouTubeQuery$Time;
    .locals 1

    .prologue
    .line 284
    const-string/jumbo v0, "time"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->fromParameterValue(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    move-result-object v0

    return-object v0
.end method

.method public getUploader()Lcom/google/gdata/client/youtube/YouTubeQuery$Uploader;
    .locals 1

    .prologue
    .line 724
    const-string/jumbo v0, "uploader"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    invoke-static {v0}, Lcom/google/gdata/client/youtube/YouTubeQuery$Uploader;->fromParameterValue(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$Uploader;

    move-result-object v0

    return-object v0
.end method

.method public getVideoQuery()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    const-string/jumbo v0, "vq"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRestrictLocation()Z
    .locals 2

    .prologue
    .line 609
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_0

    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameters()Ljava/util/List;

    move-result-object v1

    .line 698
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Query$CustomParameter;

    .line 699
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 703
    :cond_0
    if-eqz p2, :cond_1

    .line 704
    new-instance v0, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/client/Query$CustomParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_1
    return-void
.end method

.method public setCountryRestriction(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 647
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery;->COUNTRY_CODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid country code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    const-string/jumbo v0, "restriction"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public setFormats(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    const-string/jumbo v0, "format"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_0
    return-void

    .line 355
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    const/4 v0, 0x1

    .line 357
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 358
    if-eqz v1, :cond_2

    .line 359
    const/4 v0, 0x0

    .line 363
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v0

    .line 364
    goto :goto_1

    .line 361
    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    .line 365
    :cond_3
    const-string/jumbo v0, "format"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs setFormats([I)V
    .locals 4

    .prologue
    .line 331
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 332
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 333
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->setFormats(Ljava/util/Set;)V

    .line 336
    return-void
.end method

.method public setIncludeRacy(Ljava/lang/Boolean;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 515
    :goto_0
    const-string/jumbo v1, "racy"

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void

    .line 512
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "include"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "exclude"

    goto :goto_0
.end method

.method public setIpRestriction(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 687
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery;->IP_V4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IP v4 address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    const-string/jumbo v0, "restriction"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public setLanguageRestrict(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 382
    const-string/jumbo v0, "lr"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public setLocation(Lcom/google/gdata/data/geo/impl/GeoRssWhere;)V
    .locals 4

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->hasRestrictLocation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_1
    const-string/jumbo v1, "location"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void

    .line 536
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setLocationRadius(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 560
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery;->LOCATION_RADIUS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid location radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    const-string/jumbo v0, "location-radius"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public setOrderBy(Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;)V
    .locals 2

    .prologue
    .line 416
    const-string/jumbo v1, "orderby"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void

    .line 416
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->toParameterValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setOrderByRelevanceForLanguage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 430
    const-string/jumbo v1, "orderby"

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->RELEVANCE:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    invoke-virtual {v0}, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->toParameterValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "relevance_lang_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setRestrictLocation(Z)V
    .locals 3

    .prologue
    .line 583
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    if-nez v0, :cond_0

    .line 586
    const-string/jumbo v0, ""

    .line 589
    :cond_0
    if-eqz p1, :cond_2

    .line 590
    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 591
    const-string/jumbo v1, "location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_1
    :goto_0
    return-void

    .line 594
    :cond_2
    const-string/jumbo v1, "!"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 597
    const/4 v0, 0x0

    .line 599
    :cond_3
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSafeSearch(Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;)V
    .locals 2

    .prologue
    .line 484
    const-string/jumbo v1, "safeSearch"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void

    .line 484
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->toParameterValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTime(Lcom/google/gdata/client/youtube/YouTubeQuery$Time;)V
    .locals 2

    .prologue
    .line 293
    const-string/jumbo v1, "time"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->toParameterValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setUploader(Lcom/google/gdata/client/youtube/YouTubeQuery$Uploader;)V
    .locals 2

    .prologue
    .line 735
    const-string/jumbo v1, "uploader"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void

    .line 735
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/client/youtube/YouTubeQuery$Uploader;->toParameterValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setVideoQuery(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    const-string/jumbo v0, "vq"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/youtube/YouTubeQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method
