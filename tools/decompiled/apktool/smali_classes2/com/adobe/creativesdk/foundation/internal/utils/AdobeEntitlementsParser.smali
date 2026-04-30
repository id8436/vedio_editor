.class public Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;
.super Ljava/lang/Object;
.source "AdobeEntitlementsParser.java"


# instance fields
.field data:Ljava/lang/String;

.field illustratorPattern:Ljava/util/regex/Pattern;

.field inDesignPattern:Ljava/util/regex/Pattern;

.field photoshopPattern:Ljava/util/regex/Pattern;

.field productLeids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->data:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ".*Photoshop.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->photoshopPattern:Ljava/util/regex/Pattern;

    .line 49
    const-string/jumbo v0, ".*Illustrator.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->illustratorPattern:Ljava/util/regex/Pattern;

    .line 50
    const-string/jumbo v0, ".*InDesign.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->inDesignPattern:Ljava/util/regex/Pattern;

    .line 51
    return-void
.end method


# virtual methods
.method public getProductLeids()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->data:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->productLeids:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->productLeids:Ljava/util/Set;

    .line 68
    :goto_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 70
    :try_start_0
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 71
    new-instance v0, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->data:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 72
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 73
    :goto_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 74
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "leid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->photoshopPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->productLeids:Ljava/util/Set;

    const-string/jumbo v2, "Photoshop"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    :goto_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_2

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->productLeids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_1

    .line 78
    :cond_3
    if-eqz v0, :cond_5

    :try_start_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->illustratorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 79
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->productLeids:Ljava/util/Set;

    const-string/jumbo v2, "Illustrator"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 88
    :catch_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error while parsing entitlements xml"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->productLeids:Ljava/util/Set;

    goto/16 :goto_0

    .line 81
    :cond_5
    if-eqz v0, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->inDesignPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;->productLeids:Ljava/util/Set;

    const-string/jumbo v2, "InDesign"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 90
    :catch_1
    move-exception v0

    .line 91
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeEntitlementsParser;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error while parsing entitlements xml"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method
