.class public Lcom/google/gdata/data/webmastertools/SitesEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "SitesEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/webmastertools/SitesEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY:Lcom/google/gdata/data/Category;

.field private static final CRAWLED:Ljava/lang/String; = "crawled"

.field private static final CRAWL_RATE:Ljava/lang/String; = "crawl-rate"

.field private static final ENHANCED_IMAGE_SEARCH:Ljava/lang/String; = "enhanced-image-search"

.field private static final GEOLOCATION:Ljava/lang/String; = "geolocation"

.field private static final INDEXED:Ljava/lang/String; = "indexed"

.field private static final PREFERRED_DOMAIN:Ljava/lang/String; = "preferred-domain"

.field private static final VERIFIED:Ljava/lang/String; = "verified"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "http://schemas.google.com/webmasters/tools/2007#site-info"

    invoke-static {v0}, Lcom/google/gdata/data/webmastertools/Namespaces;->createCategory(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/webmastertools/SitesEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/webmastertools/SitesEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method


# virtual methods
.method public addVerificationMethod(Lcom/google/gdata/data/webmastertools/VerificationMethod;)V
    .locals 0

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/SitesEntry;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 342
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-static {}, Lcom/google/gdata/data/extensions/EntryLink;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 97
    const-class v1, Lcom/google/gdata/data/webmastertools/SitesEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 101
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitesEntry$Indexed;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 105
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitesEntry$Crawled;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 109
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitesEntry$Verified;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 113
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitesEntry$Geolocation;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 117
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitesEntry$CrawlingRate;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 121
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitesEntry$PreferredDomain;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 125
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitesEntry$EnhancedImageSearch;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 129
    const-class v0, Lcom/google/gdata/data/webmastertools/VerificationMethod;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v2}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 131
    const-class v1, Lcom/google/gdata/data/webmastertools/SitesEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 134
    return-void
.end method

.method public getCrawlRate()Lcom/google/gdata/data/webmastertools/CrawlRate;
    .locals 1

    .prologue
    .line 277
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$CrawlingRate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$CrawlingRate;

    .line 280
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$CrawlingRate;->getCrawlRate()Lcom/google/gdata/data/webmastertools/CrawlRate;

    move-result-object v0

    goto :goto_0
.end method

.method public getCrawled()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 190
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Crawled;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Crawled;

    .line 191
    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$Crawled;->getDateTime()Lcom/google/gdata/data/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnhancedImageSearch()Z
    .locals 1

    .prologue
    .line 333
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$EnhancedImageSearch;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$EnhancedImageSearch;

    .line 334
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$EnhancedImageSearch;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntryLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/EntryLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    const-class v0, Lcom/google/gdata/data/extensions/EntryLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGeolocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Geolocation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Geolocation;

    .line 253
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$Geolocation;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIndexed()Z
    .locals 1

    .prologue
    .line 159
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Indexed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Indexed;

    .line 160
    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$Indexed;->getBooleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getPreferredDomain()Lcom/google/gdata/data/webmastertools/DomainPreference;
    .locals 1

    .prologue
    .line 307
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$PreferredDomain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$PreferredDomain;

    .line 308
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$PreferredDomain;->getPreference()Lcom/google/gdata/data/webmastertools/DomainPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getVerificationMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/webmastertools/VerificationMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    const-class v0, Lcom/google/gdata/data/webmastertools/VerificationMethod;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVerified()Z
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Verified;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Verified;

    .line 220
    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$Verified;->getBooleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setCrawlRate(Lcom/google/gdata/data/webmastertools/CrawlRate;)V
    .locals 1

    .prologue
    .line 262
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$CrawlingRate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$CrawlingRate;

    .line 263
    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitesEntry$CrawlingRate;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$CrawlingRate;-><init>()V

    .line 265
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 268
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitesEntry$CrawlingRate;->setCrawlRate(Lcom/google/gdata/data/webmastertools/CrawlRate;)V

    .line 269
    return-void
.end method

.method public setCrawled(Lcom/google/gdata/data/DateTime;)V
    .locals 1

    .prologue
    .line 174
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Crawled;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Crawled;

    .line 175
    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Crawled;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$Crawled;-><init>()V

    .line 177
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 180
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitesEntry$Crawled;->setDateTime(Lcom/google/gdata/data/DateTime;)V

    .line 181
    return-void
.end method

.method public setEnhancedImageSearch(Z)V
    .locals 1

    .prologue
    .line 317
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$EnhancedImageSearch;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$EnhancedImageSearch;

    .line 318
    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitesEntry$EnhancedImageSearch;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$EnhancedImageSearch;-><init>()V

    .line 320
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 323
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitesEntry$EnhancedImageSearch;->setBooleanValue(Z)V

    .line 324
    return-void
.end method

.method public setGeolocation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Geolocation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Geolocation;

    .line 235
    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Geolocation;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$Geolocation;-><init>()V

    .line 237
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 240
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitesEntry$Geolocation;->setValue(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public setIndexed(Z)V
    .locals 1

    .prologue
    .line 143
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Indexed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Indexed;

    .line 144
    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Indexed;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$Indexed;-><init>()V

    .line 146
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 149
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitesEntry$Indexed;->setBooleanValue(Z)V

    .line 150
    return-void
.end method

.method public setPreferredDomain(Lcom/google/gdata/data/webmastertools/DomainPreference;)V
    .locals 1

    .prologue
    .line 291
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$PreferredDomain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$PreferredDomain;

    .line 292
    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitesEntry$PreferredDomain;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$PreferredDomain;-><init>()V

    .line 294
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 297
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitesEntry$PreferredDomain;->setPreference(Lcom/google/gdata/data/webmastertools/DomainPreference;)V

    .line 298
    return-void
.end method

.method public setVerified(Z)V
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Verified;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Verified;

    .line 205
    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitesEntry$Verified;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitesEntry$Verified;-><init>()V

    .line 207
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 210
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitesEntry$Verified;->setBooleanValue(Z)V

    .line 211
    return-void
.end method

.method protected validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 366
    invoke-static {}, Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;->values()[Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    move-result-object v1

    array-length v1, v1

    .line 367
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 369
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/SitesEntry;->getVerificationMethods()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/VerificationMethod;

    .line 371
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/VerificationMethod;->getMethodType()Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;->ordinal()I

    move-result v4

    .line 372
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Duplicate verification method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 378
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/VerificationMethod;->getInUse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    if-eqz v1, :cond_1

    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only one method can be marked as in-use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 385
    goto :goto_0

    .line 386
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method
